#include "CanTransmitter.h"
#include "Odrive_meta.h"
#include <iostream>


CanTransmitter::CanTransmitter(): 
Odrive_Action_Server(CanBase::n, "Odrive_Action", boost::bind(&CanTransmitter::set_odrive_position, this, _1), false)
{
  Odrive_Action_Server.start();
}

bool CanTransmitter::transmit_odrive_rtr(steering::Odrive_command::Request &req, steering::Odrive_command::Response &resp)
{
  if(req.command == SET_AXIS_REQUESTED_STATE)
  {
    PUTM_CAN::WheelTemp_main can_msg;
    can_frame frame;
    can_frame frame2;
    
    frame.can_id  = (uint16_t)10U|CAN_RTR_FLAG;
	  frame.can_dlc = (uint16_t)0U;

    can_msg.wheelTemp[0] = (uint8_t)req.values[0];

	  auto can_data = reinterpret_cast<uint8_t*>(&can_msg);

    std::copy(&can_data[0], &can_data[PUTM_CAN::WHEELTEMP_MAIN_CAN_DLC], frame.data);
    write(s, &frame, sizeof(struct can_frame));
    read(s, &frame2, sizeof(struct can_frame)); // Check for errors
    std::cout<<frame2.can_id<<" received\n";
  }
  return true;
}

void CanTransmitter::set_odrive_position(const steering::Steering_loopGoalConstPtr &goal)
{
  std::cout << "Action started " << goal->new_position << std::endl;
  double current_position = 0.0;
  while(std::abs(current_position - goal->new_position) > 0.000001)
  {
    current_position+=0.1;
    feedback.current_position = current_position;
    Odrive_Action_Server.publishFeedback(feedback);
    std::cout << "current position: " << current_position << " goal: " << goal->new_position << std::endl;
  }
  std::cout << "movement done" << std::endl;
  result.movement_done = true;
  Odrive_Action_Server.setSucceeded(result);
}