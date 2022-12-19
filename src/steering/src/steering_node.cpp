#include "Odrive.hpp"
#include "Communication.hpp"
#include "Terminal.hpp"

#include <iostream>
#include <string>
#include <future>
#include <thread>

#include <chrono>

using namespace std;

extern Communication::semafora sem1;

Steering_Column::T_Odrive *odrive;


void Controll_Loop();

int main(int argc, char **argv)
{
    
    thread Read(Read_Terminal_async);
    thread *Loop;

    ros::init(argc, argv, "steering_node");

    odrive = new Steering_Column::T_Odrive;

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
                odrive->Send_command(grab_command());
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
        cout << "Controlling" << endl;
        ros::spinOnce();
        float desired_steer_angle = odrive->ros_handler.srv_angle.request.desired_steer_angle;

        double new_angle;
        odrive->Set_Position(new_angle);

        std::this_thread::sleep_for(std::chrono::milliseconds(10));
    }
}