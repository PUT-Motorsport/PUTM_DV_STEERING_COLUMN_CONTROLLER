;; Auto-generated. Do not edit!


(when (boundp 'steering::Service1)
  (if (not (find-package "STEERING"))
    (make-package "STEERING"))
  (shadow 'Service1 (find-package "STEERING")))
(unless (find-package "STEERING::SERVICE1")
  (make-package "STEERING::SERVICE1"))
(unless (find-package "STEERING::SERVICE1REQUEST")
  (make-package "STEERING::SERVICE1REQUEST"))
(unless (find-package "STEERING::SERVICE1RESPONSE")
  (make-package "STEERING::SERVICE1RESPONSE"))

(in-package "ROS")





(defclass steering::Service1Request
  :super ros::object
  :slots ())

(defmethod steering::Service1Request
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

(defclass steering::Service1Response
  :super ros::object
  :slots ())

(defmethod steering::Service1Response
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

(defclass steering::Service1
  :super ros::object
  :slots ())

(setf (get steering::Service1 :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get steering::Service1 :datatype-) "steering/Service1")
(setf (get steering::Service1 :request) steering::Service1Request)
(setf (get steering::Service1 :response) steering::Service1Response)

(defmethod steering::Service1Request
  (:response () (instance steering::Service1Response :init)))

(setf (get steering::Service1Request :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get steering::Service1Request :datatype-) "steering/Service1Request")
(setf (get steering::Service1Request :definition-)
      "
---
")

(setf (get steering::Service1Response :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get steering::Service1Response :datatype-) "steering/Service1Response")
(setf (get steering::Service1Response :definition-)
      "
---
")



(provide :steering/Service1 "d41d8cd98f00b204e9800998ecf8427e")


