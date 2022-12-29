; Auto-generated. Do not edit!


(cl:in-package steering-srv)


;//! \htmlinclude Odrive_command-request.msg.html

(cl:defclass <Odrive_command-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:float
    :initform 0.0)
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Odrive_command-request (<Odrive_command-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odrive_command-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odrive_command-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steering-srv:<Odrive_command-request> is deprecated: use steering-srv:Odrive_command-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:command-val is deprecated.  Use steering-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:values-val is deprecated.  Use steering-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odrive_command-request>) ostream)
  "Serializes a message object of type '<Odrive_command-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odrive_command-request>) istream)
  "Deserializes a message object of type '<Odrive_command-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'command) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Odrive_command-request>)))
  "Returns string type for a service object of type '<Odrive_command-request>"
  "steering/Odrive_commandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odrive_command-request)))
  "Returns string type for a service object of type 'Odrive_command-request"
  "steering/Odrive_commandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Odrive_command-request>)))
  "Returns md5sum for a message object of type '<Odrive_command-request>"
  "58b88c37419d5be4e900c845f70ccf1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_command-request)))
  "Returns md5sum for a message object of type 'Odrive_command-request"
  "58b88c37419d5be4e900c845f70ccf1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_command-request>)))
  "Returns full string definition for message of type '<Odrive_command-request>"
  (cl:format cl:nil "float64 command~%float64[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_command-request)))
  "Returns full string definition for message of type 'Odrive_command-request"
  (cl:format cl:nil "float64 command~%float64[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_command-request>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_command-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_command-request
    (cl:cons ':command (command msg))
    (cl:cons ':values (values msg))
))
;//! \htmlinclude Odrive_command-response.msg.html

(cl:defclass <Odrive_command-response> (roslisp-msg-protocol:ros-message)
  ((Axis_Error
    :reader Axis_Error
    :initarg :Axis_Error
    :type cl:integer
    :initform 0)
   (Axis_State
    :reader Axis_State
    :initarg :Axis_State
    :type cl:fixnum
    :initform 0)
   (Active_Errors
    :reader Active_Errors
    :initarg :Active_Errors
    :type cl:integer
    :initform 0)
   (Disarm_Reason
    :reader Disarm_Reason
    :initarg :Disarm_Reason
    :type cl:integer
    :initform 0)
   (Pos_Estimate
    :reader Pos_Estimate
    :initarg :Pos_Estimate
    :type cl:integer
    :initform 0)
   (Vel_Estimate
    :reader Vel_Estimate
    :initarg :Vel_Estimate
    :type cl:integer
    :initform 0)
   (Iq_Setpoint
    :reader Iq_Setpoint
    :initarg :Iq_Setpoint
    :type cl:integer
    :initform 0)
   (Iq_Measured
    :reader Iq_Measured
    :initarg :Iq_Measured
    :type cl:integer
    :initform 0)
   (FET_Temperature
    :reader FET_Temperature
    :initarg :FET_Temperature
    :type cl:integer
    :initform 0)
   (Motor_Temperature
    :reader Motor_Temperature
    :initarg :Motor_Temperature
    :type cl:integer
    :initform 0)
   (Vbus_Voltage
    :reader Vbus_Voltage
    :initarg :Vbus_Voltage
    :type cl:integer
    :initform 0)
   (Vbus_Current
    :reader Vbus_Current
    :initarg :Vbus_Current
    :type cl:integer
    :initform 0))
)

(cl:defclass Odrive_command-response (<Odrive_command-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odrive_command-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odrive_command-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steering-srv:<Odrive_command-response> is deprecated: use steering-srv:Odrive_command-response instead.")))

(cl:ensure-generic-function 'Axis_Error-val :lambda-list '(m))
(cl:defmethod Axis_Error-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Axis_Error-val is deprecated.  Use steering-srv:Axis_Error instead.")
  (Axis_Error m))

(cl:ensure-generic-function 'Axis_State-val :lambda-list '(m))
(cl:defmethod Axis_State-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Axis_State-val is deprecated.  Use steering-srv:Axis_State instead.")
  (Axis_State m))

(cl:ensure-generic-function 'Active_Errors-val :lambda-list '(m))
(cl:defmethod Active_Errors-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Active_Errors-val is deprecated.  Use steering-srv:Active_Errors instead.")
  (Active_Errors m))

(cl:ensure-generic-function 'Disarm_Reason-val :lambda-list '(m))
(cl:defmethod Disarm_Reason-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Disarm_Reason-val is deprecated.  Use steering-srv:Disarm_Reason instead.")
  (Disarm_Reason m))

(cl:ensure-generic-function 'Pos_Estimate-val :lambda-list '(m))
(cl:defmethod Pos_Estimate-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Pos_Estimate-val is deprecated.  Use steering-srv:Pos_Estimate instead.")
  (Pos_Estimate m))

(cl:ensure-generic-function 'Vel_Estimate-val :lambda-list '(m))
(cl:defmethod Vel_Estimate-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Vel_Estimate-val is deprecated.  Use steering-srv:Vel_Estimate instead.")
  (Vel_Estimate m))

(cl:ensure-generic-function 'Iq_Setpoint-val :lambda-list '(m))
(cl:defmethod Iq_Setpoint-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Iq_Setpoint-val is deprecated.  Use steering-srv:Iq_Setpoint instead.")
  (Iq_Setpoint m))

(cl:ensure-generic-function 'Iq_Measured-val :lambda-list '(m))
(cl:defmethod Iq_Measured-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Iq_Measured-val is deprecated.  Use steering-srv:Iq_Measured instead.")
  (Iq_Measured m))

(cl:ensure-generic-function 'FET_Temperature-val :lambda-list '(m))
(cl:defmethod FET_Temperature-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:FET_Temperature-val is deprecated.  Use steering-srv:FET_Temperature instead.")
  (FET_Temperature m))

(cl:ensure-generic-function 'Motor_Temperature-val :lambda-list '(m))
(cl:defmethod Motor_Temperature-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Motor_Temperature-val is deprecated.  Use steering-srv:Motor_Temperature instead.")
  (Motor_Temperature m))

(cl:ensure-generic-function 'Vbus_Voltage-val :lambda-list '(m))
(cl:defmethod Vbus_Voltage-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Vbus_Voltage-val is deprecated.  Use steering-srv:Vbus_Voltage instead.")
  (Vbus_Voltage m))

(cl:ensure-generic-function 'Vbus_Current-val :lambda-list '(m))
(cl:defmethod Vbus_Current-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Vbus_Current-val is deprecated.  Use steering-srv:Vbus_Current instead.")
  (Vbus_Current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odrive_command-response>) ostream)
  "Serializes a message object of type '<Odrive_command-response>"
  (cl:let* ((signed (cl:slot-value msg 'Axis_Error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Axis_State)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Active_Errors)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Disarm_Reason)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Pos_Estimate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Vel_Estimate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Iq_Setpoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Iq_Measured)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'FET_Temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Motor_Temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Vbus_Voltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Vbus_Current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odrive_command-response>) istream)
  "Deserializes a message object of type '<Odrive_command-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Axis_Error) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Axis_State) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Active_Errors) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Disarm_Reason) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Pos_Estimate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Vel_Estimate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Iq_Setpoint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Iq_Measured) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'FET_Temperature) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Motor_Temperature) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Vbus_Voltage) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Vbus_Current) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Odrive_command-response>)))
  "Returns string type for a service object of type '<Odrive_command-response>"
  "steering/Odrive_commandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odrive_command-response)))
  "Returns string type for a service object of type 'Odrive_command-response"
  "steering/Odrive_commandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Odrive_command-response>)))
  "Returns md5sum for a message object of type '<Odrive_command-response>"
  "58b88c37419d5be4e900c845f70ccf1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_command-response)))
  "Returns md5sum for a message object of type 'Odrive_command-response"
  "58b88c37419d5be4e900c845f70ccf1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_command-response>)))
  "Returns full string definition for message of type '<Odrive_command-response>"
  (cl:format cl:nil "int32 Axis_Error~%int8 Axis_State~%int32 Active_Errors~%int32 Disarm_Reason~%int32 Pos_Estimate~%int32 Vel_Estimate~%int32 Iq_Setpoint~%int32 Iq_Measured~%int32 FET_Temperature~%int32 Motor_Temperature~%int32 Vbus_Voltage~%int32 Vbus_Current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_command-response)))
  "Returns full string definition for message of type 'Odrive_command-response"
  (cl:format cl:nil "int32 Axis_Error~%int8 Axis_State~%int32 Active_Errors~%int32 Disarm_Reason~%int32 Pos_Estimate~%int32 Vel_Estimate~%int32 Iq_Setpoint~%int32 Iq_Measured~%int32 FET_Temperature~%int32 Motor_Temperature~%int32 Vbus_Voltage~%int32 Vbus_Current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_command-response>))
  (cl:+ 0
     4
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_command-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_command-response
    (cl:cons ':Axis_Error (Axis_Error msg))
    (cl:cons ':Axis_State (Axis_State msg))
    (cl:cons ':Active_Errors (Active_Errors msg))
    (cl:cons ':Disarm_Reason (Disarm_Reason msg))
    (cl:cons ':Pos_Estimate (Pos_Estimate msg))
    (cl:cons ':Vel_Estimate (Vel_Estimate msg))
    (cl:cons ':Iq_Setpoint (Iq_Setpoint msg))
    (cl:cons ':Iq_Measured (Iq_Measured msg))
    (cl:cons ':FET_Temperature (FET_Temperature msg))
    (cl:cons ':Motor_Temperature (Motor_Temperature msg))
    (cl:cons ':Vbus_Voltage (Vbus_Voltage msg))
    (cl:cons ':Vbus_Current (Vbus_Current msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Odrive_command)))
  'Odrive_command-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Odrive_command)))
  'Odrive_command-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odrive_command)))
  "Returns string type for a service object of type '<Odrive_command>"
  "steering/Odrive_command")