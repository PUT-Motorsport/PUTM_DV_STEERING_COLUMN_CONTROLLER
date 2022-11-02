#pragma once

#include <iostream>

#include "Odrive_meta.h"

namespace Steering_Column
{
    class T_Odrive{
        private:
        //Data
        int current_limit;
        int vel_limit;;
        int accel_limit;
        int torque_limit;
        //Methods
        bool is_odrive_alive() {return true;}
        float Get_Voltage();
        float Get_Current();
        void Set_Controller_Mode();
        int Get_Encoder_Count();
        float Get_Position_Estimate();

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

        void Startup_procedure();
        void Set_Position(float position);
    };
}

