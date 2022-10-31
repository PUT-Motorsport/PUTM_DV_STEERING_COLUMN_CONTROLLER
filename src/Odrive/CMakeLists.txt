add_library(Odrive "")

target_sources(Odrive
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/Odrive.cpp
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/Odrive.h
    ${CMAKE_CURRENT_LIST_DIR}/Odrive_meta.h
  )

target_include_directories(Odrive
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
  )
