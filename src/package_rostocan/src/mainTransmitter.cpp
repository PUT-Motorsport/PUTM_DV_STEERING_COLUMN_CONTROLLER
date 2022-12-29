#include "ros/ros.h"
#include <iostream>

#include "CanTransmitter.h"

using namespace std;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "CanTransmitter");
  CanTransmitter slcanTx;
  slcanTx.canConnect();
  ros::spin();
}
