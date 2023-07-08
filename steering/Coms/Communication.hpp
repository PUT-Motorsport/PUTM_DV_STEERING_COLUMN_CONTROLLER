#pragma once
#include "ros/ros.h"
#include "vector"
#include <std_srvs/Empty.h>

#include <actionlib/server/simple_action_server.h>
#include "../Odrive/Odrive.hpp"

#include <sensor_msgs/Joy.h>
#include <geometry_msgs/Twist.h>

#include "std_msgs/String.h"

namespace Communication{

class SteeringAction{
    private:
    //actionlib::SimpleActionServer<steering::Steering_loopAction> Action_server;

    //std::string action_name_;

    //steering::Steering_loopActionFeedback feedback_;
    //steering::Steering_loopResult result_;


    public:


    // SteeringAction(std::string name) :  
    // // Action_server(n, name, boost::bind(&SteeringAction::executeCB, this, _1), false), action_name_(name)
    // // {
    // //     Action_server.start();
    // // }

    // // void executeCB(const steering::Steering_loopActionGoalConstPtr &goal)
    // // {
  
    // // }
};
class Joystick{
    private:

    ros::NodeHandle nj;
    ros::Subscriber joy_sub_;

    void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);

    public:

    Joystick()
    {
        joy_sub_ = nj.subscribe<sensor_msgs::Joy>("joy", 10, &Joystick::joyCallback, this);
    }
};

}