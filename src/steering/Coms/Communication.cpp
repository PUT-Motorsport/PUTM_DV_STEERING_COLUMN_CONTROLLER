#include "Communication.hpp"
#include "Odrive_meta.h"

void roscom::init(int argc, char **argv)
{
    ros::init(argc, argv, "add_two_ints_client");
}
void roscom::Send_command(int command, int value)
{
    srv.request.command = command;
    srv.request.value = value;
    if (client.call(srv))
    {
        ROS_INFO("ok");
    }
}
void roscom::Send_new_position(float new_position)
{
    
 
}

