#include "Odrive.hpp"
#include <iostream>
#include <ros/ros.h>

using namespace std;
using namespace Steering_Column;

PUTM_CAN::CanRx<PUTM_CAN::Odrive_Heartbeat> odrive_heartbeat ("can0", PUTM_CAN::NO_TIMEOUT);
PUTM_CAN::CanTx can_tx("can0");

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
    PUTM_CAN::Odrive_Heartbeat heartbeat;
    do{
        
        std::cout << int(heartbeat.Axis_State) << std::endl;
    }
    while(heartbeat.Axis_State != uint8_t(T_Odrive::Odrive_Axis_States::IDLE));
    Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
    Set_Controller_Mode();
    Set_Position(0);
}
bool T_Odrive::is_odrive_alive()
{
    PUTM_CAN::Odrive_Heartbeat heartbeat;
    // if(can.receive(heartbeat, 5) == PUTM_CAN::CanState::CAN_READ_ERROR){
    //     return 0;
    // }
    // else{
    //     return 1;
    // }
    return true;
}

void T_Odrive::Set_Controller_Mode()
{
    PUTM_CAN::Odrive_Set_Controller_Mode odrivecntrl {
        .Control_Mode = POSITION_CONTROL_MODE,
        .Input_Mode = 5
    };
    
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
float T_Odrive::Get_Position_Estimate()
{
    //Receive frame
    // PUTM_CAN::Odrive_Get_Encoder_Estimation enc;
    // can.receive(enc, PUTM_CAN::NO_TIMEOUT);
    // return enc.Pos_Estimate;
    return 0.0;
}

int T_Odrive::Get_Axis_State()
{

    return 1;
}

int T_Odrive::Get_Error()
{
    // PUTM_CAN::Odrive_Get_Error error;
    // can.receive(error, 5);
    //return error.Pos_Estimate;
    return -1;
}

double T_Odrive::Calculate_Displacement(double desired_steer_angle)
{
    float odrive_position = Get_Position_Estimate();
    return desired_steer_angle;
}

steering::Odrive_data T_Odrive::return_data()
{
    steering::Odrive_data data;
    data.axis_state = Get_Axis_State();
    data.odrive_errors = Get_Error();
    return data;
}