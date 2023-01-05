;; Auto-generated. Do not edit!


(when (boundp 'steering::Odrive_command)
  (if (not (find-package "STEERING"))
    (make-package "STEERING"))
  (shadow 'Odrive_command (find-package "STEERING")))
(unless (find-package "STEERING::ODRIVE_COMMAND")
  (make-package "STEERING::ODRIVE_COMMAND"))
(unless (find-package "STEERING::ODRIVE_COMMANDREQUEST")
  (make-package "STEERING::ODRIVE_COMMANDREQUEST"))
(unless (find-package "STEERING::ODRIVE_COMMANDRESPONSE")
  (make-package "STEERING::ODRIVE_COMMANDRESPONSE"))

(in-package "ROS")





(defclass steering::Odrive_commandRequest
  :super ros::object
  :slots (_command _Axis_State _Control_Mode _Input_Mode _Input_Position _Input_Velocity_FF _Input_Torque_FF _Input_Torque _Velocity_Limit _Current_Limit _Traj_Velocity_Limit _Traj_Accel_Limit _Traj_Decel_Limit _Traj_Inertia _Position _Pos_Gain _Vel_Gain _Vel_Integrator_Gain ))

(defmethod steering::Odrive_commandRequest
  (:init
   (&key
    ((:command __command) 0.0)
    ((:Axis_State __Axis_State) 0)
    ((:Control_Mode __Control_Mode) 0)
    ((:Input_Mode __Input_Mode) 0)
    ((:Input_Position __Input_Position) 0.0)
    ((:Input_Velocity_FF __Input_Velocity_FF) 0)
    ((:Input_Torque_FF __Input_Torque_FF) 0)
    ((:Input_Torque __Input_Torque) 0.0)
    ((:Velocity_Limit __Velocity_Limit) 0.0)
    ((:Current_Limit __Current_Limit) 0.0)
    ((:Traj_Velocity_Limit __Traj_Velocity_Limit) 0.0)
    ((:Traj_Accel_Limit __Traj_Accel_Limit) 0.0)
    ((:Traj_Decel_Limit __Traj_Decel_Limit) 0.0)
    ((:Traj_Inertia __Traj_Inertia) 0.0)
    ((:Position __Position) 0.0)
    ((:Pos_Gain __Pos_Gain) 0.0)
    ((:Vel_Gain __Vel_Gain) 0.0)
    ((:Vel_Integrator_Gain __Vel_Integrator_Gain) 0.0)
    )
   (send-super :init)
   (setq _command (float __command))
   (setq _Axis_State (round __Axis_State))
   (setq _Control_Mode (round __Control_Mode))
   (setq _Input_Mode (round __Input_Mode))
   (setq _Input_Position (float __Input_Position))
   (setq _Input_Velocity_FF (round __Input_Velocity_FF))
   (setq _Input_Torque_FF (round __Input_Torque_FF))
   (setq _Input_Torque (float __Input_Torque))
   (setq _Velocity_Limit (float __Velocity_Limit))
   (setq _Current_Limit (float __Current_Limit))
   (setq _Traj_Velocity_Limit (float __Traj_Velocity_Limit))
   (setq _Traj_Accel_Limit (float __Traj_Accel_Limit))
   (setq _Traj_Decel_Limit (float __Traj_Decel_Limit))
   (setq _Traj_Inertia (float __Traj_Inertia))
   (setq _Position (float __Position))
   (setq _Pos_Gain (float __Pos_Gain))
   (setq _Vel_Gain (float __Vel_Gain))
   (setq _Vel_Integrator_Gain (float __Vel_Integrator_Gain))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:Axis_State
   (&optional __Axis_State)
   (if __Axis_State (setq _Axis_State __Axis_State)) _Axis_State)
  (:Control_Mode
   (&optional __Control_Mode)
   (if __Control_Mode (setq _Control_Mode __Control_Mode)) _Control_Mode)
  (:Input_Mode
   (&optional __Input_Mode)
   (if __Input_Mode (setq _Input_Mode __Input_Mode)) _Input_Mode)
  (:Input_Position
   (&optional __Input_Position)
   (if __Input_Position (setq _Input_Position __Input_Position)) _Input_Position)
  (:Input_Velocity_FF
   (&optional __Input_Velocity_FF)
   (if __Input_Velocity_FF (setq _Input_Velocity_FF __Input_Velocity_FF)) _Input_Velocity_FF)
  (:Input_Torque_FF
   (&optional __Input_Torque_FF)
   (if __Input_Torque_FF (setq _Input_Torque_FF __Input_Torque_FF)) _Input_Torque_FF)
  (:Input_Torque
   (&optional __Input_Torque)
   (if __Input_Torque (setq _Input_Torque __Input_Torque)) _Input_Torque)
  (:Velocity_Limit
   (&optional __Velocity_Limit)
   (if __Velocity_Limit (setq _Velocity_Limit __Velocity_Limit)) _Velocity_Limit)
  (:Current_Limit
   (&optional __Current_Limit)
   (if __Current_Limit (setq _Current_Limit __Current_Limit)) _Current_Limit)
  (:Traj_Velocity_Limit
   (&optional __Traj_Velocity_Limit)
   (if __Traj_Velocity_Limit (setq _Traj_Velocity_Limit __Traj_Velocity_Limit)) _Traj_Velocity_Limit)
  (:Traj_Accel_Limit
   (&optional __Traj_Accel_Limit)
   (if __Traj_Accel_Limit (setq _Traj_Accel_Limit __Traj_Accel_Limit)) _Traj_Accel_Limit)
  (:Traj_Decel_Limit
   (&optional __Traj_Decel_Limit)
   (if __Traj_Decel_Limit (setq _Traj_Decel_Limit __Traj_Decel_Limit)) _Traj_Decel_Limit)
  (:Traj_Inertia
   (&optional __Traj_Inertia)
   (if __Traj_Inertia (setq _Traj_Inertia __Traj_Inertia)) _Traj_Inertia)
  (:Position
   (&optional __Position)
   (if __Position (setq _Position __Position)) _Position)
  (:Pos_Gain
   (&optional __Pos_Gain)
   (if __Pos_Gain (setq _Pos_Gain __Pos_Gain)) _Pos_Gain)
  (:Vel_Gain
   (&optional __Vel_Gain)
   (if __Vel_Gain (setq _Vel_Gain __Vel_Gain)) _Vel_Gain)
  (:Vel_Integrator_Gain
   (&optional __Vel_Integrator_Gain)
   (if __Vel_Integrator_Gain (setq _Vel_Integrator_Gain __Vel_Integrator_Gain)) _Vel_Integrator_Gain)
  (:serialization-length
   ()
   (+
    ;; float64 _command
    8
    ;; int8 _Axis_State
    1
    ;; int32 _Control_Mode
    4
    ;; int32 _Input_Mode
    4
    ;; float32 _Input_Position
    4
    ;; uint16 _Input_Velocity_FF
    2
    ;; uint16 _Input_Torque_FF
    2
    ;; float32 _Input_Torque
    4
    ;; float32 _Velocity_Limit
    4
    ;; float32 _Current_Limit
    4
    ;; float32 _Traj_Velocity_Limit
    4
    ;; float32 _Traj_Accel_Limit
    4
    ;; float32 _Traj_Decel_Limit
    4
    ;; float32 _Traj_Inertia
    4
    ;; float32 _Position
    4
    ;; float32 _Pos_Gain
    4
    ;; float32 _Vel_Gain
    4
    ;; float32 _Vel_Integrator_Gain
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _command
       (sys::poke _command (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _Axis_State
       (write-byte _Axis_State s)
     ;; int32 _Control_Mode
       (write-long _Control_Mode s)
     ;; int32 _Input_Mode
       (write-long _Input_Mode s)
     ;; float32 _Input_Position
       (sys::poke _Input_Position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _Input_Velocity_FF
       (write-word _Input_Velocity_FF s)
     ;; uint16 _Input_Torque_FF
       (write-word _Input_Torque_FF s)
     ;; float32 _Input_Torque
       (sys::poke _Input_Torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Velocity_Limit
       (sys::poke _Velocity_Limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Current_Limit
       (sys::poke _Current_Limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Traj_Velocity_Limit
       (sys::poke _Traj_Velocity_Limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Traj_Accel_Limit
       (sys::poke _Traj_Accel_Limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Traj_Decel_Limit
       (sys::poke _Traj_Decel_Limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Traj_Inertia
       (sys::poke _Traj_Inertia (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Position
       (sys::poke _Position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Pos_Gain
       (sys::poke _Pos_Gain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vel_Gain
       (sys::poke _Vel_Gain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vel_Integrator_Gain
       (sys::poke _Vel_Integrator_Gain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _command
     (setq _command (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _Axis_State
     (setq _Axis_State (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Axis_State 127) (setq _Axis_State (- _Axis_State 256)))
   ;; int32 _Control_Mode
     (setq _Control_Mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Input_Mode
     (setq _Input_Mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _Input_Position
     (setq _Input_Position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _Input_Velocity_FF
     (setq _Input_Velocity_FF (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Input_Torque_FF
     (setq _Input_Torque_FF (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _Input_Torque
     (setq _Input_Torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Velocity_Limit
     (setq _Velocity_Limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Current_Limit
     (setq _Current_Limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Traj_Velocity_Limit
     (setq _Traj_Velocity_Limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Traj_Accel_Limit
     (setq _Traj_Accel_Limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Traj_Decel_Limit
     (setq _Traj_Decel_Limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Traj_Inertia
     (setq _Traj_Inertia (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Position
     (setq _Position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Pos_Gain
     (setq _Pos_Gain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vel_Gain
     (setq _Vel_Gain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vel_Integrator_Gain
     (setq _Vel_Integrator_Gain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass steering::Odrive_commandResponse
  :super ros::object
  :slots (_Axis_Error _Axis_State _Active_Errors _Disarm_Reason _Pos_Estimate _Vel_Estimate _Iq_Setpoint _Iq_Measured _FET_Temperature _Motor_Temperature _Vbus_Voltage _Vbus_Current ))

(defmethod steering::Odrive_commandResponse
  (:init
   (&key
    ((:Axis_Error __Axis_Error) 0)
    ((:Axis_State __Axis_State) 0)
    ((:Active_Errors __Active_Errors) 0)
    ((:Disarm_Reason __Disarm_Reason) 0)
    ((:Pos_Estimate __Pos_Estimate) 0)
    ((:Vel_Estimate __Vel_Estimate) 0)
    ((:Iq_Setpoint __Iq_Setpoint) 0)
    ((:Iq_Measured __Iq_Measured) 0)
    ((:FET_Temperature __FET_Temperature) 0)
    ((:Motor_Temperature __Motor_Temperature) 0)
    ((:Vbus_Voltage __Vbus_Voltage) 0)
    ((:Vbus_Current __Vbus_Current) 0)
    )
   (send-super :init)
   (setq _Axis_Error (round __Axis_Error))
   (setq _Axis_State (round __Axis_State))
   (setq _Active_Errors (round __Active_Errors))
   (setq _Disarm_Reason (round __Disarm_Reason))
   (setq _Pos_Estimate (round __Pos_Estimate))
   (setq _Vel_Estimate (round __Vel_Estimate))
   (setq _Iq_Setpoint (round __Iq_Setpoint))
   (setq _Iq_Measured (round __Iq_Measured))
   (setq _FET_Temperature (round __FET_Temperature))
   (setq _Motor_Temperature (round __Motor_Temperature))
   (setq _Vbus_Voltage (round __Vbus_Voltage))
   (setq _Vbus_Current (round __Vbus_Current))
   self)
  (:Axis_Error
   (&optional __Axis_Error)
   (if __Axis_Error (setq _Axis_Error __Axis_Error)) _Axis_Error)
  (:Axis_State
   (&optional __Axis_State)
   (if __Axis_State (setq _Axis_State __Axis_State)) _Axis_State)
  (:Active_Errors
   (&optional __Active_Errors)
   (if __Active_Errors (setq _Active_Errors __Active_Errors)) _Active_Errors)
  (:Disarm_Reason
   (&optional __Disarm_Reason)
   (if __Disarm_Reason (setq _Disarm_Reason __Disarm_Reason)) _Disarm_Reason)
  (:Pos_Estimate
   (&optional __Pos_Estimate)
   (if __Pos_Estimate (setq _Pos_Estimate __Pos_Estimate)) _Pos_Estimate)
  (:Vel_Estimate
   (&optional __Vel_Estimate)
   (if __Vel_Estimate (setq _Vel_Estimate __Vel_Estimate)) _Vel_Estimate)
  (:Iq_Setpoint
   (&optional __Iq_Setpoint)
   (if __Iq_Setpoint (setq _Iq_Setpoint __Iq_Setpoint)) _Iq_Setpoint)
  (:Iq_Measured
   (&optional __Iq_Measured)
   (if __Iq_Measured (setq _Iq_Measured __Iq_Measured)) _Iq_Measured)
  (:FET_Temperature
   (&optional __FET_Temperature)
   (if __FET_Temperature (setq _FET_Temperature __FET_Temperature)) _FET_Temperature)
  (:Motor_Temperature
   (&optional __Motor_Temperature)
   (if __Motor_Temperature (setq _Motor_Temperature __Motor_Temperature)) _Motor_Temperature)
  (:Vbus_Voltage
   (&optional __Vbus_Voltage)
   (if __Vbus_Voltage (setq _Vbus_Voltage __Vbus_Voltage)) _Vbus_Voltage)
  (:Vbus_Current
   (&optional __Vbus_Current)
   (if __Vbus_Current (setq _Vbus_Current __Vbus_Current)) _Vbus_Current)
  (:serialization-length
   ()
   (+
    ;; int32 _Axis_Error
    4
    ;; int8 _Axis_State
    1
    ;; int32 _Active_Errors
    4
    ;; int32 _Disarm_Reason
    4
    ;; int32 _Pos_Estimate
    4
    ;; int32 _Vel_Estimate
    4
    ;; int32 _Iq_Setpoint
    4
    ;; int32 _Iq_Measured
    4
    ;; int32 _FET_Temperature
    4
    ;; int32 _Motor_Temperature
    4
    ;; int32 _Vbus_Voltage
    4
    ;; int32 _Vbus_Current
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Axis_Error
       (write-long _Axis_Error s)
     ;; int8 _Axis_State
       (write-byte _Axis_State s)
     ;; int32 _Active_Errors
       (write-long _Active_Errors s)
     ;; int32 _Disarm_Reason
       (write-long _Disarm_Reason s)
     ;; int32 _Pos_Estimate
       (write-long _Pos_Estimate s)
     ;; int32 _Vel_Estimate
       (write-long _Vel_Estimate s)
     ;; int32 _Iq_Setpoint
       (write-long _Iq_Setpoint s)
     ;; int32 _Iq_Measured
       (write-long _Iq_Measured s)
     ;; int32 _FET_Temperature
       (write-long _FET_Temperature s)
     ;; int32 _Motor_Temperature
       (write-long _Motor_Temperature s)
     ;; int32 _Vbus_Voltage
       (write-long _Vbus_Voltage s)
     ;; int32 _Vbus_Current
       (write-long _Vbus_Current s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Axis_Error
     (setq _Axis_Error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _Axis_State
     (setq _Axis_State (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Axis_State 127) (setq _Axis_State (- _Axis_State 256)))
   ;; int32 _Active_Errors
     (setq _Active_Errors (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Disarm_Reason
     (setq _Disarm_Reason (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Pos_Estimate
     (setq _Pos_Estimate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Vel_Estimate
     (setq _Vel_Estimate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Iq_Setpoint
     (setq _Iq_Setpoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Iq_Measured
     (setq _Iq_Measured (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _FET_Temperature
     (setq _FET_Temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Motor_Temperature
     (setq _Motor_Temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Vbus_Voltage
     (setq _Vbus_Voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Vbus_Current
     (setq _Vbus_Current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass steering::Odrive_command
  :super ros::object
  :slots ())

(setf (get steering::Odrive_command :md5sum-) "82e9f30ff634c6c0e7b35b96a15643a9")
(setf (get steering::Odrive_command :datatype-) "steering/Odrive_command")
(setf (get steering::Odrive_command :request) steering::Odrive_commandRequest)
(setf (get steering::Odrive_command :response) steering::Odrive_commandResponse)

(defmethod steering::Odrive_commandRequest
  (:response () (instance steering::Odrive_commandResponse :init)))

(setf (get steering::Odrive_commandRequest :md5sum-) "82e9f30ff634c6c0e7b35b96a15643a9")
(setf (get steering::Odrive_commandRequest :datatype-) "steering/Odrive_commandRequest")
(setf (get steering::Odrive_commandRequest :definition-)
      "float64 command
int8 Axis_State
int32 Control_Mode
int32 Input_Mode
float32 Input_Position
uint16 Input_Velocity_FF
uint16 Input_Torque_FF
float32 Input_Torque
float32 Velocity_Limit
float32 Current_Limit
float32 Traj_Velocity_Limit
float32 Traj_Accel_Limit
float32 Traj_Decel_Limit
float32 Traj_Inertia
float32 Position
float32 Pos_Gain
float32 Vel_Gain
float32 Vel_Integrator_Gain
---
int32 Axis_Error
int8 Axis_State
int32 Active_Errors
int32 Disarm_Reason
int32 Pos_Estimate
int32 Vel_Estimate
int32 Iq_Setpoint
int32 Iq_Measured
int32 FET_Temperature
int32 Motor_Temperature
int32 Vbus_Voltage
int32 Vbus_Current
")

(setf (get steering::Odrive_commandResponse :md5sum-) "82e9f30ff634c6c0e7b35b96a15643a9")
(setf (get steering::Odrive_commandResponse :datatype-) "steering/Odrive_commandResponse")
(setf (get steering::Odrive_commandResponse :definition-)
      "float64 command
int8 Axis_State
int32 Control_Mode
int32 Input_Mode
float32 Input_Position
uint16 Input_Velocity_FF
uint16 Input_Torque_FF
float32 Input_Torque
float32 Velocity_Limit
float32 Current_Limit
float32 Traj_Velocity_Limit
float32 Traj_Accel_Limit
float32 Traj_Decel_Limit
float32 Traj_Inertia
float32 Position
float32 Pos_Gain
float32 Vel_Gain
float32 Vel_Integrator_Gain
---
int32 Axis_Error
int8 Axis_State
int32 Active_Errors
int32 Disarm_Reason
int32 Pos_Estimate
int32 Vel_Estimate
int32 Iq_Setpoint
int32 Iq_Measured
int32 FET_Temperature
int32 Motor_Temperature
int32 Vbus_Voltage
int32 Vbus_Current
")



(provide :steering/Odrive_command "82e9f30ff634c6c0e7b35b96a15643a9")


