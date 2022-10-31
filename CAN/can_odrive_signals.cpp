#include "can_helpers.hpp"

/*Signals used for sending and receiving data*/
constexpr can_Signal_t bus_voltage{
    .startBit = 0,
    .length = 32,
    .isIntel = true,
    .factor = 1,
    .offset = 0
};
constexpr can_Signal_t bus_current{
    .startBit = 32,
    .length = 32,
    .isIntel = true,
    .factor = 1.0,
    .offset = 0
};
constexpr can_Signal_t set_control_mode{
    .startBit = 0,
    .length = 32,
    .isIntel = true,
    .factor = 1,
    .offset = 0
};
constexpr can_Signal_t set_input_mode{
    .startBit = 32,
    .length = 32,
    .isIntel = true,
    .factor = 1,
    .offset = 0
};
constexpr can_Signal_t input_position_signal{
    .startBit = 0,
    .length = 32,
    .isIntel = true,
    .factor = 1,
    .offset = 0
};
constexpr can_Signal_t input_vel_signal{
    .startBit = 32,
    .length = 16,
    .isIntel = true,
    .factor = 0.001,
    .offset = 0
};
constexpr can_Signal_t input_Torque_signal{

    .startBit = 48,
    .length = 16,
    .isIntel = true,
    .factor = 0.001,
    .offset = 0
};
