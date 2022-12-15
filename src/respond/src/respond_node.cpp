#include <iostream>
#include <string>
#include <future>
#include <thread>

#include <chrono>

#include "ros/ros.h"
#include <std_srvs/Empty.h>
#include "steering/Desired_angle.h"
#include "steering/Odrive_command.h"

using namespace std;

bool receiving_da_callback(steering::Odrive_command::Request &req, steering::Odrive_command::Response &resp)
    {
        std::cout << "Callback: " << req.command << std::endl;
        return true;
    }

int main(int argc, char **argv)
{
    ros::init(argc, argv, "respond_node");
    ros::NodeHandle n;

    ros::ServiceServer service = n.advertiseService("sending_commands", receiving_da_callback);
    ROS_INFO("Ready for service");
    ros::spin();

    return 0;
}