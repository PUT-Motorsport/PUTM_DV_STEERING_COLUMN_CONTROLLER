#pragma once
#include <iostream>
#include <thread>
#include <vector>
#include "../Coms/Terminal.hpp"
#include "../Coms/Communication.hpp"
#include "steering/Odrive_data.h"

#include "../PUTM_DV_CAN_LIBRARY/Inc/putm_can_interface.hpp"

#define POSITION_CONTROL_MODE           3
#define TRAP_TRAJ_MODE                  5
#define GEAR_RATIO                     10

namespace Steering_Column
{
    class T_Odrive{
        private:
        //Data
            int current_limit;
            int vel_limit;;
            int accel_limit;
            int torque_limit;
            float desired_steer_angle;
        //Methods
        public:
        T_Odrive()
        {
            can.connect();
            if(is_odrive_alive() == true)
            {
                std::cout << "Odrive is online" << std::endl;
                current_state = Odrive_states::IDLING;
            }
            else{std::cout<<"Odrive heartbeat not present" << std::endl;}
            current_state = Odrive_states::ERROR;
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
        };

        private:

           PUTM_CAN::CAN can;

            bool is_odrive_alive();

            float Get_Voltage();
            float Get_Current();
            int   Get_Encoder_Count();
            float Get_Position_Estimate();
            int   Get_Axis_State();
            int   Get_Error();

            void Set_Controller_Mode();

            double Calculate_Displacement(double desired_steer_angle);

        public:

        void fast_startup();
        void Startup_procedure();
        void Set_Position(float position);
        steering::Odrive_data return_data();
        void Set_State(Odrive_Axis_States);
    };
}

