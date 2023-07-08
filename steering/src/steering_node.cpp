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
    ros::init(argc, argv, "steering_node");
    ros::Time::init();

    Communication::Joystick joy;

    thread Read(Read_Terminal_async);

    ROS_INFO("Steering online");

    PUTM_CAN::CanRx<PUTM_CAN::Odrive_Heartbeat> odrive_heartbeat ("can0", PUTM_CAN::NO_TIMEOUT);
    PUTM_CAN::CanRx<PUTM_CAN::Odrive_Heartbeat> odrive_heartbeat_timeout ("can0", 1);
    auto odrive_hr = odrive_heartbeat.receive();

    ROS_INFO("Odrive online");

    Odrive.Startup_procedure();
    sem1.State = Communication::semafora::JOY_MODE;

    while(sem1.State != Communication::semafora::STOP)
    {
        //apply
        switch(sem1.State)
        {
            case Communication::semafora::IDLING:
            // 1.3 do -2.85
                //Can change settings or send individual move commands.
                //Odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::FULL_CALIBRATION_SEQUENCE)
                //Odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::FULL_CALIBRATION_SEQUENCE);
                //Odrive.Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
                //Odrive.Set_Controller_Mode();
                //Odrive.Get_Position_Estimate();
                //Odrive.Set_Position(1.2);
                //cout << "idling" << endl;
                ros::Duration(1).sleep();
                ROS_INFO("[Steering] waiting...");
            break;
            
            case Communication::semafora::RUNNING:
                //Run controll loop.
            break;

            case Communication::semafora::STOP:
                //End thread and go to idle.
                
            break;

            case Communication::semafora::JOY_MODE:
                //Run in joystick mode
                ros::spinOnce();
                try{
                odrive_hr = odrive_heartbeat_timeout.receive();
                }
                catch(std::runtime_error err)
                {
                    sem1.State = Communication::semafora::ERROR;
                }
            break;

            case Communication::semafora::ERROR:
                ROS_INFO("ODrive Error");
                odrive_hr = odrive_heartbeat.receive();
                Odrive.Startup_procedure();
                sem1.State = Communication::semafora::JOY_MODE;
            break;
        }
    }
    Read.join();
    return 0;
}