; Auto-generated. Do not edit!


(cl:in-package steering-srv)


;//! \htmlinclude Odrive_command-request.msg.html

(cl:defclass <Odrive_command-request> (roslisp-msg-protocol:ros-message)
  ((send_command
    :reader send_command
    :initarg :send_command
    :type cl:integer
    :initform 0))
)

(cl:defclass Odrive_command-request (<Odrive_command-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odrive_command-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odrive_command-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steering-srv:<Odrive_command-request> is deprecated: use steering-srv:Odrive_command-request instead.")))

(cl:ensure-generic-function 'send_command-val :lambda-list '(m))
(cl:defmethod send_command-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:send_command-val is deprecated.  Use steering-srv:send_command instead.")
  (send_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odrive_command-request>) ostream)
  "Serializes a message object of type '<Odrive_command-request>"
  (cl:let* ((signed (cl:slot-value msg 'send_command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odrive_command-request>) istream)
  "Deserializes a message object of type '<Odrive_command-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  "f759aa4a1410da240c4e7c85431387ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_command-request)))
  "Returns md5sum for a message object of type 'Odrive_command-request"
  "f759aa4a1410da240c4e7c85431387ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_command-request>)))
  "Returns full string definition for message of type '<Odrive_command-request>"
  (cl:format cl:nil "int32 send_command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_command-request)))
  "Returns full string definition for message of type 'Odrive_command-request"
  (cl:format cl:nil "int32 send_command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_command-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_command-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_command-request
    (cl:cons ':send_command (send_command msg))
))
;//! \htmlinclude Odrive_command-response.msg.html

(cl:defclass <Odrive_command-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass Odrive_command-response (<Odrive_command-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odrive_command-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odrive_command-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steering-srv:<Odrive_command-response> is deprecated: use steering-srv:Odrive_command-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Odrive_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:state-val is deprecated.  Use steering-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odrive_command-response>) ostream)
  "Serializes a message object of type '<Odrive_command-response>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  "f759aa4a1410da240c4e7c85431387ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_command-response)))
  "Returns md5sum for a message object of type 'Odrive_command-response"
  "f759aa4a1410da240c4e7c85431387ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_command-response>)))
  "Returns full string definition for message of type '<Odrive_command-response>"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_command-response)))
  "Returns full string definition for message of type 'Odrive_command-response"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_command-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_command-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_command-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Odrive_command)))
  'Odrive_command-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Odrive_command)))
  'Odrive_command-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odrive_command)))
  "Returns string type for a service object of type '<Odrive_command>"
  "steering/Odrive_command")