#include "Communication.hpp"
#include <iostream>
#include <iostream>
#include <string>
#include <future>
#include <thread>

extern Steering_Column::T_Odrive *Odrive_ptr;

using namespace Communication;

void Joystick::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
    float a = joy->axes[0];
    Odrive_ptr->Set_Position(-2*(joy->axes[0]));
    ROS_INFO("[Steering] joy:%f", a);
}