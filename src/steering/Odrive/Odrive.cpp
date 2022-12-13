#include "Odrive.hpp"
#include <iostream>

#include "/home/putm/src/steering/Coms/Communication.hpp"

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
void T_Odrive::Send_command()
{
    //ros_handler.Send_command(value1, value2);
}
void T_Odrive::Process_command(double *args)
{
    cout << args[0] << " " << args[1] << endl;
    ros_handler.Send_command(args[0], args[1]);
}