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
        else if(input == "fastcalib")
        { 
            Steering_Column::T_Odrive odrive;
            odrive.fast_startup();
        }
           else if(input == "motorcalib")
        { 
            Steering_Column::T_Odrive odrive;
            odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::MOTOR_CALIBRATION);
        }
        else if(input == "exit")
        {
            cout << input << endl;
            sem1.State = Communication::semafora::RUN_STATES::STOP;
            break;
        }
         else if(input == "idle")
        {
            Steering_Column::T_Odrive odrive;
            odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::IDLE);
            sem1.State = Communication::semafora::RUN_STATES::IDLING;
            break;
        }
        else if(input == "joy")
        {
            ROS_INFO("joy mode");
            sem1.State = Communication::semafora::RUN_STATES::JOY_MODE;
        }
        else if(input == "pos")
        {
            Steering_Column::T_Odrive odrive;
            float pos;
            cin >> pos;
            odrive.Set_Position(pos);
        }
        else if(input == "getpos")
        {
            Steering_Column::T_Odrive odrive;
            cout << odrive.Get_Position_Estimate() << "\n";
        }
        else if(input == "error")
        {
            Steering_Column::T_Odrive odrive;
            cout << odrive.Get_Error() << "\n";
        }
    }
}
