// Auto-generated. Do not edit!

// (in-package package_rostocan.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WheelTemp_main {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheelTemp0 = null;
      this.wheelTemp1 = null;
      this.wheelTemp2 = null;
      this.wheelTemp3 = null;
      this.wheelTemp4 = null;
      this.wheelTemp5 = null;
      this.wheelTemp6 = null;
      this.wheelTemp7 = null;
    }
    else {
      if (initObj.hasOwnProperty('wheelTemp0')) {
        this.wheelTemp0 = initObj.wheelTemp0
      }
      else {
        this.wheelTemp0 = 0;
      }
      if (initObj.hasOwnProperty('wheelTemp1')) {
        this.wheelTemp1 = initObj.wheelTemp1
      }
      else {
        this.wheelTemp1 = 0;
      }
      if (initObj.hasOwnProperty('wheelTemp2')) {
        this.wheelTemp2 = initObj.wheelTemp2
      }
      else {
        this.wheelTemp2 = 0;
      }
      if (initObj.hasOwnProperty('wheelTemp3')) {
        this.wheelTemp3 = initObj.wheelTemp3
      }
      else {
        this.wheelTemp3 = 0;
      }
      if (initObj.hasOwnProperty('wheelTemp4')) {
        this.wheelTemp4 = initObj.wheelTemp4
      }
      else {
        this.wheelTemp4 = 0;
      }
      if (initObj.hasOwnProperty('wheelTemp5')) {
        this.wheelTemp5 = initObj.wheelTemp5
      }
      else {
        this.wheelTemp5 = 0;
      }
      if (initObj.hasOwnProperty('wheelTemp6')) {
        this.wheelTemp6 = initObj.wheelTemp6
      }
      else {
        this.wheelTemp6 = 0;
      }
      if (initObj.hasOwnProperty('wheelTemp7')) {
        this.wheelTemp7 = initObj.wheelTemp7
      }
      else {
        this.wheelTemp7 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelTemp_main
    // Serialize message field [wheelTemp0]
    bufferOffset = _serializer.uint8(obj.wheelTemp0, buffer, bufferOffset);
    // Serialize message field [wheelTemp1]
    bufferOffset = _serializer.uint8(obj.wheelTemp1, buffer, bufferOffset);
    // Serialize message field [wheelTemp2]
    bufferOffset = _serializer.uint8(obj.wheelTemp2, buffer, bufferOffset);
    // Serialize message field [wheelTemp3]
    bufferOffset = _serializer.uint8(obj.wheelTemp3, buffer, bufferOffset);
    // Serialize message field [wheelTemp4]
    bufferOffset = _serializer.uint8(obj.wheelTemp4, buffer, bufferOffset);
    // Serialize message field [wheelTemp5]
    bufferOffset = _serializer.uint8(obj.wheelTemp5, buffer, bufferOffset);
    // Serialize message field [wheelTemp6]
    bufferOffset = _serializer.uint8(obj.wheelTemp6, buffer, bufferOffset);
    // Serialize message field [wheelTemp7]
    bufferOffset = _serializer.uint8(obj.wheelTemp7, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelTemp_main
    let len;
    let data = new WheelTemp_main(null);
    // Deserialize message field [wheelTemp0]
    data.wheelTemp0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheelTemp1]
    data.wheelTemp1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheelTemp2]
    data.wheelTemp2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheelTemp3]
    data.wheelTemp3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheelTemp4]
    data.wheelTemp4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheelTemp5]
    data.wheelTemp5 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheelTemp6]
    data.wheelTemp6 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheelTemp7]
    data.wheelTemp7 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'package_rostocan/WheelTemp_main';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c711a199bb8f11b65e72f22df1be55d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 wheelTemp0
    uint8 wheelTemp1
    uint8 wheelTemp2
    uint8 wheelTemp3
    uint8 wheelTemp4
    uint8 wheelTemp5
    uint8 wheelTemp6
    uint8 wheelTemp7
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelTemp_main(null);
    if (msg.wheelTemp0 !== undefined) {
      resolved.wheelTemp0 = msg.wheelTemp0;
    }
    else {
      resolved.wheelTemp0 = 0
    }

    if (msg.wheelTemp1 !== undefined) {
      resolved.wheelTemp1 = msg.wheelTemp1;
    }
    else {
      resolved.wheelTemp1 = 0
    }

    if (msg.wheelTemp2 !== undefined) {
      resolved.wheelTemp2 = msg.wheelTemp2;
    }
    else {
      resolved.wheelTemp2 = 0
    }

    if (msg.wheelTemp3 !== undefined) {
      resolved.wheelTemp3 = msg.wheelTemp3;
    }
    else {
      resolved.wheelTemp3 = 0
    }

    if (msg.wheelTemp4 !== undefined) {
      resolved.wheelTemp4 = msg.wheelTemp4;
    }
    else {
      resolved.wheelTemp4 = 0
    }

    if (msg.wheelTemp5 !== undefined) {
      resolved.wheelTemp5 = msg.wheelTemp5;
    }
    else {
      resolved.wheelTemp5 = 0
    }

    if (msg.wheelTemp6 !== undefined) {
      resolved.wheelTemp6 = msg.wheelTemp6;
    }
    else {
      resolved.wheelTemp6 = 0
    }

    if (msg.wheelTemp7 !== undefined) {
      resolved.wheelTemp7 = msg.wheelTemp7;
    }
    else {
      resolved.wheelTemp7 = 0
    }

    return resolved;
    }
};

module.exports = WheelTemp_main;
