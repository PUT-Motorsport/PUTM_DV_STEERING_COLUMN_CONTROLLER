#include "Odrive.hpp"
#include <iostream>

using namespace std;
using namespace Steering_Column;

void T_Odrive::Set_Position(float position)
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
void T_Odrive::Send_command(string command, int value1, int value2)
{
    ros_handler.Send_command(value1, value2);
}
