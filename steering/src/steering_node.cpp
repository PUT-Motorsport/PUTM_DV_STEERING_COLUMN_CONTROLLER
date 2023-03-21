#include "Odrive.hpp"
#include "Communication.hpp"
#include "Terminal.hpp"

#include <iostream>
#include <string>
#include <future>
#include <thread>

#include <chrono>

using namespace std;

Communication::semafora sem1;
Steering_Column::T_Odrive Odrive;
Communication::Joystick joy;

void Controll_Loop();

int main(int argc, char **argv)
{
    ros::init(argc, argv, "steering_node");

    thread Read(Read_Terminal_async);

    Communication::Data data;
    thread Send_Data(&Communication::Data::data_thread, &data);

    Odrive.Startup_procedure();

    while(sem1.State != Communication::semafora::STOP)
    {
        //apply
        switch(sem1.State)
        {
            case Communication::semafora::IDLING:
                //Can change settings or send individual move commands.
                //Odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::FULL_CALIBRATION_SEQUENCE)
                //Odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::FULL_CALIBRATION_SEQUENCE);
                //Odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
                //Odrive.Set_Controller_Mode();
                //Odrive.Get_Position_Estimate();
                //Odrive.Set_Position(1.2);
                //cout << "idling" << endl;
                ros::spin();
            break;

            case Communication::semafora::START:
                //Runs a controll loop. Then change state to RUNNING.
                sem1.State = Communication::semafora::RUN_STATES::RUNNING;
            break;

            case Communication::semafora::RUNNING:
                //Run controll loop.
            break;

            case Communication::semafora::STOP:
                //End thread and go to idle.
                
            break;

            case Communication::semafora::CHANGE:
                sem1.State = Communication::semafora::RUN_STATES::IDLING;
            break;
        }
    }
    Read.join();
    Send_Data.join();
    return 0;
}