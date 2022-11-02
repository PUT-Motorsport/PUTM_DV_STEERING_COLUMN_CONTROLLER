
# Steering Column Controller

SCC is a driver responsible for controlling a steering column of PM08 racing car.  
Built with CMake 3.0.0 and compiled using C++17




## Hardware

To control movement of front axle, we use a brushless motor coupled with a planetary gear which ratio is 10:1. The motor is driven by [Odrive V3.6 controller](https://odriverobotics.com/shop/odrive-v36).

## Control mode
To control motion of front axle, Odrive uses a [position control mode](https://docs.odriverobotics.com/v/latest/getting-started.html#position-control) which utilize a trajectory controlled movements
## Program flow
Below is a block diagram showing simplified program execution scheme.  
![Program_Flow drawio](https://user-images.githubusercontent.com/94369639/199070031-12969f94-0f53-4a5e-b548-c4fb82a09298.png)
