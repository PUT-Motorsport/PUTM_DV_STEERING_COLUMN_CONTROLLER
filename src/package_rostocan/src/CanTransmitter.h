#include "CanBase.h"
#include "steering/Odrive_command.h"
#include <actionlib/server/simple_action_server.h>
#include "steering/Steering_loopAction.h"

bool Odrive_Service_Callback(steering::Odrive_command::Request &req, steering::Odrive_command::Response &resp);

typedef actionlib::SimpleActionServer<steering::Steering_loopAction>  Action_Server;

class CanTransmitter : public CanBase
{

    public:

        void executeCB(const steering::Steering_loopGoalConstPtr &goal);

        CanTransmitter(); 

    private:
        ros::Subscriber subscriber_Apps_main;
        ros::Subscriber subscriber_WheelTemp_main;
        // subscribers
        ros::ServiceServer ODrive_Service = n.advertiseService("Odrive_command", Odrive_Service_Callback);
        // services
        Action_Server Odrive_Action_Server;
        steering::Steering_loopFeedback feedback;
        steering::Steering_loopResult result;

        // actions
        void transmit_Apps_main(const package_rostocan::Apps_main::ConstPtr& ros_msg);
        void transmit_WheelTemp_main(const package_rostocan::WheelTemp_main::ConstPtr& ros_msg);
        // transmit_
};