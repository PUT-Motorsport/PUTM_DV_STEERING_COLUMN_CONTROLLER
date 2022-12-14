#pragma once

#include <boost/asio.hpp>
#include <iostream>
#include <string>

namespace Communication{

struct Terminal_input{
    std::string cmd;
    double value;
};

struct semafora{
    enum RUN_STATES{
        START,
        RUNNING,
        IDLING,
        STOP,
        CHANGE
    };
    RUN_STATES State {IDLING};
    bool new_terminal_command {false};
};

}

void Read_Terminal_async();
Communication::Terminal_input grab_command();
