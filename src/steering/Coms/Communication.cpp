#include "Communication.hpp"
#include "Odrive_meta.h"
#include <iostream>
#include <iostream>
#include <string>
#include <future>
#include <thread>

void roscom::Send_command(std::vector<double> args)
{
    srv.request.command = args[0];
    args.erase(args.begin());

    std::cout << "arguments: " << args[0] << " " << args[1] << std::endl;

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
void roscom::Send_new_position(double new_position)
{
    steering::Steering_loopGoal goal;
    goal.new_position = new_position;
    ac->sendGoal(goal);

    ac->waitForResult(ros::Duration(1.0));

}
bool roscom::receiving_da_callback(steering::Desired_angle::Request &req, steering::Desired_angle::Response &resp)
{
    std::cout << "Callback: " << req.desired_steer_angle << std::endl;

    std::this_thread::sleep_for(std::chrono::milliseconds(100));
    return true;
}
