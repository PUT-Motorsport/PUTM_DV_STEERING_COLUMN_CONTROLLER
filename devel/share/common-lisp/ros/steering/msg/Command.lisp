; Auto-generated. Do not edit!


(cl:in-package steering-msg)


;//! \htmlinclude Command.msg.html

(cl:defclass <Command> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (input_mode
    :reader input_mode
    :initarg :input_mode
    :type cl:integer
    :initform 0))
)

(cl:defclass Command (<Command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steering-msg:<Command> is deprecated: use steering-msg:Command instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-msg:command-val is deprecated.  Use steering-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-msg:state-val is deprecated.  Use steering-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'input_mode-val :lambda-list '(m))
(cl:defmethod input_mode-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-msg:input_mode-val is deprecated.  Use steering-msg:input_mode instead.")
  (input_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Command>) ostream)
  "Serializes a message object of type '<Command>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'input_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Command>) istream)
  "Deserializes a message object of type '<Command>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Command>)))
  "Returns string type for a message object of type '<Command>"
  "steering/Command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Command)))
  "Returns string type for a message object of type 'Command"
  "steering/Command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Command>)))
  "Returns md5sum for a message object of type '<Command>"
  "a39bebcff88cc716167e57a675f085d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Command)))
  "Returns md5sum for a message object of type 'Command"
  "a39bebcff88cc716167e57a675f085d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Command>)))
  "Returns full string definition for message of type '<Command>"
  (cl:format cl:nil "int32 command~%int32 state~%int32 input_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Command)))
  "Returns full string definition for message of type 'Command"
  (cl:format cl:nil "int32 command~%int32 state~%int32 input_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Command>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Command>))
  "Converts a ROS message object to a list"
  (cl:list 'Command
    (cl:cons ':command (command msg))
    (cl:cons ':state (state msg))
    (cl:cons ':input_mode (input_mode msg))
))
