#include "Odrive/Odrive.h"
#include "Coms/Communication.hpp"
#include "Coms/Terminal.hpp"

#include <iostream>
#include <string>
#include <future>
#include <thread>

#include <chrono>

using namespace std;

extern Communication::semafora sem1;

Steering_Column::T_Odrive odrive;

void Controll_Loop()
{
    while(sem1.State == Communication::semafora::RUNNING)
    {
        cout << "Controlling" << endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
    }
}

void Execute_new_command()
{
    using namespace Communication; 
    Terminal_input new_cmd = grab_command();
    
    if(new_cmd.cmd == "set")
    {
        odrive.Set_Position(new_cmd.value);
    }
    sem1.State = semafora::IDLING;
}

int main(int argc, char **argv)
{
    
    thread Read(Read_Terminal_async);
    thread *Loop;

    for(;;)
    {
        //apply
        switch(sem1.State)
        {
            case Communication::semafora::IDLING:
                //Can change settings or send individual move commands.
            break;

            case Communication::semafora::START:
                //Creates new thread which runs a controll loop. Then change state to RUNNING.
                sem1.State = Communication::semafora::RUN_STATES::RUNNING;
                Loop = new thread(Controll_Loop);

            break;

            case Communication::semafora::RUNNING:
                //Send debug info and data.

            break;

            case Communication::semafora::STOP:
                //End thread and go to idle
                Loop->join();
                delete Loop;
                sem1.State = Communication::semafora::RUN_STATES::IDLING;
            break;

            case Communication::semafora::CHANGE:

                Execute_new_command();
                sem1.State = Communication::semafora::RUN_STATES::IDLING;

            break;
        }
        std::this_thread::sleep_for(std::chrono::seconds(2));
    }
}
