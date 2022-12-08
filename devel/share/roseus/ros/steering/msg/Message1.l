;; Auto-generated. Do not edit!


(when (boundp 'steering::Message1)
  (if (not (find-package "STEERING"))
    (make-package "STEERING"))
  (shadow 'Message1 (find-package "STEERING")))
(unless (find-package "STEERING::MESSAGE1")
  (make-package "STEERING::MESSAGE1"))

(in-package "ROS")
;;//! \htmlinclude Message1.msg.html


(defclass steering::Message1
  :super ros::object
  :slots ())

(defmethod steering::Message1
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

(setf (get steering::Message1 :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get steering::Message1 :datatype-) "steering/Message1")
(setf (get steering::Message1 :definition-)
      "
")



(provide :steering/Message1 "d41d8cd98f00b204e9800998ecf8427e")


