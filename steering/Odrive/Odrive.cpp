#include "Odrive.hpp"
#include <iostream>
#include <ros/ros.h>

using namespace std;
using namespace Steering_Column;

PUTM_CAN::CanTx can_tx("can0");


void T_Odrive::OdriveHeartbeatCallback(const PUTM_EV_ROS2CAN::Odrive::ConstPtr& OdriveData)
{
    OdriveErrorStates = (Odrive_Error_States)OdriveData->odrive_errors;
    OdriveAxisState   = (Odrive_Axis_States)OdriveData->odrive_state;
    EncoderEstimate   = OdriveData->EncoderEstimation;
}

void T_Odrive::Set_Position(float position)
{   
    PUTM_CAN::Odrive_Set_Input_Position pos;   
    pos.Input_Pos = position;
    pos.Torque_FF = 0;
    pos.Vel_FF = 0;
    can_tx.transmit(pos);
    //Send frame
}
void T_Odrive::Startup_procedure()
{
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::FULL_CALIBRATION_SEQUENCE);
    ros::Duration(10).sleep();
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
    Set_Controller_Mode();
    Set_Position(0);
    ROS_INFO("Odrive calibrated and ready");
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

double T_Odrive::Calculate_Displacement(double desired_steer_angle)
{
    return desired_steer_angle;
}