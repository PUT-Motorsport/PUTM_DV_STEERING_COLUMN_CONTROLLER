#include "Odrive.hpp"
#include <iostream>
#include <ros/ros.h>

#include "../PUTM_DV_CAN_LIBRARY_RAII/include/can_tx.hpp"

using namespace std;
using namespace Steering_Column;

PUTM_CAN::CanTx can_tx("slcan0");

void T_Odrive::OdriveHeartbeatCallback(const PUTM_EV_ROS2CAN::Odrive::ConstPtr& OdriveData)
{
    OdriveSimpleAxisError  = (Odrive_Axis_Errors)OdriveData->OdriveAxisError;
    OdriveAxisState  = (Odrive_Axis_States)OdriveData->OdriveAxisState;
    EncoderEstimate  = OdriveData->EncoderEstimation;
    timeout = ros::Time::now().toSec();
}

void T_Odrive::Set_Position(float position)
{   
    PUTM_CAN::Odrive_Set_Input_Position pos;   
    pos.Input_Pos = position;
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
}
void T_Odrive::fast_startup()
{
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::ENCODER_INDEX_SEARCH);
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
    Set_Controller_Mode();
    Set_Position(0);
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