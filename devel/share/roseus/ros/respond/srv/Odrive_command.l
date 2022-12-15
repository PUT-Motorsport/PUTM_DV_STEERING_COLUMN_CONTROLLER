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
  :slots (_command _value ))

(defmethod respond::Odrive_commandRequest
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

(defclass respond::Odrive_commandResponse
  :super ros::object
  :slots (_state ))

(defmethod respond::Odrive_commandResponse
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

(defclass respond::Odrive_command
  :super ros::object
  :slots ())

(setf (get respond::Odrive_command :md5sum-) "91fd6849a5ae678705e41a8ee4fb22ea")
(setf (get respond::Odrive_command :datatype-) "respond/Odrive_command")
(setf (get respond::Odrive_command :request) respond::Odrive_commandRequest)
(setf (get respond::Odrive_command :response) respond::Odrive_commandResponse)

(defmethod respond::Odrive_commandRequest
  (:response () (instance respond::Odrive_commandResponse :init)))

(setf (get respond::Odrive_commandRequest :md5sum-) "91fd6849a5ae678705e41a8ee4fb22ea")
(setf (get respond::Odrive_commandRequest :datatype-) "respond/Odrive_commandRequest")
(setf (get respond::Odrive_commandRequest :definition-)
      "int32 command
int32 value
---
int32 state
")

(setf (get respond::Odrive_commandResponse :md5sum-) "91fd6849a5ae678705e41a8ee4fb22ea")
(setf (get respond::Odrive_commandResponse :datatype-) "respond/Odrive_commandResponse")
(setf (get respond::Odrive_commandResponse :definition-)
      "int32 command
int32 value
---
int32 state
")



(provide :respond/Odrive_command "91fd6849a5ae678705e41a8ee4fb22ea")


