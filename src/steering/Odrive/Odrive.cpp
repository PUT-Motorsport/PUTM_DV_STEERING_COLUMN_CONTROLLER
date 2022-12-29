#include "Odrive.hpp"
#include <iostream>

using namespace std;
using namespace Steering_Column;

extern Communication::semafora sem1;
extern Communication::roscom *ROS_Handler;

void T_Odrive::Set_Position(double position)
{   
    cout << "Position set to " << position << endl;
    ROS_Handler->Send_new_position(position);
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
    ROS_Handler->Send_command(args);
}
double T_Odrive::Calculate_Displacement(double desired_steer_angle)
{
    return desired_steer_angle;
}