;; Auto-generated. Do not edit!


(when (boundp 'steering::requested_state)
  (if (not (find-package "STEERING"))
    (make-package "STEERING"))
  (shadow 'requested_state (find-package "STEERING")))
(unless (find-package "STEERING::REQUESTED_STATE")
  (make-package "STEERING::REQUESTED_STATE"))

(in-package "ROS")
;;//! \htmlinclude requested_state.msg.html


(defclass steering::requested_state
  :super ros::object
  :slots (_id _state ))

(defmethod steering::requested_state
  (:init
   (&key
    ((:id __id) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _state (round __state))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get steering::requested_state :md5sum-) "e3fdde48f5246eb6df156a2d2049862b")
(setf (get steering::requested_state :datatype-) "steering/requested_state")
(setf (get steering::requested_state :definition-)
      "int32 id
int32 state
")



(provide :steering/requested_state "e3fdde48f5246eb6df156a2d2049862b")


