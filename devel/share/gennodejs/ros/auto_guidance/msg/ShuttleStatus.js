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

class ShuttleStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_code = null;
      this.encoder_speed = null;
      this.initialization_status = null;
      this.charging_level = null;
    }
    else {
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('encoder_speed')) {
        this.encoder_speed = initObj.encoder_speed
      }
      else {
        this.encoder_speed = 0;
      }
      if (initObj.hasOwnProperty('initialization_status')) {
        this.initialization_status = initObj.initialization_status
      }
      else {
        this.initialization_status = false;
      }
      if (initObj.hasOwnProperty('charging_level')) {
        this.charging_level = initObj.charging_level
      }
      else {
        this.charging_level = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShuttleStatus
    // Serialize message field [error_code]
    bufferOffset = _serializer.int8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [encoder_speed]
    bufferOffset = _serializer.int16(obj.encoder_speed, buffer, bufferOffset);
    // Serialize message field [initialization_status]
    bufferOffset = _serializer.bool(obj.initialization_status, buffer, bufferOffset);
    // Serialize message field [charging_level]
    bufferOffset = _serializer.int8(obj.charging_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShuttleStatus
    let len;
    let data = new ShuttleStatus(null);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [encoder_speed]
    data.encoder_speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [initialization_status]
    data.initialization_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charging_level]
    data.charging_level = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_guidance/ShuttleStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '887f812576610bde86685cae1b654708';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Shuttle Status 
    
    int8 error_code
    int16 encoder_speed
    bool initialization_status
    int8 charging_level
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShuttleStatus(null);
    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.encoder_speed !== undefined) {
      resolved.encoder_speed = msg.encoder_speed;
    }
    else {
      resolved.encoder_speed = 0
    }

    if (msg.initialization_status !== undefined) {
      resolved.initialization_status = msg.initialization_status;
    }
    else {
      resolved.initialization_status = false
    }

    if (msg.charging_level !== undefined) {
      resolved.charging_level = msg.charging_level;
    }
    else {
      resolved.charging_level = 0
    }

    return resolved;
    }
};

module.exports = ShuttleStatus;
