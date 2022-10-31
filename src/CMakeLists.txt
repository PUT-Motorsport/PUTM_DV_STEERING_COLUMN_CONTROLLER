add_executable(Steering_Column main.cpp)
  
add_subdirectory(Odrive)

target_link_libraries(Steering_Column
  PRIVATE
    Odrive
  )
