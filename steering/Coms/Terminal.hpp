#pragma once

#include <boost/asio.hpp>
#include <iostream>
#include <string>
#include "vector"

namespace Communication{

struct semafora{
    enum RUN_STATES{
        IDLING,
        STOP,
        JOY_MODE,
        ERROR,
        RUNNING,
        AS_MODE
    };
    RUN_STATES State {IDLING};
};

}
void Read_Terminal_async();
