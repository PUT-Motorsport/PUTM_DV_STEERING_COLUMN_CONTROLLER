// Auto-generated. Do not edit!

// (in-package steering.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Odrive_commandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.Axis_State = null;
      this.Control_Mode = null;
      this.Input_Mode = null;
      this.Input_Position = null;
      this.Input_Velocity_FF = null;
      this.Input_Torque_FF = null;
      this.Input_Torque = null;
      this.Velocity_Limit = null;
      this.Current_Limit = null;
      this.Traj_Velocity_Limit = null;
      this.Traj_Accel_Limit = null;
      this.Traj_Decel_Limit = null;
      this.Traj_Inertia = null;
      this.Position = null;
      this.Pos_Gain = null;
      this.Vel_Gain = null;
      this.Vel_Integrator_Gain = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0.0;
      }
      if (initObj.hasOwnProperty('Axis_State')) {
        this.Axis_State = initObj.Axis_State
      }
      else {
        this.Axis_State = 0;
      }
      if (initObj.hasOwnProperty('Control_Mode')) {
        this.Control_Mode = initObj.Control_Mode
      }
      else {
        this.Control_Mode = 0;
      }
      if (initObj.hasOwnProperty('Input_Mode')) {
        this.Input_Mode = initObj.Input_Mode
      }
      else {
        this.Input_Mode = 0;
      }
      if (initObj.hasOwnProperty('Input_Position')) {
        this.Input_Position = initObj.Input_Position
      }
      else {
        this.Input_Position = 0.0;
      }
      if (initObj.hasOwnProperty('Input_Velocity_FF')) {
        this.Input_Velocity_FF = initObj.Input_Velocity_FF
      }
      else {
        this.Input_Velocity_FF = 0;
      }
      if (initObj.hasOwnProperty('Input_Torque_FF')) {
        this.Input_Torque_FF = initObj.Input_Torque_FF
      }
      else {
        this.Input_Torque_FF = 0;
      }
      if (initObj.hasOwnProperty('Input_Torque')) {
        this.Input_Torque = initObj.Input_Torque
      }
      else {
        this.Input_Torque = 0.0;
      }
      if (initObj.hasOwnProperty('Velocity_Limit')) {
        this.Velocity_Limit = initObj.Velocity_Limit
      }
      else {
        this.Velocity_Limit = 0.0;
      }
      if (initObj.hasOwnProperty('Current_Limit')) {
        this.Current_Limit = initObj.Current_Limit
      }
      else {
        this.Current_Limit = 0.0;
      }
      if (initObj.hasOwnProperty('Traj_Velocity_Limit')) {
        this.Traj_Velocity_Limit = initObj.Traj_Velocity_Limit
      }
      else {
        this.Traj_Velocity_Limit = 0.0;
      }
      if (initObj.hasOwnProperty('Traj_Accel_Limit')) {
        this.Traj_Accel_Limit = initObj.Traj_Accel_Limit
      }
      else {
        this.Traj_Accel_Limit = 0.0;
      }
      if (initObj.hasOwnProperty('Traj_Decel_Limit')) {
        this.Traj_Decel_Limit = initObj.Traj_Decel_Limit
      }
      else {
        this.Traj_Decel_Limit = 0.0;
      }
      if (initObj.hasOwnProperty('Traj_Inertia')) {
        this.Traj_Inertia = initObj.Traj_Inertia
      }
      else {
        this.Traj_Inertia = 0.0;
      }
      if (initObj.hasOwnProperty('Position')) {
        this.Position = initObj.Position
      }
      else {
        this.Position = 0.0;
      }
      if (initObj.hasOwnProperty('Pos_Gain')) {
        this.Pos_Gain = initObj.Pos_Gain
      }
      else {
        this.Pos_Gain = 0.0;
      }
      if (initObj.hasOwnProperty('Vel_Gain')) {
        this.Vel_Gain = initObj.Vel_Gain
      }
      else {
        this.Vel_Gain = 0.0;
      }
      if (initObj.hasOwnProperty('Vel_Integrator_Gain')) {
        this.Vel_Integrator_Gain = initObj.Vel_Integrator_Gain
      }
      else {
        this.Vel_Integrator_Gain = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odrive_commandRequest
    // Serialize message field [command]
    bufferOffset = _serializer.float64(obj.command, buffer, bufferOffset);
    // Serialize message field [Axis_State]
    bufferOffset = _serializer.int8(obj.Axis_State, buffer, bufferOffset);
    // Serialize message field [Control_Mode]
    bufferOffset = _serializer.int32(obj.Control_Mode, buffer, bufferOffset);
    // Serialize message field [Input_Mode]
    bufferOffset = _serializer.int32(obj.Input_Mode, buffer, bufferOffset);
    // Serialize message field [Input_Position]
    bufferOffset = _serializer.float32(obj.Input_Position, buffer, bufferOffset);
    // Serialize message field [Input_Velocity_FF]
    bufferOffset = _serializer.uint16(obj.Input_Velocity_FF, buffer, bufferOffset);
    // Serialize message field [Input_Torque_FF]
    bufferOffset = _serializer.uint16(obj.Input_Torque_FF, buffer, bufferOffset);
    // Serialize message field [Input_Torque]
    bufferOffset = _serializer.float32(obj.Input_Torque, buffer, bufferOffset);
    // Serialize message field [Velocity_Limit]
    bufferOffset = _serializer.float32(obj.Velocity_Limit, buffer, bufferOffset);
    // Serialize message field [Current_Limit]
    bufferOffset = _serializer.float32(obj.Current_Limit, buffer, bufferOffset);
    // Serialize message field [Traj_Velocity_Limit]
    bufferOffset = _serializer.float32(obj.Traj_Velocity_Limit, buffer, bufferOffset);
    // Serialize message field [Traj_Accel_Limit]
    bufferOffset = _serializer.float32(obj.Traj_Accel_Limit, buffer, bufferOffset);
    // Serialize message field [Traj_Decel_Limit]
    bufferOffset = _serializer.float32(obj.Traj_Decel_Limit, buffer, bufferOffset);
    // Serialize message field [Traj_Inertia]
    bufferOffset = _serializer.float32(obj.Traj_Inertia, buffer, bufferOffset);
    // Serialize message field [Position]
    bufferOffset = _serializer.float32(obj.Position, buffer, bufferOffset);
    // Serialize message field [Pos_Gain]
    bufferOffset = _serializer.float32(obj.Pos_Gain, buffer, bufferOffset);
    // Serialize message field [Vel_Gain]
    bufferOffset = _serializer.float32(obj.Vel_Gain, buffer, bufferOffset);
    // Serialize message field [Vel_Integrator_Gain]
    bufferOffset = _serializer.float32(obj.Vel_Integrator_Gain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odrive_commandRequest
    let len;
    let data = new Odrive_commandRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Axis_State]
    data.Axis_State = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Control_Mode]
    data.Control_Mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Input_Mode]
    data.Input_Mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Input_Position]
    data.Input_Position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Input_Velocity_FF]
    data.Input_Velocity_FF = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Input_Torque_FF]
    data.Input_Torque_FF = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Input_Torque]
    data.Input_Torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Velocity_Limit]
    data.Velocity_Limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Current_Limit]
    data.Current_Limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Traj_Velocity_Limit]
    data.Traj_Velocity_Limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Traj_Accel_Limit]
    data.Traj_Accel_Limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Traj_Decel_Limit]
    data.Traj_Decel_Limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Traj_Inertia]
    data.Traj_Inertia = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Position]
    data.Position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Pos_Gain]
    data.Pos_Gain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Vel_Gain]
    data.Vel_Gain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Vel_Integrator_Gain]
    data.Vel_Integrator_Gain = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 69;
  }

  static datatype() {
    // Returns string type for a service object
    return 'steering/Odrive_commandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8fe282d5250df9b15d2d8e86d273add';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 command
    int8 Axis_State
    int32 Control_Mode
    int32 Input_Mode
    float32 Input_Position
    uint16 Input_Velocity_FF
    uint16 Input_Torque_FF
    float32 Input_Torque
    float32 Velocity_Limit
    float32 Current_Limit
    float32 Traj_Velocity_Limit
    float32 Traj_Accel_Limit
    float32 Traj_Decel_Limit
    float32 Traj_Inertia
    float32 Position
    float32 Pos_Gain
    float32 Vel_Gain
    float32 Vel_Integrator_Gain
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Odrive_commandRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0.0
    }

    if (msg.Axis_State !== undefined) {
      resolved.Axis_State = msg.Axis_State;
    }
    else {
      resolved.Axis_State = 0
    }

    if (msg.Control_Mode !== undefined) {
      resolved.Control_Mode = msg.Control_Mode;
    }
    else {
      resolved.Control_Mode = 0
    }

    if (msg.Input_Mode !== undefined) {
      resolved.Input_Mode = msg.Input_Mode;
    }
    else {
      resolved.Input_Mode = 0
    }

    if (msg.Input_Position !== undefined) {
      resolved.Input_Position = msg.Input_Position;
    }
    else {
      resolved.Input_Position = 0.0
    }

    if (msg.Input_Velocity_FF !== undefined) {
      resolved.Input_Velocity_FF = msg.Input_Velocity_FF;
    }
    else {
      resolved.Input_Velocity_FF = 0
    }

    if (msg.Input_Torque_FF !== undefined) {
      resolved.Input_Torque_FF = msg.Input_Torque_FF;
    }
    else {
      resolved.Input_Torque_FF = 0
    }

    if (msg.Input_Torque !== undefined) {
      resolved.Input_Torque = msg.Input_Torque;
    }
    else {
      resolved.Input_Torque = 0.0
    }

    if (msg.Velocity_Limit !== undefined) {
      resolved.Velocity_Limit = msg.Velocity_Limit;
    }
    else {
      resolved.Velocity_Limit = 0.0
    }

    if (msg.Current_Limit !== undefined) {
      resolved.Current_Limit = msg.Current_Limit;
    }
    else {
      resolved.Current_Limit = 0.0
    }

    if (msg.Traj_Velocity_Limit !== undefined) {
      resolved.Traj_Velocity_Limit = msg.Traj_Velocity_Limit;
    }
    else {
      resolved.Traj_Velocity_Limit = 0.0
    }

    if (msg.Traj_Accel_Limit !== undefined) {
      resolved.Traj_Accel_Limit = msg.Traj_Accel_Limit;
    }
    else {
      resolved.Traj_Accel_Limit = 0.0
    }

    if (msg.Traj_Decel_Limit !== undefined) {
      resolved.Traj_Decel_Limit = msg.Traj_Decel_Limit;
    }
    else {
      resolved.Traj_Decel_Limit = 0.0
    }

    if (msg.Traj_Inertia !== undefined) {
      resolved.Traj_Inertia = msg.Traj_Inertia;
    }
    else {
      resolved.Traj_Inertia = 0.0
    }

    if (msg.Position !== undefined) {
      resolved.Position = msg.Position;
    }
    else {
      resolved.Position = 0.0
    }

    if (msg.Pos_Gain !== undefined) {
      resolved.Pos_Gain = msg.Pos_Gain;
    }
    else {
      resolved.Pos_Gain = 0.0
    }

    if (msg.Vel_Gain !== undefined) {
      resolved.Vel_Gain = msg.Vel_Gain;
    }
    else {
      resolved.Vel_Gain = 0.0
    }

    if (msg.Vel_Integrator_Gain !== undefined) {
      resolved.Vel_Integrator_Gain = msg.Vel_Integrator_Gain;
    }
    else {
      resolved.Vel_Integrator_Gain = 0.0
    }

    return resolved;
    }
};

class Odrive_commandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Axis_Error = null;
      this.Axis_State = null;
      this.Active_Errors = null;
      this.Disarm_Reason = null;
      this.Pos_Estimate = null;
      this.Vel_Estimate = null;
      this.Iq_Setpoint = null;
      this.Iq_Measured = null;
      this.FET_Temperature = null;
      this.Motor_Temperature = null;
      this.Vbus_Voltage = null;
      this.Vbus_Current = null;
    }
    else {
      if (initObj.hasOwnProperty('Axis_Error')) {
        this.Axis_Error = initObj.Axis_Error
      }
      else {
        this.Axis_Error = 0;
      }
      if (initObj.hasOwnProperty('Axis_State')) {
        this.Axis_State = initObj.Axis_State
      }
      else {
        this.Axis_State = 0;
      }
      if (initObj.hasOwnProperty('Active_Errors')) {
        this.Active_Errors = initObj.Active_Errors
      }
      else {
        this.Active_Errors = 0;
      }
      if (initObj.hasOwnProperty('Disarm_Reason')) {
        this.Disarm_Reason = initObj.Disarm_Reason
      }
      else {
        this.Disarm_Reason = 0;
      }
      if (initObj.hasOwnProperty('Pos_Estimate')) {
        this.Pos_Estimate = initObj.Pos_Estimate
      }
      else {
        this.Pos_Estimate = 0;
      }
      if (initObj.hasOwnProperty('Vel_Estimate')) {
        this.Vel_Estimate = initObj.Vel_Estimate
      }
      else {
        this.Vel_Estimate = 0;
      }
      if (initObj.hasOwnProperty('Iq_Setpoint')) {
        this.Iq_Setpoint = initObj.Iq_Setpoint
      }
      else {
        this.Iq_Setpoint = 0;
      }
      if (initObj.hasOwnProperty('Iq_Measured')) {
        this.Iq_Measured = initObj.Iq_Measured
      }
      else {
        this.Iq_Measured = 0;
      }
      if (initObj.hasOwnProperty('FET_Temperature')) {
        this.FET_Temperature = initObj.FET_Temperature
      }
      else {
        this.FET_Temperature = 0;
      }
      if (initObj.hasOwnProperty('Motor_Temperature')) {
        this.Motor_Temperature = initObj.Motor_Temperature
      }
      else {
        this.Motor_Temperature = 0;
      }
      if (initObj.hasOwnProperty('Vbus_Voltage')) {
        this.Vbus_Voltage = initObj.Vbus_Voltage
      }
      else {
        this.Vbus_Voltage = 0;
      }
      if (initObj.hasOwnProperty('Vbus_Current')) {
        this.Vbus_Current = initObj.Vbus_Current
      }
      else {
        this.Vbus_Current = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odrive_commandResponse
    // Serialize message field [Axis_Error]
    bufferOffset = _serializer.int32(obj.Axis_Error, buffer, bufferOffset);
    // Serialize message field [Axis_State]
    bufferOffset = _serializer.int8(obj.Axis_State, buffer, bufferOffset);
    // Serialize message field [Active_Errors]
    bufferOffset = _serializer.int32(obj.Active_Errors, buffer, bufferOffset);
    // Serialize message field [Disarm_Reason]
    bufferOffset = _serializer.int32(obj.Disarm_Reason, buffer, bufferOffset);
    // Serialize message field [Pos_Estimate]
    bufferOffset = _serializer.int32(obj.Pos_Estimate, buffer, bufferOffset);
    // Serialize message field [Vel_Estimate]
    bufferOffset = _serializer.int32(obj.Vel_Estimate, buffer, bufferOffset);
    // Serialize message field [Iq_Setpoint]
    bufferOffset = _serializer.int32(obj.Iq_Setpoint, buffer, bufferOffset);
    // Serialize message field [Iq_Measured]
    bufferOffset = _serializer.int32(obj.Iq_Measured, buffer, bufferOffset);
    // Serialize message field [FET_Temperature]
    bufferOffset = _serializer.int32(obj.FET_Temperature, buffer, bufferOffset);
    // Serialize message field [Motor_Temperature]
    bufferOffset = _serializer.int32(obj.Motor_Temperature, buffer, bufferOffset);
    // Serialize message field [Vbus_Voltage]
    bufferOffset = _serializer.int32(obj.Vbus_Voltage, buffer, bufferOffset);
    // Serialize message field [Vbus_Current]
    bufferOffset = _serializer.int32(obj.Vbus_Current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odrive_commandResponse
    let len;
    let data = new Odrive_commandResponse(null);
    // Deserialize message field [Axis_Error]
    data.Axis_Error = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Axis_State]
    data.Axis_State = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Active_Errors]
    data.Active_Errors = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Disarm_Reason]
    data.Disarm_Reason = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Pos_Estimate]
    data.Pos_Estimate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Vel_Estimate]
    data.Vel_Estimate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Iq_Setpoint]
    data.Iq_Setpoint = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Iq_Measured]
    data.Iq_Measured = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [FET_Temperature]
    data.FET_Temperature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Motor_Temperature]
    data.Motor_Temperature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Vbus_Voltage]
    data.Vbus_Voltage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Vbus_Current]
    data.Vbus_Current = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 45;
  }

  static datatype() {
    // Returns string type for a service object
    return 'steering/Odrive_commandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3731a249632fa4e65bace96bcb5c3f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Axis_Error
    int8 Axis_State
    int32 Active_Errors
    int32 Disarm_Reason
    int32 Pos_Estimate
    int32 Vel_Estimate
    int32 Iq_Setpoint
    int32 Iq_Measured
    int32 FET_Temperature
    int32 Motor_Temperature
    int32 Vbus_Voltage
    int32 Vbus_Current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Odrive_commandResponse(null);
    if (msg.Axis_Error !== undefined) {
      resolved.Axis_Error = msg.Axis_Error;
    }
    else {
      resolved.Axis_Error = 0
    }

    if (msg.Axis_State !== undefined) {
      resolved.Axis_State = msg.Axis_State;
    }
    else {
      resolved.Axis_State = 0
    }

    if (msg.Active_Errors !== undefined) {
      resolved.Active_Errors = msg.Active_Errors;
    }
    else {
      resolved.Active_Errors = 0
    }

    if (msg.Disarm_Reason !== undefined) {
      resolved.Disarm_Reason = msg.Disarm_Reason;
    }
    else {
      resolved.Disarm_Reason = 0
    }

    if (msg.Pos_Estimate !== undefined) {
      resolved.Pos_Estimate = msg.Pos_Estimate;
    }
    else {
      resolved.Pos_Estimate = 0
    }

    if (msg.Vel_Estimate !== undefined) {
      resolved.Vel_Estimate = msg.Vel_Estimate;
    }
    else {
      resolved.Vel_Estimate = 0
    }

    if (msg.Iq_Setpoint !== undefined) {
      resolved.Iq_Setpoint = msg.Iq_Setpoint;
    }
    else {
      resolved.Iq_Setpoint = 0
    }

    if (msg.Iq_Measured !== undefined) {
      resolved.Iq_Measured = msg.Iq_Measured;
    }
    else {
      resolved.Iq_Measured = 0
    }

    if (msg.FET_Temperature !== undefined) {
      resolved.FET_Temperature = msg.FET_Temperature;
    }
    else {
      resolved.FET_Temperature = 0
    }

    if (msg.Motor_Temperature !== undefined) {
      resolved.Motor_Temperature = msg.Motor_Temperature;
    }
    else {
      resolved.Motor_Temperature = 0
    }

    if (msg.Vbus_Voltage !== undefined) {
      resolved.Vbus_Voltage = msg.Vbus_Voltage;
    }
    else {
      resolved.Vbus_Voltage = 0
    }

    if (msg.Vbus_Current !== undefined) {
      resolved.Vbus_Current = msg.Vbus_Current;
    }
    else {
      resolved.Vbus_Current = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: Odrive_commandRequest,
  Response: Odrive_commandResponse,
  md5sum() { return '82e9f30ff634c6c0e7b35b96a15643a9'; },
  datatype() { return 'steering/Odrive_command'; }
};
