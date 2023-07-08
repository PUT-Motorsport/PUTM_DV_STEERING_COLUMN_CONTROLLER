#pragma once
#include <iostream>
#include <thread>
#include <vector>
#include "../Coms/Terminal.hpp"
#include "../Coms/Communication.hpp"

#include "../PUTM_DV_CAN_LIBRARY_RAII/include/can_tx.hpp"

#include "/home/putm/catkin_ws/devel/include/PUTM_EV_ROS2CAN/Odrive.h"

#define POSITION_CONTROL_MODE           3
#define TRAP_TRAJ_MODE                  5

extern Communication::semafora sem1;

namespace Steering_Column
{
    class T_Odrive{
        private:
        //Data
            float EncoderEstimate;
        //Methods
        public:
            ros::NodeHandle OdriveNodeHandler;
            ros::Subscriber OdriveDataSubscriber;
        //Callbacks
           void OdriveHeartbeatCallback(const PUTM_EV_ROS2CAN::Odrive::ConstPtr& OdriveData);
        T_Odrive()
        {
            OdriveDataSubscriber = OdriveNodeHandler.subscribe<PUTM_EV_ROS2CAN::Odrive>("OdriveDataCAN", 10, &T_Odrive::OdriveHeartbeatCallback, this);
            // if(is_odrive_alive() == true)
            // {
            //     std::cout << "Odrive is online" << std::endl;
            //     current_state = Odrive_states::IDLING;
            // }
            // else{std::cout<<"Odrive heartbeat not present" << std::endl;
            //     sem1.State = Communication::semafora::RUN_STATES::ERROR;
            //     current_state = Odrive_states::ERROR;
            //     }
        }

        enum Odrive_states{
            IDLING,
            RUNNING,
            ERROR,
            WARNING,
            OFFLINE,
        }current_state;

        enum class Odrive_Axis_States{
            UNDEFINED,
            IDLE,
            STARTUP_SEQUENCE,
            FULL_CALIBRATION_SEQUENCE,
            MOTOR_CALIBRATION,
            ENCODER_INDEX_SEARCH = 6,
            ENCODER_OFFSET_CALIBRATION,
            CLOSED_LOOP_CONTROL,
            LOCKIN_SPIN,
            ENCODER_DIR_FIND,
        }OdriveAxisState;

        enum class Odrive_Error_States{
            ERROR,
            OK
        }OdriveErrorStates;

        private:
            void Set_Controller_Mode();
            double Calculate_Displacement(double desired_steer_angle);

        public:
            void fast_startup();
            void Startup_procedure();
            void Set_Position(float position);
            void Set_State(Odrive_Axis_States);
    };
}

