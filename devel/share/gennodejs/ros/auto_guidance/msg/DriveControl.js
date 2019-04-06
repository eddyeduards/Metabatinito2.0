// Auto-generated. Do not edit!

// (in-package auto_guidance.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DriveControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.steering_angle = null;
      this.emergency_stop = null;
      this.sound_alarm = null;
      this.current_postion = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('steering_angle')) {
        this.steering_angle = initObj.steering_angle
      }
      else {
        this.steering_angle = 0;
      }
      if (initObj.hasOwnProperty('emergency_stop')) {
        this.emergency_stop = initObj.emergency_stop
      }
      else {
        this.emergency_stop = false;
      }
      if (initObj.hasOwnProperty('sound_alarm')) {
        this.sound_alarm = initObj.sound_alarm
      }
      else {
        this.sound_alarm = false;
      }
      if (initObj.hasOwnProperty('current_postion')) {
        this.current_postion = initObj.current_postion
      }
      else {
        this.current_postion = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveControl
    // Serialize message field [speed]
    bufferOffset = _serializer.int16(obj.speed, buffer, bufferOffset);
    // Serialize message field [steering_angle]
    bufferOffset = _serializer.int8(obj.steering_angle, buffer, bufferOffset);
    // Serialize message field [emergency_stop]
    bufferOffset = _serializer.bool(obj.emergency_stop, buffer, bufferOffset);
    // Serialize message field [sound_alarm]
    bufferOffset = _serializer.bool(obj.sound_alarm, buffer, bufferOffset);
    // Serialize message field [current_postion]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.current_postion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveControl
    let len;
    let data = new DriveControl(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [steering_angle]
    data.steering_angle = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [emergency_stop]
    data.emergency_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sound_alarm]
    data.sound_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [current_postion]
    data.current_postion = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_guidance/DriveControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e24a1cda9a8add832facf1b2049fde3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 speed
    int8 steering_angle
    bool emergency_stop
    bool sound_alarm
    geometry_msgs/Pose current_postion 
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriveControl(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.steering_angle !== undefined) {
      resolved.steering_angle = msg.steering_angle;
    }
    else {
      resolved.steering_angle = 0
    }

    if (msg.emergency_stop !== undefined) {
      resolved.emergency_stop = msg.emergency_stop;
    }
    else {
      resolved.emergency_stop = false
    }

    if (msg.sound_alarm !== undefined) {
      resolved.sound_alarm = msg.sound_alarm;
    }
    else {
      resolved.sound_alarm = false
    }

    if (msg.current_postion !== undefined) {
      resolved.current_postion = geometry_msgs.msg.Pose.Resolve(msg.current_postion)
    }
    else {
      resolved.current_postion = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = DriveControl;
