/*
 * Transitions.hpp
 *
 *  Created on: Jul 4, 2023
 *      Author: AwaOmni3d
 */

#ifndef TRANSITIONS_HPP_
#define TRANSITIONS_HPP_

#include <variant>
#include <optional>

struct transitions {

	std::optional<state> operator()(StateWaitingForCalibration&, const EventCalibration&) {
		return StateIdle{};
	}
	std::optional<state> operator()(StateIdle&, const EventAsReady&) {
		return StateControlLoop{};
	}
	std::optional<state> operator()(StateIdle&, const EventOdriveError&) {
		return StateOdriveError{};
	}
	std::optional<state> operator()(StateControlLoop&, const EventOdriveError&) {
		return StateOdriveError{};
	}
	std::optional<state> operator()(StateControlLoop&, const EventAsMissionStopped&) {
		return StateIdle{};
	}
	std::optional<state> operator()(StateOdriveError&, const EventUserInput&) {
		return StateWaitingForCalibration{};
	}
	template<typename State, typename Event>
	std::optional<state> operator()(State&, const Event&) const
	{
		return std::nullopt;
	}
};



#endif /* TRANSITIONS_HPP_ */
