#include "Odrive.hpp"
#include <iostream>

using namespace std;
using namespace Steering_Column;

extern Communication::semafora sem1;

void T_Odrive::Set_Position(float position)
{   
    PUTM_CAN::CAN can;
    PUTM_CAN::Odrive_Set_Input_Position pos;   
    pos.Input_Pos = position;
    pos.Torque_FF = 0;
    pos.Vel_FF = 0;
    //Send frame
    can.connect();
    can.transmit(pos);
}
void T_Odrive::Startup_procedure()
{

}
bool T_Odrive::is_odrive_alive()
{
    return true;
}
void T_Odrive::Send_command(std::vector<double> args)
{

}
void T_Odrive::Set_Controller_Mode()
{
    PUTM_CAN::Odrive_Set_Controller_Mode odrivecntrl {
        .Control_Mode = T_Odrive::CLOSED_LOOP_CONTROL,
        .Input_Mode = 5
    };
}
void T_Odrive::Set_State(T_Odrive::Odrive_Axis_States state)
{
    PUTM_CAN::CAN can;
    can.connect();
    PUTM_CAN::Odrive_Set_Axis_State set_state{
        .Axis_Requested_State = state
    };
    can.transmit(set_state);
    //Send frame
}
float T_Odrive::Get_Position_Estimate()
{
    //Receive frame
    uint8_t data[8];
    can_setSignal<float>(data, 2.2, set_input_position);
    float a = can_getSignal<float>(data, get_encoder_position_estimates);
    return a;
}
double T_Odrive::Calculate_Displacement(double desired_steer_angle)
{
    float odrive_position = Get_Position_Estimate();
    return desired_steer_angle;
}