#include "Terminal.hpp"
#include "/home/putm/src/steering/Odrive/Odrive.hpp"

using namespace boost::asio;
using namespace std;

Communication::semafora sem1;
Communication::Terminal_input new_command;

static double args[2] = {new_command.value1, new_command.value2};

double* grab_command()
{
    return args;
}

void Read_Terminal_async()
{
    for(;;)
    {
        std::string input;
        double value1;
        double value2;
        
        cin >> input;

        if(input == "run")
        {
            cout << input << endl;
            sem1.State = Communication::semafora::RUN_STATES::START;
        }
        else if(input == "stop")
        {
            cout << input << endl;
            sem1.State = Communication::semafora::RUN_STATES::STOP;
        }
        else if(input == "setstate")
        {
            cin >> args[0];
            cin >> args[1];
            cout << input << " " << args[0] << " " << args[1] << endl;
            //tablica zamiast struktury/
            new_command.cmd = 1;
            sem1.State = Communication::semafora::RUN_STATES::CHANGE;
        }
    }
}
void Execute_new_command()
{
    using namespace Communication; 
   // Terminal_input new_cmd = grab_command();
    /*
    if(new_cmd.cmd == "set")
    {
        odrive.Set_Position(new_cmd.value1);
    }
    //raw input for debug only.
    else if(new_cmd.cmd == "send")
    {
        odrive.Send_command(new_cmd.cmd, new_cmd.value1, new_cmd.value2);
    }
    sem1.State = semafora::IDLING;
    */
}