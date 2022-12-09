; Auto-generated. Do not edit!


(cl:in-package steering-msg)


;//! \htmlinclude requested_state.msg.html

(cl:defclass <requested_state> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass requested_state (<requested_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <requested_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'requested_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steering-msg:<requested_state> is deprecated: use steering-msg:requested_state instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <requested_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-msg:id-val is deprecated.  Use steering-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <requested_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-msg:state-val is deprecated.  Use steering-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <requested_state>) ostream)
  "Serializes a message object of type '<requested_state>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <requested_state>) istream)
  "Deserializes a message object of type '<requested_state>"
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
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<requested_state>)))
  "Returns string type for a message object of type '<requested_state>"
  "steering/requested_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'requested_state)))
  "Returns string type for a message object of type 'requested_state"
  "steering/requested_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<requested_state>)))
  "Returns md5sum for a message object of type '<requested_state>"
  "e3fdde48f5246eb6df156a2d2049862b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'requested_state)))
  "Returns md5sum for a message object of type 'requested_state"
  "e3fdde48f5246eb6df156a2d2049862b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<requested_state>)))
  "Returns full string definition for message of type '<requested_state>"
  (cl:format cl:nil "int32 id~%int32 state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'requested_state)))
  "Returns full string definition for message of type 'requested_state"
  (cl:format cl:nil "int32 id~%int32 state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <requested_state>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <requested_state>))
  "Converts a ROS message object to a list"
  (cl:list 'requested_state
    (cl:cons ':id (id msg))
    (cl:cons ':state (state msg))
))
