#pragma once

#include <boost/asio.hpp>
#include <iostream>
#include <string>

namespace Communication{

struct Terminal_input{
    std::string cmd;
    double value1;
    double value2;
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
void Execute_new_command();
double* grab_command();
