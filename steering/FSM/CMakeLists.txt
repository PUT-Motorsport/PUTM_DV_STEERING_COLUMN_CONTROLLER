
add_library(fsm "")

set_target_properties(fsm PROPERTIES LINKER_LANGUAGE CXX)

target_sources(fsm
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/FSM.hpp
    ${CMAKE_CURRENT_LIST_DIR}/States.hpp
    ${CMAKE_CURRENT_LIST_DIR}/Transitions.hpp
    ${CMAKE_CURRENT_LIST_DIR}/Events.hpp
  )
target_include_directories(fsm
  PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}
  )
  include_directories(src/Odrive)