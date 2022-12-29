#pragma once
#include "ros/ros.h"
#include "vector"
#include <std_srvs/Empty.h>
#include "steering/Odrive_command.h"
#include "steering/Desired_angle.h"
#include "steering/Steering_loopAction.h"

#include <actionlib/client/simple_action_client.h>
#include "/home/putm/PUTM_DV_STEERING_COLUMN_CONTROLLER/src/steering/Odrive/Odrive.hpp"

typedef actionlib::SimpleActionClient<steering::Steering_loopAction> Client;

namespace Communication{

    struct Common_Space{
        double Desired_Steer_angle;
        bool Armed;
    };

class roscom{
    private:
    
    ros::NodeHandle n;
    ros::ServiceClient CAN_Client;
    ros::ServiceServer Desired_Steer_Angle_Service;
    Client ac;

    public:
    roscom() : ac("Odrive_Action", true), CAN_Client(n.serviceClient<steering::Odrive_command>("Odrive_command")), Desired_Steer_Angle_Service(n.advertiseService("Desired_Steer_Angle",&roscom::Desired_Steer_Angle_Callback, this))
    {
        ROS_INFO("Waiting for action server to start.");
        ac.waitForServer();
        ROS_INFO("gotem");
    }
    steering::Odrive_command srv;
    steering::Desired_angle srv_angle;

    void Send_command(std::vector<double> args);
    void Send_new_position(double new_position);

    bool Desired_Steer_Angle_Callback(steering::Desired_angle::Request &req, steering::Desired_angle::Response &resp);

    void activeCb();
    void feedbackCb(const steering::Steering_loopFeedbackConstPtr& feedback);
    void doneCb(const actionlib::SimpleClientGoalState& state, const steering::Steering_loopResultConstPtr& result);
};
}