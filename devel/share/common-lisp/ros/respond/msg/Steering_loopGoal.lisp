; Auto-generated. Do not edit!


(cl:in-package respond-msg)


;//! \htmlinclude Steering_loopGoal.msg.html

(cl:defclass <Steering_loopGoal> (roslisp-msg-protocol:ros-message)
  ((new_position
    :reader new_position
    :initarg :new_position
    :type cl:float
    :initform 0.0))
)

(cl:defclass Steering_loopGoal (<Steering_loopGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Steering_loopGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Steering_loopGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name respond-msg:<Steering_loopGoal> is deprecated: use respond-msg:Steering_loopGoal instead.")))

(cl:ensure-generic-function 'new_position-val :lambda-list '(m))
(cl:defmethod new_position-val ((m <Steering_loopGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader respond-msg:new_position-val is deprecated.  Use respond-msg:new_position instead.")
  (new_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Steering_loopGoal>) ostream)
  "Serializes a message object of type '<Steering_loopGoal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'new_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Steering_loopGoal>) istream)
  "Deserializes a message object of type '<Steering_loopGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'new_position) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Steering_loopGoal>)))
  "Returns string type for a message object of type '<Steering_loopGoal>"
  "respond/Steering_loopGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Steering_loopGoal)))
  "Returns string type for a message object of type 'Steering_loopGoal"
  "respond/Steering_loopGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Steering_loopGoal>)))
  "Returns md5sum for a message object of type '<Steering_loopGoal>"
  "940f1920ef9177c4320784fe9585b6e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Steering_loopGoal)))
  "Returns md5sum for a message object of type 'Steering_loopGoal"
  "940f1920ef9177c4320784fe9585b6e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Steering_loopGoal>)))
  "Returns full string definition for message of type '<Steering_loopGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%float32 new_position  # Specify which dishwasher we want to use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Steering_loopGoal)))
  "Returns full string definition for message of type 'Steering_loopGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%float32 new_position  # Specify which dishwasher we want to use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Steering_loopGoal>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Steering_loopGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'Steering_loopGoal
    (cl:cons ':new_position (new_position msg))
))
