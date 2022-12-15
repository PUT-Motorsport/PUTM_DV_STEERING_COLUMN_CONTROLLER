#include "Communication.hpp"
#include "Odrive_meta.h"

void roscom::Send_command(int command, int value)
{
    srv.request.command = command;
    srv.request.value = value;
    ROS_INFO("Sending...");
    if (CAN_Client.call(srv))
    {
        ROS_INFO("ok");
    }
    else
    {
        ROS_INFO("Failed");
    }
}
void roscom::Send_new_position(float new_position)
{
    
}
bool roscom::receiving_da_callback(steering::Desired_angle::Request &req, steering::Desired_angle::Response &resp)
{
    std::cout << "Callback: " << req.desired_steer_angle << std::endl;
    return true;
}

