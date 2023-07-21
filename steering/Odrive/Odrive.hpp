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
        public:
        //Data
            float EncoderEstimate;
        //Methods
        public:
            ros::NodeHandle OdriveNodeHandler;
            ros::Subscriber OdriveDataSubscriber;
            uint64_t timeout;
            static constexpr const uint64_t timeoutThreshold { 2 };
            float position;
        //Callbacks
           void OdriveHeartbeatCallback(const PUTM_EV_ROS2CAN::Odrive::ConstPtr& OdriveData);
        T_Odrive()
        {
            //timeout = ros::Time::now().toSec();
            OdriveDataSubscriber = OdriveNodeHandler.subscribe<PUTM_EV_ROS2CAN::Odrive>("OdriveDataCAN", 10, &T_Odrive::OdriveHeartbeatCallback, this);
            ros::spinOnce();
            while((OdriveAxisState != Odrive_Axis_States::IDLE) && (OdriveAxisState != Odrive_Axis_States::CLOSED_LOOP_CONTROL))
            {
                ROS_INFO("Odrive is not Online");
                ros::Duration(1).sleep();
                ros::spinOnce();
            }
            ROS_INFO("Odrive Online");
            ros::Duration(1).sleep();
            ros::spinOnce();
            if(OdriveAxisState != Odrive_Axis_States::CLOSED_LOOP_CONTROL)
            {
                Startup_procedure();
            }
            ROS_INFO("Odrive Calibrated and ready");
        }
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

        enum class Odrive_Axis_Errors : uint32_t{
            NO_ERROR = 0,
            INITIALIZING = 1,
            SYSTEM_LEVEL = 2,
            TIMING_ERROR = 4,
            MISSING_ESTIMATE  = 8,
            BAD_CONFIG = 16,
            DRV_FAULT = 32,
            MISSING_INPUT = 64,
            DC_BUS_OVER_VOLTAGE = 256,
            DC_BUS_UNDER_VOLTAGE = 512,
            DC_BUS_OVER_CURRENT = 1024,
            DC_BUS_OVER_REGEN_CURRENT = 2048,
            CURRENT_LIMIT_VIOLATION  = 4096,
            MOTOR_OVER_TEMP = 8192,
            INVERTER_OVER_TEMP = 16384,
            VELOCITY_LIMIT_VIOLATION = 32768,
            POSITION_LIMIT_VIOLATION = 65536,
            WATCHDOG_TIMER_EXPIRED = 16777216,
            ESTOP_REQUESTED = 33554432,
            SPINOUT_DETECTED = 67108864,
            OTHER_DEVICE_FAILED = 134217728,
            THERMISTOR_DISCONNECTED = 268435456,
            CALIBRATION_ERROR = 1073741824
        }OdriveSimpleAxisError;

        class {
            public:
                std::pair<Odrive_Axis_Errors, std::string> NoError        {Odrive_Axis_Errors::NO_ERROR, "NO_ERROR"};
                std::pair<Odrive_Axis_Errors, std::string> Initializing   {Odrive_Axis_Errors::INITIALIZING, "INITIALIZING"};
                std::pair<Odrive_Axis_Errors, std::string> SystemLevel    {Odrive_Axis_Errors::SYSTEM_LEVEL, "SYSTEM_LEVEL"};
                std::pair<Odrive_Axis_Errors, std::string> TimingError    {Odrive_Axis_Errors::TIMING_ERROR, "TIMING_ERROR"};
                std::pair<Odrive_Axis_Errors, std::string> MissingEstimate{Odrive_Axis_Errors::MISSING_ESTIMATE, "MISSING_ESTIMATE"};
                std::pair<Odrive_Axis_Errors, std::string> BadConfig      {Odrive_Axis_Errors::BAD_CONFIG, "BAD_CONFIG"};
                std::pair<Odrive_Axis_Errors, std::string> DrvFault       {Odrive_Axis_Errors::DRV_FAULT, "DRV_FAULT"};
        }OdriveAxisError;

        using OdriveErrorState =  std::pair<Odrive_Axis_Errors, std::string>;
        
        private:
            void Set_Controller_Mode();
            double Calculate_Displacement(double desired_steer_angle);
        public:
            void fast_startup();
            void Startup_procedure();
            void SetTrapTrajLimits();
            void Set_Position(float position);
            void Set_State(Odrive_Axis_States);
            bool CheckForTimeout();
    };
}