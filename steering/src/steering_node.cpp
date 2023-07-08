#include "Odrive.hpp"
#include "Communication.hpp"
#include "Terminal.hpp"

#include "/home/putm/catkin_ws/devel/include/PUTM_EV_ROS2CAN/Odrive.h"

#include <iostream>
#include <string>
#include <future>
#include <thread>
#define FMT_HEADER_ONLY
#include <fmt/core.h>

#include <chrono>

using namespace std;

Communication::semafora sem1;
Steering_Column::T_Odrive *Odrive_ptr;

void Controll_Loop();

int main(int argc, char **argv)
{
    ros::init(argc, argv, "steering_node");
    ros::Time::init();

    Communication::Joystick joy;
    Steering_Column::T_Odrive Odrive;
    Odrive_ptr = &Odrive;

    thread Read(Read_Terminal_async);

    ROS_INFO("Steering online");

    Odrive.Startup_procedure();
    sem1.State = Communication::semafora::JOY_MODE;

    while(sem1.State != Communication::semafora::STOP)
    {
        //apply
        switch(sem1.State)
        {
            case Communication::semafora::IDLING:
                ros::Duration(1).sleep();
                ROS_INFO("[Steering] waiting...");
            break;
            
            case Communication::semafora::RUNNING:
                //Run controll loop.
            break;

            case Communication::semafora::STOP:
                //End and go to idle.
                
            break;

            case Communication::semafora::JOY_MODE:
                //Run in joystick mode
                ros::spin();
                ROS_INFO("[Steering] Encoder estimate: %f", Odrive.EncoderEstimate);
            break;

            case Communication::semafora::ERROR:
                ROS_INFO("ODrive Error");
            break;
        }
    }
    Read.join();
    return 0;
}