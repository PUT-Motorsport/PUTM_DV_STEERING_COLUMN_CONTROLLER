/*
 * States.hpp
 *
 *  Created on: Jul 4, 2023
 *      Author: AwaOmni3d
 */

#ifndef INC_STATES_HPP_
#define INC_STATES_HPP_

#include <variant>
#include <optional>

struct StateWaitingForCalibration {
    
};

struct StateIdle {

};

struct StateControlLoop {

};

struct StateOdriveError {

};

using state = std::variant< StateWaitingForCalibration, StateIdle, StateControlLoop, StateOdriveError>;



#endif /* INC_STATES_HPP_ */
