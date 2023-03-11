#include "Odrive.hpp"
#include <iostream>

using namespace std;
using namespace Steering_Column;

extern Communication::semafora sem1;
extern Communication::roscom *ROS_Handler;

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
double T_Odrive::Calculate_Displacement(double desired_steer_angle)
{
    return desired_steer_angle;
}