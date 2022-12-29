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
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0.0;
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odrive_commandRequest
    // Serialize message field [command]
    bufferOffset = _serializer.float64(obj.command, buffer, bufferOffset);
    // Serialize message field [values]
    bufferOffset = _arraySerializer.float64(obj.values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odrive_commandRequest
    let len;
    let data = new Odrive_commandRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.values.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'steering/Odrive_commandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5790ab1847ff74173b054431da19345c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 command
    float64[] values
    
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

    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
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
  md5sum() { return '58b88c37419d5be4e900c845f70ccf1e'; },
  datatype() { return 'steering/Odrive_command'; }
};
