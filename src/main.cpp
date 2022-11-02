#include "Odrive/Odrive.h"
#include "Coms/Communication.h"
#include <iostream>
#include <string>
#include <future>

using namespace Steering_Column;
using namespace std;

int main(int argc, char **argv)
{
    T_Odrive odrive;
    
    thread read(Read_async);

    for(;;)
    {
   
    }
}
