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
    Odrive_ptr->Position = (-19.5*(joy->axes[0]));
    std::cout << Odrive_ptr->Position << '\n';
    std::cout << -1*(joy->axes[0]) << '\n';
    if(joy->buttons[0] == 1)
    {
        ROS_INFO("User calibration request");
        Odrive_ptr->Startup_procedure();
    }
    else if(joy->buttons[1] == 1)
    {
        sem1.State = Communication::semafora::JOY_MODE;
    }
}