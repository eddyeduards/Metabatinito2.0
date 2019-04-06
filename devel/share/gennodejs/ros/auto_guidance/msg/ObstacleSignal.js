// Auto-generated. Do not edit!

// (in-package auto_guidance.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ObstacleSignal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front = null;
      this.right = null;
      this.left = null;
      this.back = null;
      this.front_tof = null;
      this.f45r = null;
      this.f45l = null;
      this.fixed_point_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = 0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('back')) {
        this.back = initObj.back
      }
      else {
        this.back = 0;
      }
      if (initObj.hasOwnProperty('front_tof')) {
        this.front_tof = initObj.front_tof
      }
      else {
        this.front_tof = 0;
      }
      if (initObj.hasOwnProperty('f45r')) {
        this.f45r = initObj.f45r
      }
      else {
        this.f45r = 0;
      }
      if (initObj.hasOwnProperty('f45l')) {
        this.f45l = initObj.f45l
      }
      else {
        this.f45l = 0;
      }
      if (initObj.hasOwnProperty('fixed_point_flag')) {
        this.fixed_point_flag = initObj.fixed_point_flag
      }
      else {
        this.fixed_point_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleSignal
    // Serialize message field [front]
    bufferOffset = _serializer.int8(obj.front, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.int8(obj.right, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.int8(obj.left, buffer, bufferOffset);
    // Serialize message field [back]
    bufferOffset = _serializer.int8(obj.back, buffer, bufferOffset);
    // Serialize message field [front_tof]
    bufferOffset = _serializer.int8(obj.front_tof, buffer, bufferOffset);
    // Serialize message field [f45r]
    bufferOffset = _serializer.int8(obj.f45r, buffer, bufferOffset);
    // Serialize message field [f45l]
    bufferOffset = _serializer.int8(obj.f45l, buffer, bufferOffset);
    // Serialize message field [fixed_point_flag]
    bufferOffset = _serializer.bool(obj.fixed_point_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleSignal
    let len;
    let data = new ObstacleSignal(null);
    // Deserialize message field [front]
    data.front = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [back]
    data.back = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [front_tof]
    data.front_tof = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [f45r]
    data.f45r = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [f45l]
    data.f45l = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [fixed_point_flag]
    data.fixed_point_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_guidance/ObstacleSignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b529d4bcafe31815ba1c9b2c75468bf6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int8 front
    int8 right
    int8 left
    int8 back
    int8 front_tof
    int8 f45r
    int8 f45l
    bool fixed_point_flag
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleSignal(null);
    if (msg.front !== undefined) {
      resolved.front = msg.front;
    }
    else {
      resolved.front = 0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.back !== undefined) {
      resolved.back = msg.back;
    }
    else {
      resolved.back = 0
    }

    if (msg.front_tof !== undefined) {
      resolved.front_tof = msg.front_tof;
    }
    else {
      resolved.front_tof = 0
    }

    if (msg.f45r !== undefined) {
      resolved.f45r = msg.f45r;
    }
    else {
      resolved.f45r = 0
    }

    if (msg.f45l !== undefined) {
      resolved.f45l = msg.f45l;
    }
    else {
      resolved.f45l = 0
    }

    if (msg.fixed_point_flag !== undefined) {
      resolved.fixed_point_flag = msg.fixed_point_flag;
    }
    else {
      resolved.fixed_point_flag = false
    }

    return resolved;
    }
};

module.exports = ObstacleSignal;
