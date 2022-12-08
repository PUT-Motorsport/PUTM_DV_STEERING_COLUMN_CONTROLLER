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
  :slots ())

(defmethod steering::Odrive_commandRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass steering::Odrive_commandResponse
  :super ros::object
  :slots ())

(defmethod steering::Odrive_commandResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass steering::Odrive_command
  :super ros::object
  :slots ())

(setf (get steering::Odrive_command :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get steering::Odrive_command :datatype-) "steering/Odrive_command")
(setf (get steering::Odrive_command :request) steering::Odrive_commandRequest)
(setf (get steering::Odrive_command :response) steering::Odrive_commandResponse)

(defmethod steering::Odrive_commandRequest
  (:response () (instance steering::Odrive_commandResponse :init)))

(setf (get steering::Odrive_commandRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get steering::Odrive_commandRequest :datatype-) "steering/Odrive_commandRequest")
(setf (get steering::Odrive_commandRequest :definition-)
      "
---
")

(setf (get steering::Odrive_commandResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get steering::Odrive_commandResponse :datatype-) "steering/Odrive_commandResponse")
(setf (get steering::Odrive_commandResponse :definition-)
      "
---
")



(provide :steering/Odrive_command "d41d8cd98f00b204e9800998ecf8427e")


