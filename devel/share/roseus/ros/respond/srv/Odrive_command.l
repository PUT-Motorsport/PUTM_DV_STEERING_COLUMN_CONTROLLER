;; Auto-generated. Do not edit!


(when (boundp 'respond::Odrive_command)
  (if (not (find-package "RESPOND"))
    (make-package "RESPOND"))
  (shadow 'Odrive_command (find-package "RESPOND")))
(unless (find-package "RESPOND::ODRIVE_COMMAND")
  (make-package "RESPOND::ODRIVE_COMMAND"))
(unless (find-package "RESPOND::ODRIVE_COMMANDREQUEST")
  (make-package "RESPOND::ODRIVE_COMMANDREQUEST"))
(unless (find-package "RESPOND::ODRIVE_COMMANDRESPONSE")
  (make-package "RESPOND::ODRIVE_COMMANDRESPONSE"))

(in-package "ROS")





(defclass respond::Odrive_commandRequest
  :super ros::object
  :slots (_command _values ))

(defmethod respond::Odrive_commandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _values __values)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; int32 _command
    4
    ;; float64[] _values
    (* 8    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _command
       (write-long _command s)
     ;; float64[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass respond::Odrive_commandResponse
  :super ros::object
  :slots (_Axis_Error _Axis_State _Active_Errors _Disarm_Reason _Pos_Estimate _Vel_Estimate _Iq_Setpoint _Iq_Measured _FET_Temperature _Motor_Temperature _Vbus_Voltage _Vbus_Current ))

(defmethod respond::Odrive_commandResponse
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

(defclass respond::Odrive_command
  :super ros::object
  :slots ())

(setf (get respond::Odrive_command :md5sum-) "490a95e9f7999f7ded62b1edb2bf95f8")
(setf (get respond::Odrive_command :datatype-) "respond/Odrive_command")
(setf (get respond::Odrive_command :request) respond::Odrive_commandRequest)
(setf (get respond::Odrive_command :response) respond::Odrive_commandResponse)

(defmethod respond::Odrive_commandRequest
  (:response () (instance respond::Odrive_commandResponse :init)))

(setf (get respond::Odrive_commandRequest :md5sum-) "490a95e9f7999f7ded62b1edb2bf95f8")
(setf (get respond::Odrive_commandRequest :datatype-) "respond/Odrive_commandRequest")
(setf (get respond::Odrive_commandRequest :definition-)
      "int32 command
float64[] values
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

(setf (get respond::Odrive_commandResponse :md5sum-) "490a95e9f7999f7ded62b1edb2bf95f8")
(setf (get respond::Odrive_commandResponse :datatype-) "respond/Odrive_commandResponse")
(setf (get respond::Odrive_commandResponse :definition-)
      "int32 command
float64[] values
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



(provide :respond/Odrive_command "490a95e9f7999f7ded62b1edb2bf95f8")


