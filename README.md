
# Steering Column Controller

SCC is a driver responsible for controlling a steering column of PM08 racing car.  
Built with CMake 3.0.0 and compiled using C++17




## Hardware

To control movement of front axle, we use a brushless motor coupled with a planetary gear which ratio is 10:1. The motor is driven by [Odrive V3.6 controller](https://odriverobotics.com/shop/odrive-v36).

## Control mode
To control motion of front axle, Odrive uses a [position control mode](https://docs.odriverobotics.com/v/latest/getting-started.html#position-control) which utilize a trajectory controlled movements  
## Block Diagram  
![Steering diagram drawio](https://user-images.githubusercontent.com/94369639/200168290-99d18f5c-e7f6-463f-bd13-2ad8af7affb6.png)
## Program flow
Below is a simplified program execution scheme.  
![Program_Flow drawio](https://user-images.githubusercontent.com/94369639/200168303-d1e4fad5-e9c7-4ecb-a140-466a336053f5.png)
