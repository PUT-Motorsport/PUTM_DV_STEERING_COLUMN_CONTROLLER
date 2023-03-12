#include "Odrive.hpp"
#include <iostream>

using namespace std;
using namespace Steering_Column;

extern Communication::semafora sem1;

void T_Odrive::Set_Position(double position)
{   
    cout << "Position set to " << position << endl;
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

}
void T_Odrive::Set_State(T_Odrive::Odrive_Axis_States state)
{
    //Create frame
    can_Message_t msg {1, false, false, 8, 0};
    //Code frame
    can_setSignal<float>(msg, 1.1, set_input_position);
    //Send
}
float T_Odrive::Get_Position_Estimate()
{
    //Receive frame
    can_Message_t msg {1, false, false, 8, 0};
    //Decode and return
    return can_getSignal<float>(msg, get_encoder_position_estimates);
}
double T_Odrive::Calculate_Displacement(double desired_steer_angle)
{
    float odrive_position = Get_Position_Estimate();
    return desired_steer_angle;
}