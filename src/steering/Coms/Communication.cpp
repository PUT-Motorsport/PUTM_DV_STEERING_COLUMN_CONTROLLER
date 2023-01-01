#include "Communication.hpp"
#include "Odrive_meta.h"
#include <iostream>
#include <iostream>
#include <string>
#include <future>
#include <thread>

extern Steering_Column::T_Odrive Odrive;
extern Communication::Common_Space Shared_Variables;

void Communication::roscom::Send_command(std::vector<double> args)
{  
    srv.request.command = args[0];
    args.erase(args.begin());
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
    std::cout << "Sending Goal" << std::endl;

    ac.sendGoal(goal,
                boost::bind(&Communication::roscom::doneCb, this, _1, _2),
                boost::bind(&Communication::roscom::activeCb, this),
                boost::bind(&Communication::roscom::feedbackCb, this, _1)),

    std::cout << "Waiting for result" << std::endl;
}

bool Communication::roscom::Desired_Steer_Angle_Callback(steering::Desired_angle::Request &req, steering::Desired_angle::Response &resp)
{
    std::cout << "Callback: " << req.desired_steer_angle << std::endl;
    Shared_Variables.Desired_Steer_angle = req.desired_steer_angle;
    Odrive.Set_Position(req.desired_steer_angle);
    resp.state = true;
    return true;
}

void Communication::roscom::doneCb(const actionlib::SimpleClientGoalState& state, const steering::Steering_loopResultConstPtr& result)
{
    ROS_INFO("Goal done");
}

// Called once when the goal becomes active
void Communication::roscom::activeCb()
{
  ROS_INFO("Goal just went active");
}

// Called every time feedback is received for the goal
void Communication::roscom::feedbackCb(const steering::Steering_loopFeedbackConstPtr& feedback)
{
   std::cout << "Feedback: " << feedback->current_position << std::endl;
}
