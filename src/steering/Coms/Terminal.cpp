#include "Terminal.hpp"
#include "../Odrive/Odrive.hpp"
#include "Odrive_meta.h"

using namespace boost::asio;
using namespace std;

Communication::semafora sem1;

std::vector<double> args;

std::vector<double> grab_command()
{
    return args;
}

void Read_Terminal_async()
{
    for(;;)
    {
        std::string input;
        
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
            args.clear();
            args.push_back((double)(SET_AXIS_REQUESTED_STATE));
            
            double a;
            cin >> a;
            args.push_back(a);
    
            cout << input << " " << args[0] << " " << args[1] << endl;
            sem1.State = Communication::semafora::RUN_STATES::CHANGE;
        }
        else if(input == "exit")
        {
            cout << input << endl;
            sem1.State = Communication::semafora::RUN_STATES::STOP;
            break;
        }
    }
}
