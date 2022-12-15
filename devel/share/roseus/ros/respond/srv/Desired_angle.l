;; Auto-generated. Do not edit!


(when (boundp 'respond::Desired_angle)
  (if (not (find-package "RESPOND"))
    (make-package "RESPOND"))
  (shadow 'Desired_angle (find-package "RESPOND")))
(unless (find-package "RESPOND::DESIRED_ANGLE")
  (make-package "RESPOND::DESIRED_ANGLE"))
(unless (find-package "RESPOND::DESIRED_ANGLEREQUEST")
  (make-package "RESPOND::DESIRED_ANGLEREQUEST"))
(unless (find-package "RESPOND::DESIRED_ANGLERESPONSE")
  (make-package "RESPOND::DESIRED_ANGLERESPONSE"))

(in-package "ROS")





(defclass respond::Desired_angleRequest
  :super ros::object
  :slots (_desired_steer_angle ))

(defmethod respond::Desired_angleRequest
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

(defclass respond::Desired_angleResponse
  :super ros::object
  :slots (_state ))

(defmethod respond::Desired_angleResponse
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

(defclass respond::Desired_angle
  :super ros::object
  :slots ())

(setf (get respond::Desired_angle :md5sum-) "c078a45d2f024e16d451d0b873075ade")
(setf (get respond::Desired_angle :datatype-) "respond/Desired_angle")
(setf (get respond::Desired_angle :request) respond::Desired_angleRequest)
(setf (get respond::Desired_angle :response) respond::Desired_angleResponse)

(defmethod respond::Desired_angleRequest
  (:response () (instance respond::Desired_angleResponse :init)))

(setf (get respond::Desired_angleRequest :md5sum-) "c078a45d2f024e16d451d0b873075ade")
(setf (get respond::Desired_angleRequest :datatype-) "respond/Desired_angleRequest")
(setf (get respond::Desired_angleRequest :definition-)
      "float32 desired_steer_angle
---
bool state
")

(setf (get respond::Desired_angleResponse :md5sum-) "c078a45d2f024e16d451d0b873075ade")
(setf (get respond::Desired_angleResponse :datatype-) "respond/Desired_angleResponse")
(setf (get respond::Desired_angleResponse :definition-)
      "float32 desired_steer_angle
---
bool state
")



(provide :respond/Desired_angle "c078a45d2f024e16d451d0b873075ade")


