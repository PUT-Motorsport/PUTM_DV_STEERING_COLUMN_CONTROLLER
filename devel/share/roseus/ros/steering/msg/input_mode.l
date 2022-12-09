;; Auto-generated. Do not edit!


(when (boundp 'steering::input_mode)
  (if (not (find-package "STEERING"))
    (make-package "STEERING"))
  (shadow 'input_mode (find-package "STEERING")))
(unless (find-package "STEERING::INPUT_MODE")
  (make-package "STEERING::INPUT_MODE"))

(in-package "ROS")
;;//! \htmlinclude input_mode.msg.html


(defclass steering::input_mode
  :super ros::object
  :slots (_id _input_mode ))

(defmethod steering::input_mode
  (:init
   (&key
    ((:id __id) 0)
    ((:input_mode __input_mode) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _input_mode (round __input_mode))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:input_mode
   (&optional __input_mode)
   (if __input_mode (setq _input_mode __input_mode)) _input_mode)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _input_mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _input_mode
       (write-long _input_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _input_mode
     (setq _input_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get steering::input_mode :md5sum-) "c66a5f62b7a0de9706717ec3def6b7d9")
(setf (get steering::input_mode :datatype-) "steering/input_mode")
(setf (get steering::input_mode :definition-)
      "int32 id
int32 input_mode
")



(provide :steering/input_mode "c66a5f62b7a0de9706717ec3def6b7d9")


