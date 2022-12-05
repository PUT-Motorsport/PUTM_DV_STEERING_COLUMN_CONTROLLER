#include "Odrive.h"
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
