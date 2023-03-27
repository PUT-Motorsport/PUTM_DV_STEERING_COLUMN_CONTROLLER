#pragma once

#include <boost/asio.hpp>
#include <iostream>
#include <string>
#include "vector"

namespace Communication{

struct semafora{
    enum RUN_STATES{
        RUNNING,
        IDLING,
        STOP,
        JOY_MODE,
        ERROR
    };
    RUN_STATES State {IDLING};
};

}
void Read_Terminal_async();
