
#include <iostream>

int main()
{
	std::cout << "MaxTravelAngle = " << MaxTravelAngle << " OdriveMaxTravelAngle =  " << OdriveMaxTravelAngle << '\n';
	std::cout << "AngleRatio = " << AngleRatio << '\n';
	
	while (true)
	{
		float dsa = 0.0;
		for (int i = 0; i <= 100; i++)
		{
			dsa += 0.2;
			CalculateDisplacement(dsa);
			std::this_thread::sleep_for(std::chrono::milliseconds(10));
		}
		for (int i = 100; i >= 0; i--)
		{
			dsa -= 0.2;
			CalculateDisplacement(dsa);
			std::this_thread::sleep_for(std::chrono::milliseconds(10));
		}
		break;
	}
	return 0;

}
