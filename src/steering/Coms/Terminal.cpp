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
        std::string input;
        int value1;
        int value2;
        
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
            cin >> value1;
            cin >> value2;
            cout << input << " " << value1 << endl;
            new_command.cmd = 1;
            new_command.value1 = value1;
            new_command.value2 = value2;
            sem1.State = Communication::semafora::RUN_STATES::CHANGE;
        }
    }
}