#pragma once
#include "ros/ros.h"
#include <std_srvs/Empty.h>
#include "steering/Odrive_command.h"
#include "steering/Desired_angle.h"

class roscom{
    private:

    ros::NodeHandle n;
    ros::ServiceClient CAN_Client = n.serviceClient<steering::Odrive_command>("sending_commands");
    //ros::ServiceServer da_receiver = n.advertiseService("receiving_d_a",&roscom::receiving_da_callback, this);
    steering::Odrive_command srv;

    public:

    void Send_command(int command, int value);
    void Send_new_position(float position);

    bool receiving_da_callback(steering::Desired_angle::Request &req, steering::Desired_angle::Response &resp);
};
