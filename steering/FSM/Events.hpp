/*
 * Events.hpp
 *
 *  Created on: Jul 4, 2023
 *      Author: AwaOmni3d
 */

#ifndef INC_EVENTS_HPP_
#define INC_EVENTS_HPP_

#include <variant>
#include <optional>

#include "../Odrive/Odrive.hpp"

struct EventCalibration {
    
};
struct EventAsReady {

};

struct EventAsMissionStopped {

};

struct EventOdriveError {

};

struct EventUserInput {

};

using event = std::variant<EventCalibration, EventAsReady, EventAsMissionStopped, EventOdriveError, EventUserInput>;


#endif /* INC_EVENTS_HPP_ */
