add_library(Communication "")

target_sources(Communication
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/Communication.cpp
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/Communication.h
  )

target_include_directories(Communication
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
  )