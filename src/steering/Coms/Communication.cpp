#include "Communication.hpp"
#include "Odrive_meta.h"
#include <iostream>
#include <iostream>
#include <string>
#include <future>
#include <thread>

extern Steering_Column::T_Odrive Odrive;

void Communication::roscom::Send_command(std::vector<double> args)
{
    std::cout << "cmd: " << args[0] << std::endl;

    srv.request.command = args[0];
    args.erase(args.begin());

    std::cout << "arguments: " << args[0] << std::endl;

    srv.request.values = args;

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
void Communication::roscom::Send_new_position(double new_position)
{
    steering::Steering_loopGoal goal;
    goal.new_position = new_position;
    ac->sendGoal(goal);

    ac->waitForResult(ros::Duration(1.0));
}
bool Communication::roscom::receiving_da_callback(steering::Desired_angle::Request &req, steering::Desired_angle::Response &resp)
{
    std::cout << "Callback: " << req.desired_steer_angle << std::endl;
    while(Odrive.current_state == Steering_Column::T_Odrive::Odrive_states::RUNNING)
    {
        std::cout << "Column in motion" << std::endl;
    }
    return true;
}
