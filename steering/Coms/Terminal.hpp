#pragma once

#include <boost/asio.hpp>
#include <iostream>
#include <string>
#include "vector"

namespace Communication{

struct semafora{
    enum RUN_STATES{
        START,
        RUNNING,
        IDLING,
        STOP,
        CHANGE
    };
    RUN_STATES State {IDLING};
};

}

void Read_Terminal_async();
std::vector<double> grab_command();
