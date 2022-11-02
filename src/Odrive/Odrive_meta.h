#pragma once

#define AXIS_ID                     0x000

#define VOLTAGE_AND_CURRENT         0x017
#define ODRIVE_HEARTBEAT            0x001
#define ODRIVE_ESTOP                0x002
#define ODRIVE_GET_ERROR            0x003
#define SET_AXIS_NODE_IDE           0x006
#define SET_AXIS_REQUESTED_STATE    0x007
#define GET_ENCODER_ESTIMATES       0x009
#define GET_ENCODER_COUNT           0x00A
#define SET_CONTROLLER_MODE         0x00B
#define SET_INPUT_POS               0x00C
#define SET_INPUT_VEL               0x00D
#define SET_INPUT_TORQUE            0x00E
#define STE_LIMITS                  0x00F
#define START_ANTICOGGING           0x010
#define SET_TRAJ_VEL_LIMITS         0x011
#define SET_TRAJ_ACCEL_LIMIT        0x012
#define SET_TRAJ_INERTIA            0x013
#define GET_IQ                      0x014
#define GET_TEMPERATURES            0x015
#define REBOOT_ODRIVE               0x016
#define GET_BUS_VOLTAGE_AND_CURRENT 0x017
#define CLEAR_ERRORS                0x018
#define SET_ABSOLUTE_POSITION       0x019
#define SET_POSITION_GAIN           0x01A
#define SET_VEL_GAINS               0x01B 

#define POSITION_CONTROL_MODE           3
#define TRAP_TRAJ_MODE                  5
#define GEAR_RATIO                     10
