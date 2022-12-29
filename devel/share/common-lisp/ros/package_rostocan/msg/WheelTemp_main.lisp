; Auto-generated. Do not edit!


(cl:in-package package_rostocan-msg)


;//! \htmlinclude WheelTemp_main.msg.html

(cl:defclass <WheelTemp_main> (roslisp-msg-protocol:ros-message)
  ((wheelTemp0
    :reader wheelTemp0
    :initarg :wheelTemp0
    :type cl:fixnum
    :initform 0)
   (wheelTemp1
    :reader wheelTemp1
    :initarg :wheelTemp1
    :type cl:fixnum
    :initform 0)
   (wheelTemp2
    :reader wheelTemp2
    :initarg :wheelTemp2
    :type cl:fixnum
    :initform 0)
   (wheelTemp3
    :reader wheelTemp3
    :initarg :wheelTemp3
    :type cl:fixnum
    :initform 0)
   (wheelTemp4
    :reader wheelTemp4
    :initarg :wheelTemp4
    :type cl:fixnum
    :initform 0)
   (wheelTemp5
    :reader wheelTemp5
    :initarg :wheelTemp5
    :type cl:fixnum
    :initform 0)
   (wheelTemp6
    :reader wheelTemp6
    :initarg :wheelTemp6
    :type cl:fixnum
    :initform 0)
   (wheelTemp7
    :reader wheelTemp7
    :initarg :wheelTemp7
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WheelTemp_main (<WheelTemp_main>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelTemp_main>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelTemp_main)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name package_rostocan-msg:<WheelTemp_main> is deprecated: use package_rostocan-msg:WheelTemp_main instead.")))

(cl:ensure-generic-function 'wheelTemp0-val :lambda-list '(m))
(cl:defmethod wheelTemp0-val ((m <WheelTemp_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_rostocan-msg:wheelTemp0-val is deprecated.  Use package_rostocan-msg:wheelTemp0 instead.")
  (wheelTemp0 m))

(cl:ensure-generic-function 'wheelTemp1-val :lambda-list '(m))
(cl:defmethod wheelTemp1-val ((m <WheelTemp_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_rostocan-msg:wheelTemp1-val is deprecated.  Use package_rostocan-msg:wheelTemp1 instead.")
  (wheelTemp1 m))

(cl:ensure-generic-function 'wheelTemp2-val :lambda-list '(m))
(cl:defmethod wheelTemp2-val ((m <WheelTemp_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_rostocan-msg:wheelTemp2-val is deprecated.  Use package_rostocan-msg:wheelTemp2 instead.")
  (wheelTemp2 m))

(cl:ensure-generic-function 'wheelTemp3-val :lambda-list '(m))
(cl:defmethod wheelTemp3-val ((m <WheelTemp_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_rostocan-msg:wheelTemp3-val is deprecated.  Use package_rostocan-msg:wheelTemp3 instead.")
  (wheelTemp3 m))

(cl:ensure-generic-function 'wheelTemp4-val :lambda-list '(m))
(cl:defmethod wheelTemp4-val ((m <WheelTemp_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_rostocan-msg:wheelTemp4-val is deprecated.  Use package_rostocan-msg:wheelTemp4 instead.")
  (wheelTemp4 m))

(cl:ensure-generic-function 'wheelTemp5-val :lambda-list '(m))
(cl:defmethod wheelTemp5-val ((m <WheelTemp_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_rostocan-msg:wheelTemp5-val is deprecated.  Use package_rostocan-msg:wheelTemp5 instead.")
  (wheelTemp5 m))

(cl:ensure-generic-function 'wheelTemp6-val :lambda-list '(m))
(cl:defmethod wheelTemp6-val ((m <WheelTemp_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_rostocan-msg:wheelTemp6-val is deprecated.  Use package_rostocan-msg:wheelTemp6 instead.")
  (wheelTemp6 m))

(cl:ensure-generic-function 'wheelTemp7-val :lambda-list '(m))
(cl:defmethod wheelTemp7-val ((m <WheelTemp_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_rostocan-msg:wheelTemp7-val is deprecated.  Use package_rostocan-msg:wheelTemp7 instead.")
  (wheelTemp7 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelTemp_main>) ostream)
  "Serializes a message object of type '<WheelTemp_main>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp7)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelTemp_main>) istream)
  "Deserializes a message object of type '<WheelTemp_main>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheelTemp7)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelTemp_main>)))
  "Returns string type for a message object of type '<WheelTemp_main>"
  "package_rostocan/WheelTemp_main")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelTemp_main)))
  "Returns string type for a message object of type 'WheelTemp_main"
  "package_rostocan/WheelTemp_main")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelTemp_main>)))
  "Returns md5sum for a message object of type '<WheelTemp_main>"
  "2c711a199bb8f11b65e72f22df1be55d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelTemp_main)))
  "Returns md5sum for a message object of type 'WheelTemp_main"
  "2c711a199bb8f11b65e72f22df1be55d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelTemp_main>)))
  "Returns full string definition for message of type '<WheelTemp_main>"
  (cl:format cl:nil "uint8 wheelTemp0~%uint8 wheelTemp1~%uint8 wheelTemp2~%uint8 wheelTemp3~%uint8 wheelTemp4~%uint8 wheelTemp5~%uint8 wheelTemp6~%uint8 wheelTemp7~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelTemp_main)))
  "Returns full string definition for message of type 'WheelTemp_main"
  (cl:format cl:nil "uint8 wheelTemp0~%uint8 wheelTemp1~%uint8 wheelTemp2~%uint8 wheelTemp3~%uint8 wheelTemp4~%uint8 wheelTemp5~%uint8 wheelTemp6~%uint8 wheelTemp7~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelTemp_main>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelTemp_main>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelTemp_main
    (cl:cons ':wheelTemp0 (wheelTemp0 msg))
    (cl:cons ':wheelTemp1 (wheelTemp1 msg))
    (cl:cons ':wheelTemp2 (wheelTemp2 msg))
    (cl:cons ':wheelTemp3 (wheelTemp3 msg))
    (cl:cons ':wheelTemp4 (wheelTemp4 msg))
    (cl:cons ':wheelTemp5 (wheelTemp5 msg))
    (cl:cons ':wheelTemp6 (wheelTemp6 msg))
    (cl:cons ':wheelTemp7 (wheelTemp7 msg))
))
