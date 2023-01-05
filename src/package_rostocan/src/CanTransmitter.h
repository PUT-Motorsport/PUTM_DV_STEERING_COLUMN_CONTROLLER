#include "CanBase.h"
#include "steering/Odrive_command.h"
#include <actionlib/server/simple_action_server.h>
#include "steering/Steering_loopAction.h"

typedef actionlib::SimpleActionServer<steering::Steering_loopAction>  Action_Server;

class CanTransmitter : public CanBase
{

    public:
        void set_odrive_position(const steering::Steering_loopGoalConstPtr &goal);
        bool transmit_odrive_rtr(steering::Odrive_command::Request &req, steering::Odrive_command::Response &resp);
        CanTransmitter(); 

    private:
        // services
        ros::ServiceServer ODrive_Service = n.advertiseService("Odrive_command", &CanTransmitter::transmit_odrive_rtr ,this);
        
        // actions
        Action_Server Odrive_Action_Server;
        steering::Steering_loopFeedback feedback;
        steering::Steering_loopResult result;

};