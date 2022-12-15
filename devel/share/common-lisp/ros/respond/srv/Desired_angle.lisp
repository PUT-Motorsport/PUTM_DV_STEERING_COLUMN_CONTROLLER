; Auto-generated. Do not edit!


(cl:in-package respond-srv)


;//! \htmlinclude Desired_angle-request.msg.html

(cl:defclass <Desired_angle-request> (roslisp-msg-protocol:ros-message)
  ((desired_steer_angle
    :reader desired_steer_angle
    :initarg :desired_steer_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass Desired_angle-request (<Desired_angle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Desired_angle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Desired_angle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name respond-srv:<Desired_angle-request> is deprecated: use respond-srv:Desired_angle-request instead.")))

(cl:ensure-generic-function 'desired_steer_angle-val :lambda-list '(m))
(cl:defmethod desired_steer_angle-val ((m <Desired_angle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader respond-srv:desired_steer_angle-val is deprecated.  Use respond-srv:desired_steer_angle instead.")
  (desired_steer_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Desired_angle-request>) ostream)
  "Serializes a message object of type '<Desired_angle-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_steer_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Desired_angle-request>) istream)
  "Deserializes a message object of type '<Desired_angle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_steer_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Desired_angle-request>)))
  "Returns string type for a service object of type '<Desired_angle-request>"
  "respond/Desired_angleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Desired_angle-request)))
  "Returns string type for a service object of type 'Desired_angle-request"
  "respond/Desired_angleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Desired_angle-request>)))
  "Returns md5sum for a message object of type '<Desired_angle-request>"
  "c078a45d2f024e16d451d0b873075ade")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Desired_angle-request)))
  "Returns md5sum for a message object of type 'Desired_angle-request"
  "c078a45d2f024e16d451d0b873075ade")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Desired_angle-request>)))
  "Returns full string definition for message of type '<Desired_angle-request>"
  (cl:format cl:nil "float32 desired_steer_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Desired_angle-request)))
  "Returns full string definition for message of type 'Desired_angle-request"
  (cl:format cl:nil "float32 desired_steer_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Desired_angle-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Desired_angle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Desired_angle-request
    (cl:cons ':desired_steer_angle (desired_steer_angle msg))
))
;//! \htmlinclude Desired_angle-response.msg.html

(cl:defclass <Desired_angle-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Desired_angle-response (<Desired_angle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Desired_angle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Desired_angle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name respond-srv:<Desired_angle-response> is deprecated: use respond-srv:Desired_angle-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Desired_angle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader respond-srv:state-val is deprecated.  Use respond-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Desired_angle-response>) ostream)
  "Serializes a message object of type '<Desired_angle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Desired_angle-response>) istream)
  "Deserializes a message object of type '<Desired_angle-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Desired_angle-response>)))
  "Returns string type for a service object of type '<Desired_angle-response>"
  "respond/Desired_angleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Desired_angle-response)))
  "Returns string type for a service object of type 'Desired_angle-response"
  "respond/Desired_angleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Desired_angle-response>)))
  "Returns md5sum for a message object of type '<Desired_angle-response>"
  "c078a45d2f024e16d451d0b873075ade")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Desired_angle-response)))
  "Returns md5sum for a message object of type 'Desired_angle-response"
  "c078a45d2f024e16d451d0b873075ade")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Desired_angle-response>)))
  "Returns full string definition for message of type '<Desired_angle-response>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Desired_angle-response)))
  "Returns full string definition for message of type 'Desired_angle-response"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Desired_angle-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Desired_angle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Desired_angle-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Desired_angle)))
  'Desired_angle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Desired_angle)))
  'Desired_angle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Desired_angle)))
  "Returns string type for a service object of type '<Desired_angle>"
  "respond/Desired_angle")