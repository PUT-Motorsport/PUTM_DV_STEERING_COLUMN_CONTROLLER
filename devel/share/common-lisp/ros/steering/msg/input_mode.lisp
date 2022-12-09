; Auto-generated. Do not edit!


(cl:in-package steering-msg)


;//! \htmlinclude input_mode.msg.html

(cl:defclass <input_mode> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (input_mode
    :reader input_mode
    :initarg :input_mode
    :type cl:integer
    :initform 0))
)

(cl:defclass input_mode (<input_mode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <input_mode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'input_mode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steering-msg:<input_mode> is deprecated: use steering-msg:input_mode instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <input_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-msg:id-val is deprecated.  Use steering-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'input_mode-val :lambda-list '(m))
(cl:defmethod input_mode-val ((m <input_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-msg:input_mode-val is deprecated.  Use steering-msg:input_mode instead.")
  (input_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <input_mode>) ostream)
  "Serializes a message object of type '<input_mode>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'input_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <input_mode>) istream)
  "Deserializes a message object of type '<input_mode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<input_mode>)))
  "Returns string type for a message object of type '<input_mode>"
  "steering/input_mode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'input_mode)))
  "Returns string type for a message object of type 'input_mode"
  "steering/input_mode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<input_mode>)))
  "Returns md5sum for a message object of type '<input_mode>"
  "c66a5f62b7a0de9706717ec3def6b7d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'input_mode)))
  "Returns md5sum for a message object of type 'input_mode"
  "c66a5f62b7a0de9706717ec3def6b7d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<input_mode>)))
  "Returns full string definition for message of type '<input_mode>"
  (cl:format cl:nil "int32 id~%int32 input_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'input_mode)))
  "Returns full string definition for message of type 'input_mode"
  (cl:format cl:nil "int32 id~%int32 input_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <input_mode>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <input_mode>))
  "Converts a ROS message object to a list"
  (cl:list 'input_mode
    (cl:cons ':id (id msg))
    (cl:cons ':input_mode (input_mode msg))
))
