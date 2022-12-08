add_library(Communication "")

target_sources(Communication
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/Communication.cpp
    ${CMAKE_CURRENT_LIST_DIR}/Terminal.cpp
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/Communication.hpp
    ${CMAKE_CURRENT_LIST_DIR}/Terminal.hpp
  )

target_include_directories(Communication
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
  )