#include "Odrive.hpp"
#include <iostream>

using namespace std;
using namespace Steering_Column;

extern Communication::semafora sem1;

void T_Odrive::Set_Position(double position)
{   
    cout << "Position set to " << position << endl;
    uint8_t data[8];
    can_setSignal<int>(data, position, set_input_position);
    //Send frame
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
    uint8_t data[8];
    can_setSignal<int>(data, POSITION_CONTROL_MODE, set_control_mode);
    can_setSignal<int>(data, TRAP_TRAJ_MODE, set_input_mode);
    //Send frame

}
void T_Odrive::Set_State(T_Odrive::Odrive_Axis_States state)
{
    uint8_t data[8];
    can_setSignal<float>(data, state, set_axis_requested_state);
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