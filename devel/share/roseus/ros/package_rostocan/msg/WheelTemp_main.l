;; Auto-generated. Do not edit!


(when (boundp 'package_rostocan::WheelTemp_main)
  (if (not (find-package "PACKAGE_ROSTOCAN"))
    (make-package "PACKAGE_ROSTOCAN"))
  (shadow 'WheelTemp_main (find-package "PACKAGE_ROSTOCAN")))
(unless (find-package "PACKAGE_ROSTOCAN::WHEELTEMP_MAIN")
  (make-package "PACKAGE_ROSTOCAN::WHEELTEMP_MAIN"))

(in-package "ROS")
;;//! \htmlinclude WheelTemp_main.msg.html


(defclass package_rostocan::WheelTemp_main
  :super ros::object
  :slots (_wheelTemp0 _wheelTemp1 _wheelTemp2 _wheelTemp3 _wheelTemp4 _wheelTemp5 _wheelTemp6 _wheelTemp7 ))

(defmethod package_rostocan::WheelTemp_main
  (:init
   (&key
    ((:wheelTemp0 __wheelTemp0) 0)
    ((:wheelTemp1 __wheelTemp1) 0)
    ((:wheelTemp2 __wheelTemp2) 0)
    ((:wheelTemp3 __wheelTemp3) 0)
    ((:wheelTemp4 __wheelTemp4) 0)
    ((:wheelTemp5 __wheelTemp5) 0)
    ((:wheelTemp6 __wheelTemp6) 0)
    ((:wheelTemp7 __wheelTemp7) 0)
    )
   (send-super :init)
   (setq _wheelTemp0 (round __wheelTemp0))
   (setq _wheelTemp1 (round __wheelTemp1))
   (setq _wheelTemp2 (round __wheelTemp2))
   (setq _wheelTemp3 (round __wheelTemp3))
   (setq _wheelTemp4 (round __wheelTemp4))
   (setq _wheelTemp5 (round __wheelTemp5))
   (setq _wheelTemp6 (round __wheelTemp6))
   (setq _wheelTemp7 (round __wheelTemp7))
   self)
  (:wheelTemp0
   (&optional __wheelTemp0)
   (if __wheelTemp0 (setq _wheelTemp0 __wheelTemp0)) _wheelTemp0)
  (:wheelTemp1
   (&optional __wheelTemp1)
   (if __wheelTemp1 (setq _wheelTemp1 __wheelTemp1)) _wheelTemp1)
  (:wheelTemp2
   (&optional __wheelTemp2)
   (if __wheelTemp2 (setq _wheelTemp2 __wheelTemp2)) _wheelTemp2)
  (:wheelTemp3
   (&optional __wheelTemp3)
   (if __wheelTemp3 (setq _wheelTemp3 __wheelTemp3)) _wheelTemp3)
  (:wheelTemp4
   (&optional __wheelTemp4)
   (if __wheelTemp4 (setq _wheelTemp4 __wheelTemp4)) _wheelTemp4)
  (:wheelTemp5
   (&optional __wheelTemp5)
   (if __wheelTemp5 (setq _wheelTemp5 __wheelTemp5)) _wheelTemp5)
  (:wheelTemp6
   (&optional __wheelTemp6)
   (if __wheelTemp6 (setq _wheelTemp6 __wheelTemp6)) _wheelTemp6)
  (:wheelTemp7
   (&optional __wheelTemp7)
   (if __wheelTemp7 (setq _wheelTemp7 __wheelTemp7)) _wheelTemp7)
  (:serialization-length
   ()
   (+
    ;; uint8 _wheelTemp0
    1
    ;; uint8 _wheelTemp1
    1
    ;; uint8 _wheelTemp2
    1
    ;; uint8 _wheelTemp3
    1
    ;; uint8 _wheelTemp4
    1
    ;; uint8 _wheelTemp5
    1
    ;; uint8 _wheelTemp6
    1
    ;; uint8 _wheelTemp7
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _wheelTemp0
       (write-byte _wheelTemp0 s)
     ;; uint8 _wheelTemp1
       (write-byte _wheelTemp1 s)
     ;; uint8 _wheelTemp2
       (write-byte _wheelTemp2 s)
     ;; uint8 _wheelTemp3
       (write-byte _wheelTemp3 s)
     ;; uint8 _wheelTemp4
       (write-byte _wheelTemp4 s)
     ;; uint8 _wheelTemp5
       (write-byte _wheelTemp5 s)
     ;; uint8 _wheelTemp6
       (write-byte _wheelTemp6 s)
     ;; uint8 _wheelTemp7
       (write-byte _wheelTemp7 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _wheelTemp0
     (setq _wheelTemp0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wheelTemp1
     (setq _wheelTemp1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wheelTemp2
     (setq _wheelTemp2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wheelTemp3
     (setq _wheelTemp3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wheelTemp4
     (setq _wheelTemp4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wheelTemp5
     (setq _wheelTemp5 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wheelTemp6
     (setq _wheelTemp6 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wheelTemp7
     (setq _wheelTemp7 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get package_rostocan::WheelTemp_main :md5sum-) "2c711a199bb8f11b65e72f22df1be55d")
(setf (get package_rostocan::WheelTemp_main :datatype-) "package_rostocan/WheelTemp_main")
(setf (get package_rostocan::WheelTemp_main :definition-)
      "uint8 wheelTemp0
uint8 wheelTemp1
uint8 wheelTemp2
uint8 wheelTemp3
uint8 wheelTemp4
uint8 wheelTemp5
uint8 wheelTemp6
uint8 wheelTemp7
")



(provide :package_rostocan/WheelTemp_main "2c711a199bb8f11b65e72f22df1be55d")


