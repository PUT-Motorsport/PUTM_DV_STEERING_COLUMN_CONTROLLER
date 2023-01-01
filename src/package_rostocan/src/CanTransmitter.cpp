#include "CanTransmitter.h"
#include "Odrive_meta.h"
#include <iostream>

using namespace std;


CanTransmitter::CanTransmitter(): 
Odrive_Action_Server(CanBase::n, "Odrive_Action", boost::bind(&CanTransmitter::executeCB, this, _1), false),
subscriber_Apps_main{n.subscribe("transmitted/Apps_main", 1, &CanTransmitter::transmit_Apps_main, this)},
subscriber_WheelTemp_main{n.subscribe("transmitted/WheelTemp_main", 1, &CanTransmitter::transmit_WheelTemp_main, this)}
// subscriber_
{
  Odrive_Action_Server.start();
}

void CanTransmitter::transmit_Apps_main(const package_rostocan::Apps_main::ConstPtr& ros_msg)
{
  PUTM_CAN::Apps_main can_msg;
  can_frame frame;

  frame.can_id  = PUTM_CAN::APPS_MAIN_CAN_ID;
	frame.can_dlc = PUTM_CAN::APPS_MAIN_CAN_DLC;

  can_msg.counter = ros_msg->counter;
  can_msg.pedal_position = ros_msg->pedal_position;
  can_msg.position_diff = ros_msg->position_diff;
  can_msg.device_state = static_cast<PUTM_CAN::Apps_states>(ros_msg->device_state);

	auto can_data = reinterpret_cast<uint8_t*>(&can_msg);

  std::copy(&can_data[0], &can_data[PUTM_CAN::APPS_MAIN_CAN_DLC], frame.data);

	write(s, &frame, sizeof(struct can_frame));
}

void CanTransmitter::transmit_WheelTemp_main(const package_rostocan::WheelTemp_main::ConstPtr& ros_msg)
{
  PUTM_CAN::WheelTemp_main can_msg;
  can_frame frame;
  
  frame.can_id  = PUTM_CAN::WHEELTEMP_MAIN_CAN_ID;
	frame.can_dlc = PUTM_CAN::WHEELTEMP_MAIN_CAN_DLC;

  can_msg.wheelTemp[0] = ros_msg->wheelTemp0;
  can_msg.wheelTemp[1] = ros_msg->wheelTemp1;
  can_msg.wheelTemp[2] = ros_msg->wheelTemp2;
  can_msg.wheelTemp[3] = ros_msg->wheelTemp3;
  can_msg.wheelTemp[4] = ros_msg->wheelTemp4;
  can_msg.wheelTemp[5] = ros_msg->wheelTemp5;
  can_msg.wheelTemp[6] = ros_msg->wheelTemp6;
  can_msg.wheelTemp[7] = ros_msg->wheelTemp7;

	auto can_data = reinterpret_cast<uint8_t*>(&can_msg);

  std::copy(&can_data[0], &can_data[PUTM_CAN::WHEELTEMP_MAIN_CAN_DLC], frame.data);

	write(s, &frame, sizeof(struct can_frame));
}

bool Odrive_Service_Callback(steering::Odrive_command::Request &req, steering::Odrive_command::Response &resp)
{
  if(req.command == SET_AXIS_REQUESTED_STATE)
  {
    //Send frame to change Odrive state.
  }
  return true;
}
void CanTransmitter::executeCB(const steering::Steering_loopGoalConstPtr &goal)
{
  cout << "Action started " << goal->new_position << endl;
  double current_position = 0.0;
  while(std::abs(current_position - goal->new_position) > 0.000001)
  {
    current_position+=0.1;
    feedback.current_position = current_position;
    Odrive_Action_Server.publishFeedback(feedback);
    cout << "current position: " << current_position << " goal: " << goal->new_position << endl;
  }
  cout << "movement done" << endl;
  result.movement_done = true;
  Odrive_Action_Server.setSucceeded(result);
}