;; Auto-generated. Do not edit!


(when (boundp 'steering::Desired_angle)
  (if (not (find-package "STEERING"))
    (make-package "STEERING"))
  (shadow 'Desired_angle (find-package "STEERING")))
(unless (find-package "STEERING::DESIRED_ANGLE")
  (make-package "STEERING::DESIRED_ANGLE"))
(unless (find-package "STEERING::DESIRED_ANGLEREQUEST")
  (make-package "STEERING::DESIRED_ANGLEREQUEST"))
(unless (find-package "STEERING::DESIRED_ANGLERESPONSE")
  (make-package "STEERING::DESIRED_ANGLERESPONSE"))

(in-package "ROS")





(defclass steering::Desired_angleRequest
  :super ros::object
  :slots (_desired_steer_angle ))

(defmethod steering::Desired_angleRequest
  (:init
   (&key
    ((:desired_steer_angle __desired_steer_angle) 0.0)
    )
   (send-super :init)
   (setq _desired_steer_angle (float __desired_steer_angle))
   self)
  (:desired_steer_angle
   (&optional __desired_steer_angle)
   (if __desired_steer_angle (setq _desired_steer_angle __desired_steer_angle)) _desired_steer_angle)
  (:serialization-length
   ()
   (+
    ;; float32 _desired_steer_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _desired_steer_angle
       (sys::poke _desired_steer_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _desired_steer_angle
     (setq _desired_steer_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass steering::Desired_angleResponse
  :super ros::object
  :slots (_state ))

(defmethod steering::Desired_angleResponse
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass steering::Desired_angle
  :super ros::object
  :slots ())

(setf (get steering::Desired_angle :md5sum-) "c078a45d2f024e16d451d0b873075ade")
(setf (get steering::Desired_angle :datatype-) "steering/Desired_angle")
(setf (get steering::Desired_angle :request) steering::Desired_angleRequest)
(setf (get steering::Desired_angle :response) steering::Desired_angleResponse)

(defmethod steering::Desired_angleRequest
  (:response () (instance steering::Desired_angleResponse :init)))

(setf (get steering::Desired_angleRequest :md5sum-) "c078a45d2f024e16d451d0b873075ade")
(setf (get steering::Desired_angleRequest :datatype-) "steering/Desired_angleRequest")
(setf (get steering::Desired_angleRequest :definition-)
      "float32 desired_steer_angle
---
bool state
")

(setf (get steering::Desired_angleResponse :md5sum-) "c078a45d2f024e16d451d0b873075ade")
(setf (get steering::Desired_angleResponse :datatype-) "steering/Desired_angleResponse")
(setf (get steering::Desired_angleResponse :definition-)
      "float32 desired_steer_angle
---
bool state
")



(provide :steering/Desired_angle "c078a45d2f024e16d451d0b873075ade")


