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
            sem1.State = Communication::semafora::RUN_STATES::START;
        }
        else if(input == "stop")
        {
            cout << input << endl;
            sem1.State = Communication::semafora::RUN_STATES::STOP;
        }
        else if(input == "setstate")
        { 
            double a;
            cin >> a;

            Steering_Column::T_Odrive odrive;
            odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::FULL_CALIBRATION_SEQUENCE);
            //sem1.State = Communication::semafora::RUN_STATES::CHANGE;
        }
        else if(input == "exit")
        {
            cout << input << endl;
            sem1.State = Communication::semafora::RUN_STATES::STOP;
            break;
        }
    }
}
