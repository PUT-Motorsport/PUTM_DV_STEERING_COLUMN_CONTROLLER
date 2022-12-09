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
      this.send_command = null;
    }
    else {
      if (initObj.hasOwnProperty('send_command')) {
        this.send_command = initObj.send_command
      }
      else {
        this.send_command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odrive_commandRequest
    // Serialize message field [send_command]
    bufferOffset = _serializer.int32(obj.send_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odrive_commandRequest
    let len;
    let data = new Odrive_commandRequest(null);
    // Deserialize message field [send_command]
    data.send_command = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'steering/Odrive_commandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '318ccb9b7dd0c12ef8e53afc5d8ee6d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 send_command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Odrive_commandRequest(null);
    if (msg.send_command !== undefined) {
      resolved.send_command = msg.send_command;
    }
    else {
      resolved.send_command = 0
    }

    return resolved;
    }
};

class Odrive_commandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odrive_commandResponse
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odrive_commandResponse
    let len;
    let data = new Odrive_commandResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'steering/Odrive_commandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a2f37ef2ba405f0c7a15cc72663d6f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Odrive_commandResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: Odrive_commandRequest,
  Response: Odrive_commandResponse,
  md5sum() { return 'f759aa4a1410da240c4e7c85431387ba'; },
  datatype() { return 'steering/Odrive_command'; }
};
