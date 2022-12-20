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
Communication::roscom *ROS_Handler;
Steering_Column::T_Odrive Odrive;


void Controll_Loop();

int main(int argc, char **argv)
{
    
    thread Read(Read_Terminal_async);
    thread *Loop;

    ros::init(argc, argv, "steering_node");

    ROS_Handler = new Communication::roscom;

    for(;;)
    {
        //apply
        switch(sem1.State)
        {
            case Communication::semafora::IDLING:
                //Can change settings or send individual move commands.
            break;

            case Communication::semafora::START:
                //Creates new thread which runs a controll loop. Then change state to RUNNING.
                sem1.State = Communication::semafora::RUN_STATES::RUNNING;
                Loop = new thread(Controll_Loop);
            break;

            case Communication::semafora::RUNNING:
                //Send debug info and data.

            break;

            case Communication::semafora::STOP:
                //End thread and go to idle
                Loop->join();
                delete Loop;
                sem1.State = Communication::semafora::RUN_STATES::IDLING;
            break;

            case Communication::semafora::CHANGE:
                Odrive.Send_command(grab_command());
                sem1.State = Communication::semafora::RUN_STATES::IDLING;
            break;
        }
        std::this_thread::sleep_for(std::chrono::seconds(2));
    }
}
void Controll_Loop()
{
    while(sem1.State == Communication::semafora::RUNNING)
    {
        //1.Wait for dsa.
        cout << "Waiting for dsa" << endl;
        ros::spin();
        Odrive.current_state = Steering_Column::T_Odrive::Odrive_states::RUNNING;
        //2.Send new value 
        Odrive.Set_Position(Odrive.Calculate_Displacement(ROS_Handler->srv_angle.request.desired_steer_angle));  
        //3.Wait for finish.

        //4.Send 'move completed' info.
        Odrive.current_state = Steering_Column::T_Odrive::Odrive_states::IDLING;  
    }
}