;; Auto-generated. Do not edit!


(when (boundp 'steering::Command)
  (if (not (find-package "STEERING"))
    (make-package "STEERING"))
  (shadow 'Command (find-package "STEERING")))
(unless (find-package "STEERING::COMMAND")
  (make-package "STEERING::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass steering::Command
  :super ros::object
  :slots (_command _state _input_mode ))

(defmethod steering::Command
  (:init
   (&key
    ((:command __command) 0)
    ((:state __state) 0)
    ((:input_mode __input_mode) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _state (round __state))
   (setq _input_mode (round __input_mode))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:input_mode
   (&optional __input_mode)
   (if __input_mode (setq _input_mode __input_mode)) _input_mode)
  (:serialization-length
   ()
   (+
    ;; int32 _command
    4
    ;; int32 _state
    4
    ;; int32 _input_mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _command
       (write-long _command s)
     ;; int32 _state
       (write-long _state s)
     ;; int32 _input_mode
       (write-long _input_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _input_mode
     (setq _input_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get steering::Command :md5sum-) "a39bebcff88cc716167e57a675f085d3")
(setf (get steering::Command :datatype-) "steering/Command")
(setf (get steering::Command :definition-)
      "int32 command
int32 state
int32 input_mode
")



(provide :steering/Command "a39bebcff88cc716167e57a675f085d3")


