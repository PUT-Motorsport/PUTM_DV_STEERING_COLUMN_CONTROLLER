#pragma once
#include <iostream>
#include <thread>
#include <vector>
#include "../Coms/Terminal.hpp"
#include "../Coms/Communication.hpp"
#include "can_heplers.hpp"

#include "../PUTM_DV_ROS2CAN_2023/Inc/putm_can_interface.hpp"

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
        private:

           const can_Signal_t set_axis_requested_state       {0, 32, true, 1, 0};
           const can_Signal_t get_encoder_position_estimates {0, 32, true, 1, 0};
           const can_Signal_t get_encoder_velocity_estimates {4, 32, true, 1, 0};
           const can_Signal_t set_control_mode               {0, 32, true, 1, 0};
           const can_Signal_t set_input_mode                 {32, 32, true, 1, 0};
           const can_Signal_t set_input_position             {0, 32, true, 1, 0};

        //Methods
        public:
        public:
        T_Odrive()
        {
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

        enum Odrive_Axis_States{
            UNDEFINED,
            IDLE,
            STARTUP_SEQUENCE,
            FULL_CALIBRATION_SEQUENCE,
            MOTOR_CALIBRATION,
            ENCODER_INDEX_SEARCH,
            ENCODER_OFFSET_CALIBRATION,
            CLOSED_LOOP_CONTROL,
            LOCKIN_SPIN,
            ENCODER_DIR_FIND,
        };

        bool is_odrive_alive();
        void Set_State(Odrive_Axis_States);
        float Get_Voltage();
        float Get_Current();
        void Set_Controller_Mode();
        int Get_Encoder_Count();
        float Get_Position_Estimate();

        void Startup_procedure();
        void Send_command(std::vector<double> args);
        void Set_Position(double position);
        double Calculate_Displacement(double desired_steer_angle);
    };
}

