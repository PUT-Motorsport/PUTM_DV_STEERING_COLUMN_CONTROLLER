#pragma once
#include "ros/ros.h"
#include "steering/Odrive_command.h"

class roscom{
    private:

    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<steering::Odrive_command>("Odrive handler");
    steering::Odrive_command srv;


    public:

    void init(int argc, char **argv);
    void Send_command(int command, int value);
    void Send_new_position(float position);
};