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
  :slots (_command _value ))

(defmethod steering::Odrive_commandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _value (round __value))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _command
    4
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _command
       (write-long _command s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass steering::Odrive_commandResponse
  :super ros::object
  :slots (_state ))

(defmethod steering::Odrive_commandResponse
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass steering::Odrive_command
  :super ros::object
  :slots ())

(setf (get steering::Odrive_command :md5sum-) "91fd6849a5ae678705e41a8ee4fb22ea")
(setf (get steering::Odrive_command :datatype-) "steering/Odrive_command")
(setf (get steering::Odrive_command :request) steering::Odrive_commandRequest)
(setf (get steering::Odrive_command :response) steering::Odrive_commandResponse)

(defmethod steering::Odrive_commandRequest
  (:response () (instance steering::Odrive_commandResponse :init)))

(setf (get steering::Odrive_commandRequest :md5sum-) "91fd6849a5ae678705e41a8ee4fb22ea")
(setf (get steering::Odrive_commandRequest :datatype-) "steering/Odrive_commandRequest")
(setf (get steering::Odrive_commandRequest :definition-)
      "int32 command
int32 value
---
int32 state
")

(setf (get steering::Odrive_commandResponse :md5sum-) "91fd6849a5ae678705e41a8ee4fb22ea")
(setf (get steering::Odrive_commandResponse :datatype-) "steering/Odrive_commandResponse")
(setf (get steering::Odrive_commandResponse :definition-)
      "int32 command
int32 value
---
int32 state
")



(provide :steering/Odrive_command "91fd6849a5ae678705e41a8ee4fb22ea")


