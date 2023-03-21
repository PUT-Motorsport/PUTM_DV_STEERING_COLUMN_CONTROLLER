#include "Communication.hpp"
#include <iostream>
#include <iostream>
#include <string>
#include <future>
#include <thread>

extern Steering_Column::T_Odrive Odrive;

using namespace Communication;

void Joystick::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
    float a = joy->axes[0];
    Odrive.Set_Position(-2*(joy->axes[0]));
}

void Data::Send_Data()
{
    steering::Odrive_data data = Odrive.return_data();
    Odrive_Data.publish(data);
}

void Data::data_thread()
{
    ros::Rate r(10); // 10 hz
    while(true)
    {
        Send_Data();
        r.sleep();
    }
}