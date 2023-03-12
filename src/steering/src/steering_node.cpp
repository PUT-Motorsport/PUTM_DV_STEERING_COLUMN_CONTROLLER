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

void Controll_Loop();

int main(int argc, char **argv)
{
    thread Read(Read_Terminal_async);

    ros::init(argc, argv, "steering_node");

    while(sem1.State != Communication::semafora::STOP)
    {
        //apply
        switch(sem1.State)
        {
            case Communication::semafora::IDLING:
                //Can change settings or send individual move commands.
                //Odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::FULL_CALIBRATION_SEQUENCE);
                //Odrive.Set_Position(1.2);
                //Odrive.Get_Position_Estimate();
                //cout << "idling" << endl;
            break;

            case Communication::semafora::START:
                //Runs a controll loop. Then change state to RUNNING.
                sem1.State = Communication::semafora::RUN_STATES::RUNNING;
            break;

            case Communication::semafora::RUNNING:
                //Send debug info and data.
            break;

            case Communication::semafora::STOP:
                //End thread and go to idle
                break;
            break;

            case Communication::semafora::CHANGE:
                //Do naprawienia bo chuj wie ocb.
                sem1.State = Communication::semafora::RUN_STATES::IDLING;
            break;
        }
        //std::this_thread::sleep_for(std::chrono::seconds(2));
    }
    Read.join();
    return 0;
}