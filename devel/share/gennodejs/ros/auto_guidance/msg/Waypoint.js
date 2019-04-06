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

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_docking = null;
      this.emergency_stop = null;
      this.sound_alarm = null;
      this.next_waypoint = null;
    }
    else {
      if (initObj.hasOwnProperty('is_docking')) {
        this.is_docking = initObj.is_docking
      }
      else {
        this.is_docking = false;
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
      if (initObj.hasOwnProperty('next_waypoint')) {
        this.next_waypoint = initObj.next_waypoint
      }
      else {
        this.next_waypoint = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Serialize message field [is_docking]
    bufferOffset = _serializer.bool(obj.is_docking, buffer, bufferOffset);
    // Serialize message field [emergency_stop]
    bufferOffset = _serializer.bool(obj.emergency_stop, buffer, bufferOffset);
    // Serialize message field [sound_alarm]
    bufferOffset = _serializer.bool(obj.sound_alarm, buffer, bufferOffset);
    // Serialize message field [next_waypoint]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.next_waypoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [is_docking]
    data.is_docking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency_stop]
    data.emergency_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sound_alarm]
    data.sound_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [next_waypoint]
    data.next_waypoint = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 59;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_guidance/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33b500f863be8e9520c2ee5c02322066';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_docking
    bool emergency_stop
    bool sound_alarm
    geometry_msgs/Pose next_waypoint
    
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
    const resolved = new Waypoint(null);
    if (msg.is_docking !== undefined) {
      resolved.is_docking = msg.is_docking;
    }
    else {
      resolved.is_docking = false
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

    if (msg.next_waypoint !== undefined) {
      resolved.next_waypoint = geometry_msgs.msg.Pose.Resolve(msg.next_waypoint)
    }
    else {
      resolved.next_waypoint = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = Waypoint;
