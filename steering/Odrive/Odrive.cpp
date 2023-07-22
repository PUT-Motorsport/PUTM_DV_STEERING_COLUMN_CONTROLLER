#include "Odrive.hpp"
#include <iostream>
#include <ros/ros.h>

#include <chrono>
#include <thread>
#include <algorithm>

#include "putm_dv_can_to_ros/Odrive.h"
#include "../PUTM_DV_CAN_LIBRARY_RAII/include/can_tx.hpp"

using namespace std;
using namespace Steering_Column;

extern Communication::semafora sem1; 

PUTM_CAN::CanTx can_tx("can0");

float CalculateDisplacement(float);
float DiscalculateDisplacement(float);

void T_Odrive::SteeringAngleCallback(const std_msgs::Float64::ConstPtr& angle)
{
    if(sem1.State == Communication::semafora::AS_MODE)
    {
        Position = angle->data;
    }
}

void T_Odrive::OdriveHeartbeatCallback(const putm_dv_can_to_ros::Odrive::ConstPtr& OdriveData)
{
    OdriveSimpleAxisError  = (Odrive_Axis_Errors)OdriveData->odriveAxisError;
    OdriveAxisState  = (Odrive_Axis_States)OdriveData->odriveAxisState;
    EncoderEstimate  = OdriveData->encoderEstimation;

    putm_dv_can_to_ros::Odrive odriveRepublishData = *(OdriveData);
    odriveRepublishData.steerAngle = DiscalculateDisplacement(OdriveData->encoderEstimation);
    timeout = ros::Time::now().toSec();
}

void T_Odrive::Set_Position(float desiredSteerAngle)
{   
    PUTM_CAN::Odrive_Set_Input_Position pos;   
    pos.Input_Pos = CalculateDisplacement(desiredSteerAngle);
    pos.Torque_FF = 0;
    pos.Vel_FF = 0;
    try{
    can_tx.transmit(pos);
    }
    catch(std::runtime_error err)
    {
        std::cout << err.what() << '\n';
    }
    //Send frame
}
void T_Odrive::Startup_procedure()
{
    ClearError();
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::FULL_CALIBRATION_SEQUENCE);
    ros::Duration(15).sleep();
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
    ros::Duration(0.2).sleep();
    Set_Controller_Mode();
    ros::Duration(0.2).sleep();
    SetTrapTrajLimits();
    ros::Duration(0.2).sleep();
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
    ros::Duration(0.2).sleep();
    Set_Position(0);
    ros::spinOnce();
    int clpTrials = 10;
    while(OdriveAxisState != Odrive_Axis_States::CLOSED_LOOP_CONTROL)
    {
        ros::spinOnce();
        clpTrials--;
        if(clpTrials == 0)
        {
            ROS_INFO("Calibration failed");
            can_tx.transmit_rtr<PUTM_CAN::Odrive_Get_Controller_Error>();
            can_tx.transmit_rtr<PUTM_CAN::Odrive_Get_Encoder_Error>();
            can_tx.transmit_rtr<PUTM_CAN::Odrive_Get_Motor_Error>();
            break;
        }
    }
    sem1.State = Communication::semafora::JOY_MODE;
}
void T_Odrive::fast_startup()
{
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::ENCODER_INDEX_SEARCH);
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
    Set_Controller_Mode();
    Set_Position(0);
}

void T_Odrive::ClearError()
{
    PUTM_CAN::Odrive_Clear_Errors errors{};
    can_tx.transmit(errors);
}

void T_Odrive::Set_Controller_Mode()
{
    PUTM_CAN::Odrive_Set_Controller_Mode odrivecntrl {
        .Control_Mode = POSITION_CONTROL_MODE,
        .Input_Mode = 5
    };
    can_tx.transmit(odrivecntrl);
    
}
void T_Odrive::Set_State(T_Odrive::Odrive_Axis_States state)
{
    PUTM_CAN::Odrive_Set_Axis_State set_state
    {
        .Axis_Requested_State = (uint32_t)(state)
    };
    can_tx.transmit(set_state);
    //Send frame
}
void T_Odrive::SetTrapTrajLimits()
{
    PUTM_CAN::Odrive_Set_Traj_Vel_Limit    tarjVelLimit = {
        .Traj_Vel_Limit = 150
    };
    PUTM_CAN::Odrive_Set_Traj_Accel_Limits trajAccelDecelLimits = {
        .Traj_Accel_Limit = 50,
        .Traj_Decel_Limit = 50
    };
    can_tx.transmit(tarjVelLimit);
    can_tx.transmit(trajAccelDecelLimits);
}

double T_Odrive::Calculate_Displacement(double desired_steer_angle)
{
    return desired_steer_angle;
}
bool T_Odrive::CheckForTimeout(){
    ros::Time Ntimeout = ros::Time::now();
    if(Ntimeout.toSec() - timeout > timeoutThreshold)
    {
        return false;
    }
    return true;
}

constexpr float MaxSteeringAngle = 19.5;
constexpr float MaxTravelAngle = MaxSteeringAngle * 2;

constexpr float OdriveLeftboundaries = -2.1;
constexpr float OdriveRightboundaries = 2.3;

constexpr float OdriveMaxTravelAngle = ((-OdriveLeftboundaries) + OdriveRightboundaries) * 360;
constexpr float AngleRatio = OdriveMaxTravelAngle / MaxTravelAngle;
constexpr float DisAngleRation = MaxTravelAngle / OdriveMaxTravelAngle;

float CalculateDisplacement(float desired_steer_angle)
{
	desired_steer_angle = std::clamp(desired_steer_angle, (-MaxSteeringAngle), MaxSteeringAngle);
	//std::cout << "Desired steer angle = " << desired_steer_angle << '\n';
	float calculatedPosition = desired_steer_angle * AngleRatio;
	//std::cout << "Calculated Position = " << calculatedPosition/360 << '\n';
    return (calculatedPosition/360);
}

float DiscalculateDisplacement(float encoderEstimation)
{
    return encoderEstimation * DisAngleRation;
}