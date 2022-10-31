add_library(Coms "")

target_sources(Coms
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/Coms.cpp
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/Coms.h
  )

target_include_directories(Coms
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
  )