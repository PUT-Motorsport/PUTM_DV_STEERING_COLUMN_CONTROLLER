#include "Odrive.hpp"
#include "Communication.hpp"
#include "Terminal.hpp"

#include "ros/ros.h"

#include "putm_dv_can_to_ros/Odrive.h"
#include "../PUTM_DV_CAN_LIBRARY_RAII/include/can_tx.hpp"

#include <iostream>
#include <string>
#include <future>
#include <thread>

#include <chrono>

using namespace std;

Communication::semafora sem1;
Steering_Column::T_Odrive *Odrive_ptr;

PUTM_CAN::CanTx cantx("can0");

void Controll_Loop();

int main(int argc, char **argv)
{
    ros::init(argc, argv, "steering_node");
    ros::Time::init();

    ROS_INFO("Steering online");

    Communication::Joystick joy;
    Steering_Column::T_Odrive OdriveHandler;
    Odrive_ptr = &OdriveHandler;

    thread Read(Read_Terminal_async);

    sem1.State = Communication::semafora::JOY_MODE;

    while(sem1.State != Communication::semafora::STOP)
    {
        //apply
        switch(sem1.State)
        {
            case Communication::semafora::IDLING:
                ROS_INFO("[Steering] waiting...");
                ros::Duration(1).sleep();

                cantx.transmit_rtr<PUTM_CAN::Odrive_Get_Controller_Error>();
                cantx.transmit_rtr<PUTM_CAN::Odrive_Get_Encoder_Error>();
                cantx.transmit_rtr<PUTM_CAN::Odrive_Get_Motor_Error>();

                //ROS_INFO("Odrive State: %i, odrive error: %i", OdriveHandler.OdriveAxisState);

                ros::spinOnce();

                //ros::topic::waitForMessage<PUTM_EV_ROS2CAN::Odrive>("OdriveDataCAN",Odrive_ptr->OdriveNodeHandler);
                PUTM_CAN::Odrive_Clear_Errors cl;
                cantx.transmit<PUTM_CAN::Odrive_Clear_Errors>(cl);
                //OdriveHandler.Startup_procedure();
                //sem1.State = Communication::semafora::JOY_MODE;
            break;
            
            case Communication::semafora::RUNNING:
                //Run controll loop.
            break;

            case Communication::semafora::STOP:
                //End and go to idle.
            break;

            case Communication::semafora::JOY_MODE:
                //Run in joystick mode
                ros::spinOnce();
                /* FIXME: Tu rzuca wyjątkami */
                cantx.transmit_rtr<PUTM_CAN::Odrive_Get_Iq>();
                ros::Duration(0.01).sleep();
                OdriveHandler.Set_Position(OdriveHandler.Position);
                if(OdriveHandler.OdriveAxisState != Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL)
                {
                    sem1.State = Communication::semafora::IDLING;
                }
                OdriveHandler.CheckForTimeout();
            break;

            case Communication::semafora::ERROR:
                ROS_INFO("ODrive Error");
            break;
        }
    }
    Read.join();
    return 0;
}