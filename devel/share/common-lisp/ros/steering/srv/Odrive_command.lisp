; Auto-generated. Do not edit!


(cl:in-package steering-srv)


;//! \htmlinclude Odrive_command-request.msg.html

(cl:defclass <Odrive_command-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Odrive_command-request (<Odrive_command-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odrive_command-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odrive_command-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steering-srv:<Odrive_command-request> is deprecated: use steering-srv:Odrive_command-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odrive_command-request>) ostream)
  "Serializes a message object of type '<Odrive_command-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odrive_command-request>) istream)
  "Deserializes a message object of type '<Odrive_command-request>"
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
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_command-request)))
  "Returns md5sum for a message object of type 'Odrive_command-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_command-request>)))
  "Returns full string definition for message of type '<Odrive_command-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_command-request)))
  "Returns full string definition for message of type 'Odrive_command-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_command-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_command-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_command-request
))
;//! \htmlinclude Odrive_command-response.msg.html

(cl:defclass <Odrive_command-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Odrive_command-response (<Odrive_command-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odrive_command-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odrive_command-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name steering-srv:<Odrive_command-response> is deprecated: use steering-srv:Odrive_command-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odrive_command-response>) ostream)
  "Serializes a message object of type '<Odrive_command-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odrive_command-response>) istream)
  "Deserializes a message object of type '<Odrive_command-response>"
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
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_command-response)))
  "Returns md5sum for a message object of type 'Odrive_command-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_command-response>)))
  "Returns full string definition for message of type '<Odrive_command-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_command-response)))
  "Returns full string definition for message of type 'Odrive_command-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_command-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_command-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_command-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Odrive_command)))
  'Odrive_command-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Odrive_command)))
  'Odrive_command-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odrive_command)))
  "Returns string type for a service object of type '<Odrive_command>"
  "steering/Odrive_command")