
# Steering Column Controller

SCC is a driver responsible for controlling a steering column of PM08 racing car.  
Built with CMake 3.0.0 and compiled using C++17




## Hardware

To control movement of front axle, we use a brushless motor coupled with a planetary gear which ratio is 10:1. The motor is driven by [Odrive V3.6 controller](https://odriverobotics.com/shop/odrive-v36).

## Control mode
To control motion of front axle, Odrive uses a [position control mode](https://docs.odriverobotics.com/v/latest/getting-started.html#position-control) which utilize a trajectory controlled movements  
## Block Diagram  
![Steering diagram drawio](https://user-images.githubusercontent.com/94369639/200953597-df9f516b-d63e-4be0-a3b7-38a93119b754.png)
## Program flow
Below is a simplified program execution scheme.  
![Program_Flow drawio](https://user-images.githubusercontent.com/94369639/200953602-906e0f28-8d19-4c53-b680-c25820b2fcb2.png)
