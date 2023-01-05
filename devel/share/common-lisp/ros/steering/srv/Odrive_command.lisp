; Auto-generated. Do not edit!


(cl:in-package steering-srv)


;//! \htmlinclude Odrive_command-request.msg.html

(cl:defclass <Odrive_command-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:float
    :initform 0.0)
   (Axis_State
    :reader Axis_State
    :initarg :Axis_State
    :type cl:fixnum
    :initform 0)
   (Control_Mode
    :reader Control_Mode
    :initarg :Control_Mode
    :type cl:integer
    :initform 0)
   (Input_Mode
    :reader Input_Mode
    :initarg :Input_Mode
    :type cl:integer
    :initform 0)
   (Input_Position
    :reader Input_Position
    :initarg :Input_Position
    :type cl:float
    :initform 0.0)
   (Input_Velocity_FF
    :reader Input_Velocity_FF
    :initarg :Input_Velocity_FF
    :type cl:fixnum
    :initform 0)
   (Input_Torque_FF
    :reader Input_Torque_FF
    :initarg :Input_Torque_FF
    :type cl:fixnum
    :initform 0)
   (Input_Torque
    :reader Input_Torque
    :initarg :Input_Torque
    :type cl:float
    :initform 0.0)
   (Velocity_Limit
    :reader Velocity_Limit
    :initarg :Velocity_Limit
    :type cl:float
    :initform 0.0)
   (Current_Limit
    :reader Current_Limit
    :initarg :Current_Limit
    :type cl:float
    :initform 0.0)
   (Traj_Velocity_Limit
    :reader Traj_Velocity_Limit
    :initarg :Traj_Velocity_Limit
    :type cl:float
    :initform 0.0)
   (Traj_Accel_Limit
    :reader Traj_Accel_Limit
    :initarg :Traj_Accel_Limit
    :type cl:float
    :initform 0.0)
   (Traj_Decel_Limit
    :reader Traj_Decel_Limit
    :initarg :Traj_Decel_Limit
    :type cl:float
    :initform 0.0)
   (Traj_Inertia
    :reader Traj_Inertia
    :initarg :Traj_Inertia
    :type cl:float
    :initform 0.0)
   (Position
    :reader Position
    :initarg :Position
    :type cl:float
    :initform 0.0)
   (Pos_Gain
    :reader Pos_Gain
    :initarg :Pos_Gain
    :type cl:float
    :initform 0.0)
   (Vel_Gain
    :reader Vel_Gain
    :initarg :Vel_Gain
    :type cl:float
    :initform 0.0)
   (Vel_Integrator_Gain
    :reader Vel_Integrator_Gain
    :initarg :Vel_Integrator_Gain
    :type cl:float
    :initform 0.0))
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

(cl:ensure-generic-function 'Axis_State-val :lambda-list '(m))
(cl:defmethod Axis_State-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Axis_State-val is deprecated.  Use steering-srv:Axis_State instead.")
  (Axis_State m))

(cl:ensure-generic-function 'Control_Mode-val :lambda-list '(m))
(cl:defmethod Control_Mode-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Control_Mode-val is deprecated.  Use steering-srv:Control_Mode instead.")
  (Control_Mode m))

(cl:ensure-generic-function 'Input_Mode-val :lambda-list '(m))
(cl:defmethod Input_Mode-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Input_Mode-val is deprecated.  Use steering-srv:Input_Mode instead.")
  (Input_Mode m))

(cl:ensure-generic-function 'Input_Position-val :lambda-list '(m))
(cl:defmethod Input_Position-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Input_Position-val is deprecated.  Use steering-srv:Input_Position instead.")
  (Input_Position m))

(cl:ensure-generic-function 'Input_Velocity_FF-val :lambda-list '(m))
(cl:defmethod Input_Velocity_FF-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Input_Velocity_FF-val is deprecated.  Use steering-srv:Input_Velocity_FF instead.")
  (Input_Velocity_FF m))

(cl:ensure-generic-function 'Input_Torque_FF-val :lambda-list '(m))
(cl:defmethod Input_Torque_FF-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Input_Torque_FF-val is deprecated.  Use steering-srv:Input_Torque_FF instead.")
  (Input_Torque_FF m))

(cl:ensure-generic-function 'Input_Torque-val :lambda-list '(m))
(cl:defmethod Input_Torque-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Input_Torque-val is deprecated.  Use steering-srv:Input_Torque instead.")
  (Input_Torque m))

(cl:ensure-generic-function 'Velocity_Limit-val :lambda-list '(m))
(cl:defmethod Velocity_Limit-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Velocity_Limit-val is deprecated.  Use steering-srv:Velocity_Limit instead.")
  (Velocity_Limit m))

(cl:ensure-generic-function 'Current_Limit-val :lambda-list '(m))
(cl:defmethod Current_Limit-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Current_Limit-val is deprecated.  Use steering-srv:Current_Limit instead.")
  (Current_Limit m))

(cl:ensure-generic-function 'Traj_Velocity_Limit-val :lambda-list '(m))
(cl:defmethod Traj_Velocity_Limit-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Traj_Velocity_Limit-val is deprecated.  Use steering-srv:Traj_Velocity_Limit instead.")
  (Traj_Velocity_Limit m))

(cl:ensure-generic-function 'Traj_Accel_Limit-val :lambda-list '(m))
(cl:defmethod Traj_Accel_Limit-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Traj_Accel_Limit-val is deprecated.  Use steering-srv:Traj_Accel_Limit instead.")
  (Traj_Accel_Limit m))

(cl:ensure-generic-function 'Traj_Decel_Limit-val :lambda-list '(m))
(cl:defmethod Traj_Decel_Limit-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Traj_Decel_Limit-val is deprecated.  Use steering-srv:Traj_Decel_Limit instead.")
  (Traj_Decel_Limit m))

(cl:ensure-generic-function 'Traj_Inertia-val :lambda-list '(m))
(cl:defmethod Traj_Inertia-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Traj_Inertia-val is deprecated.  Use steering-srv:Traj_Inertia instead.")
  (Traj_Inertia m))

(cl:ensure-generic-function 'Position-val :lambda-list '(m))
(cl:defmethod Position-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Position-val is deprecated.  Use steering-srv:Position instead.")
  (Position m))

(cl:ensure-generic-function 'Pos_Gain-val :lambda-list '(m))
(cl:defmethod Pos_Gain-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Pos_Gain-val is deprecated.  Use steering-srv:Pos_Gain instead.")
  (Pos_Gain m))

(cl:ensure-generic-function 'Vel_Gain-val :lambda-list '(m))
(cl:defmethod Vel_Gain-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Vel_Gain-val is deprecated.  Use steering-srv:Vel_Gain instead.")
  (Vel_Gain m))

(cl:ensure-generic-function 'Vel_Integrator_Gain-val :lambda-list '(m))
(cl:defmethod Vel_Integrator_Gain-val ((m <Odrive_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader steering-srv:Vel_Integrator_Gain-val is deprecated.  Use steering-srv:Vel_Integrator_Gain instead.")
  (Vel_Integrator_Gain m))
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
  (cl:let* ((signed (cl:slot-value msg 'Axis_State)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Control_Mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Input_Mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Input_Position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Input_Velocity_FF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Input_Velocity_FF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Input_Torque_FF)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Input_Torque_FF)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Input_Torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Velocity_Limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Current_Limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Traj_Velocity_Limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Traj_Accel_Limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Traj_Decel_Limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Traj_Inertia))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Pos_Gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vel_Gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vel_Integrator_Gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Axis_State) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Control_Mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Input_Mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Input_Position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Input_Velocity_FF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Input_Velocity_FF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Input_Torque_FF)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Input_Torque_FF)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Input_Torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Velocity_Limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Current_Limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Traj_Velocity_Limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Traj_Accel_Limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Traj_Decel_Limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Traj_Inertia) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Pos_Gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vel_Gain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vel_Integrator_Gain) (roslisp-utils:decode-single-float-bits bits)))
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
  "82e9f30ff634c6c0e7b35b96a15643a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_command-request)))
  "Returns md5sum for a message object of type 'Odrive_command-request"
  "82e9f30ff634c6c0e7b35b96a15643a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_command-request>)))
  "Returns full string definition for message of type '<Odrive_command-request>"
  (cl:format cl:nil "float64 command~%int8 Axis_State~%int32 Control_Mode~%int32 Input_Mode~%float32 Input_Position~%uint16 Input_Velocity_FF~%uint16 Input_Torque_FF~%float32 Input_Torque~%float32 Velocity_Limit~%float32 Current_Limit~%float32 Traj_Velocity_Limit~%float32 Traj_Accel_Limit~%float32 Traj_Decel_Limit~%float32 Traj_Inertia~%float32 Position~%float32 Pos_Gain~%float32 Vel_Gain~%float32 Vel_Integrator_Gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_command-request)))
  "Returns full string definition for message of type 'Odrive_command-request"
  (cl:format cl:nil "float64 command~%int8 Axis_State~%int32 Control_Mode~%int32 Input_Mode~%float32 Input_Position~%uint16 Input_Velocity_FF~%uint16 Input_Torque_FF~%float32 Input_Torque~%float32 Velocity_Limit~%float32 Current_Limit~%float32 Traj_Velocity_Limit~%float32 Traj_Accel_Limit~%float32 Traj_Decel_Limit~%float32 Traj_Inertia~%float32 Position~%float32 Pos_Gain~%float32 Vel_Gain~%float32 Vel_Integrator_Gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_command-request>))
  (cl:+ 0
     8
     1
     4
     4
     4
     2
     2
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
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_command-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_command-request
    (cl:cons ':command (command msg))
    (cl:cons ':Axis_State (Axis_State msg))
    (cl:cons ':Control_Mode (Control_Mode msg))
    (cl:cons ':Input_Mode (Input_Mode msg))
    (cl:cons ':Input_Position (Input_Position msg))
    (cl:cons ':Input_Velocity_FF (Input_Velocity_FF msg))
    (cl:cons ':Input_Torque_FF (Input_Torque_FF msg))
    (cl:cons ':Input_Torque (Input_Torque msg))
    (cl:cons ':Velocity_Limit (Velocity_Limit msg))
    (cl:cons ':Current_Limit (Current_Limit msg))
    (cl:cons ':Traj_Velocity_Limit (Traj_Velocity_Limit msg))
    (cl:cons ':Traj_Accel_Limit (Traj_Accel_Limit msg))
    (cl:cons ':Traj_Decel_Limit (Traj_Decel_Limit msg))
    (cl:cons ':Traj_Inertia (Traj_Inertia msg))
    (cl:cons ':Position (Position msg))
    (cl:cons ':Pos_Gain (Pos_Gain msg))
    (cl:cons ':Vel_Gain (Vel_Gain msg))
    (cl:cons ':Vel_Integrator_Gain (Vel_Integrator_Gain msg))
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
  "82e9f30ff634c6c0e7b35b96a15643a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_command-response)))
  "Returns md5sum for a message object of type 'Odrive_command-response"
  "82e9f30ff634c6c0e7b35b96a15643a9")
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