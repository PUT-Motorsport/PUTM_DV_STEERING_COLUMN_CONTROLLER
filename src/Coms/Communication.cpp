#include "Communication.h"

using namespace boost::asio;
using namespace std;

string Read_async()
{
    try
    {
        
        



        return "test";
    }
    catch(const std::exception& e)
    {
        std::cerr << e.what() << '\n';
    }
}