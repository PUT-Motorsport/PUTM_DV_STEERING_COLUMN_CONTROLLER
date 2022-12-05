#include "Terminal.hpp"

using namespace boost::asio;
using namespace std;

Communication::semafora sem1;
Communication::Terminal_input new_command;

Communication::Terminal_input grab_command()
{
    return new_command;
}

void Read_Terminal_async()
{
    for(;;)
    {
        string input;
        double value;
        
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
        else if(input == "set")
        {
            cin >> value;
            cout << input << " " << value << endl;
            new_command.cmd = "set";
            new_command.value = value;

            sem1.State = Communication::semafora::RUN_STATES::CHANGE;
        }
    }
}