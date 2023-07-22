#include "Communication.hpp"
#include <iostream>
#include <iostream>
#include <string>
#include <future>
#include <thread>

extern Steering_Column::T_Odrive *Odrive_ptr;

using namespace Communication;

extern Communication::semafora sem1;



void Joystick::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
    float a = joy->axes[0];
    if(joy->buttons[0] == 1)
    {
        ROS_INFO("User calibration request");
        Odrive_ptr->Startup_procedure();
    }
    else if(joy->buttons[1] == 1)
    {
        ROS_INFO("Joy mode");
        sem1.State = Communication::semafora::JOY_MODE;
        Odrive_ptr->Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
    }
    else if(joy->buttons[2] == 1)
    {
        ROS_INFO("As mode");
        Odrive_ptr->Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::CLOSED_LOOP_CONTROL);
        sem1.State = Communication::semafora::AS_MODE;
    }
    else if(joy->buttons[3] == 1)
    {
        Odrive_ptr->Set_State(Steering_Column::T_Odrive::Odrive_Axis_States::IDLE);
    }
    if(sem1.State == Communication::semafora::JOY_MODE)
    {
        Odrive_ptr->Position = (-19.5*(joy->axes[0]));
    }
}