#include "Terminal.hpp"
#include "../Odrive/Odrive.hpp"

using namespace std;

Communication::semafora sem1;

void Read_Terminal_async()
{
    for(;;)
    {
        std::string input;
        
        cin >> input;

        if(input == "run")
        {
            cout << input << endl;
        }
        else if(input == "stop")
        {
            cout << input << endl;
            sem1.State = Communication::semafora::RUN_STATES::STOP;
        }
        else if(input == "fullcalib")
        { 
            Steering_Column::T_Odrive odrive;
            odrive.Startup_procedure();
        }
        else if(input == "exit")
        {
            cout << input << endl;
            sem1.State = Communication::semafora::RUN_STATES::STOP;
            break;
        }
        else if(input == "joy")
        {
            ROS_INFO("joy mode");
            sem1.State = Communication::semafora::RUN_STATES::JOY_MODE;
        }
    }
}
