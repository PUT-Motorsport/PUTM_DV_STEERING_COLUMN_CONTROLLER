// Auto-generated. Do not edit!

// (in-package steering.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class input_mode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.input_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('input_mode')) {
        this.input_mode = initObj.input_mode
      }
      else {
        this.input_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type input_mode
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [input_mode]
    bufferOffset = _serializer.int32(obj.input_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type input_mode
    let len;
    let data = new input_mode(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [input_mode]
    data.input_mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'steering/input_mode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c66a5f62b7a0de9706717ec3def6b7d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 input_mode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new input_mode(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.input_mode !== undefined) {
      resolved.input_mode = msg.input_mode;
    }
    else {
      resolved.input_mode = 0
    }

    return resolved;
    }
};

module.exports = input_mode;
