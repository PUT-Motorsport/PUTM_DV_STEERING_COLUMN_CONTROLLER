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
    ac.sendGoal(goal,
                boost::bind(&Communication::roscom::doneCb, this, _1, _2),
                actionlib::SimpleActionClient<steering::Steering_loopAction>::SimpleActiveCallback(),
                actionlib::SimpleActionClient<steering::Steering_loopAction>::SimpleFeedbackCallback());

    ac.waitForResult(ros::Duration(1.0));
}

bool Communication::roscom::receiving_da_callback(steering::Desired_angle::Request &req, steering::Desired_angle::Response &resp)
{
    std::cout << "Callback: " << req.desired_steer_angle << std::endl;
    Shared_Variables.Desired_Steer_angle = req.desired_steer_angle;
    do
    {
        std::cout << "Column in motion" << std::endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(1));
    }
    while(Odrive.current_state == Steering_Column::T_Odrive::Odrive_states::RUNNING);
    return true;
}

void Communication::roscom::doneCb(const actionlib::SimpleClientGoalState& state,
            const steering::Steering_loopResultConstPtr& result)
{
  ros::shutdown();
}

// Called once when the goal becomes active
void Communication::roscom::activeCb()
{
  ROS_INFO("Goal just went active");
}

// Called every time feedback is received for the goal
void Communication::roscom::feedbackCb(const steering::Steering_loopFeedbackConstPtr& feedback)
{

}
