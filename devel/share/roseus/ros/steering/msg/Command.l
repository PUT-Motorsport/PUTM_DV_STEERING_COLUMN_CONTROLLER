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
  :slots ())

(defmethod steering::Command
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

(setf (get steering::Command :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get steering::Command :datatype-) "steering/Command")
(setf (get steering::Command :definition-)
      "
")



(provide :steering/Command "d41d8cd98f00b204e9800998ecf8427e")


