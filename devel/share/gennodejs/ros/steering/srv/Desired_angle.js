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

class Desired_angleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desired_steer_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('desired_steer_angle')) {
        this.desired_steer_angle = initObj.desired_steer_angle
      }
      else {
        this.desired_steer_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Desired_angleRequest
    // Serialize message field [desired_steer_angle]
    bufferOffset = _serializer.float32(obj.desired_steer_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Desired_angleRequest
    let len;
    let data = new Desired_angleRequest(null);
    // Deserialize message field [desired_steer_angle]
    data.desired_steer_angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'steering/Desired_angleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2197e575cb23de9c7e90371a9aa2af61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 desired_steer_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Desired_angleRequest(null);
    if (msg.desired_steer_angle !== undefined) {
      resolved.desired_steer_angle = msg.desired_steer_angle;
    }
    else {
      resolved.desired_steer_angle = 0.0
    }

    return resolved;
    }
};

class Desired_angleResponse {
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
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Desired_angleResponse
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Desired_angleResponse
    let len;
    let data = new Desired_angleResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'steering/Desired_angleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '001fde3cab9e313a150416ff09c08ee4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Desired_angleResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

module.exports = {
  Request: Desired_angleRequest,
  Response: Desired_angleResponse,
  md5sum() { return 'c078a45d2f024e16d451d0b873075ade'; },
  datatype() { return 'steering/Desired_angle'; }
};
