#pragma once
#include "ros/ros.h"
#include "vector"
#include <std_srvs/Empty.h>
#include "steering/Odrive_command.h"
#include "steering/Desired_angle.h"
#include "steering/Steering_loopAction.h"
#include "steering/Steering_loopFeedback.h"
#include "steering/Steering_loopGoal.h"
#include "steering/Steering_loopResult.h"

#include <actionlib/client/simple_action_client.h>

#include "/home/putm/src/steering/Odrive/Odrive.hpp"

typedef actionlib::SimpleActionClient<steering::Steering_loopAction> Client;

namespace Communication{
    struct Common_Space{
        double Desired_Steer_angle;
        bool Armed;
    };

class roscom{
    private:
    
    ros::NodeHandle n;
    ros::ServiceClient CAN_Client = n.serviceClient<steering::Odrive_command>("sending_commands");
    ros::ServiceServer da_receiver = n.advertiseService("receiving_d_a",&roscom::receiving_da_callback, this);
    Client ac;

    public:
    roscom() : ac("steering", true)
    {
        ROS_INFO("Waiting for action server to start.");
        //ac->waitForServer();
    }
    steering::Odrive_command srv;
    steering::Desired_angle srv_angle;

    void Send_command(std::vector<double> args);
    void Send_new_position(double new_position);

    bool receiving_da_callback(steering::Desired_angle::Request &req, steering::Desired_angle::Response &resp);

    void activeCb();
    void feedbackCb(const steering::Steering_loopFeedbackConstPtr& feedback);
    void doneCb(const actionlib::SimpleClientGoalState& state,
                const steering::Steering_loopResultConstPtr& result);
};
}