# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auto_guidance/DriveControl.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class DriveControl(genpy.Message):
  _md5sum = "4e24a1cda9a8add832facf1b2049fde3"
  _type = "auto_guidance/DriveControl"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 speed
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
"""
  __slots__ = ['speed','steering_angle','emergency_stop','sound_alarm','current_postion']
  _slot_types = ['int16','int8','bool','bool','geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       speed,steering_angle,emergency_stop,sound_alarm,current_postion

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DriveControl, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.speed is None:
        self.speed = 0
      if self.steering_angle is None:
        self.steering_angle = 0
      if self.emergency_stop is None:
        self.emergency_stop = False
      if self.sound_alarm is None:
        self.sound_alarm = False
      if self.current_postion is None:
        self.current_postion = geometry_msgs.msg.Pose()
    else:
      self.speed = 0
      self.steering_angle = 0
      self.emergency_stop = False
      self.sound_alarm = False
      self.current_postion = geometry_msgs.msg.Pose()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_hb2B7d().pack(_x.speed, _x.steering_angle, _x.emergency_stop, _x.sound_alarm, _x.current_postion.position.x, _x.current_postion.position.y, _x.current_postion.position.z, _x.current_postion.orientation.x, _x.current_postion.orientation.y, _x.current_postion.orientation.z, _x.current_postion.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.current_postion is None:
        self.current_postion = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 61
      (_x.speed, _x.steering_angle, _x.emergency_stop, _x.sound_alarm, _x.current_postion.position.x, _x.current_postion.position.y, _x.current_postion.position.z, _x.current_postion.orientation.x, _x.current_postion.orientation.y, _x.current_postion.orientation.z, _x.current_postion.orientation.w,) = _get_struct_hb2B7d().unpack(str[start:end])
      self.emergency_stop = bool(self.emergency_stop)
      self.sound_alarm = bool(self.sound_alarm)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_hb2B7d().pack(_x.speed, _x.steering_angle, _x.emergency_stop, _x.sound_alarm, _x.current_postion.position.x, _x.current_postion.position.y, _x.current_postion.position.z, _x.current_postion.orientation.x, _x.current_postion.orientation.y, _x.current_postion.orientation.z, _x.current_postion.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.current_postion is None:
        self.current_postion = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 61
      (_x.speed, _x.steering_angle, _x.emergency_stop, _x.sound_alarm, _x.current_postion.position.x, _x.current_postion.position.y, _x.current_postion.position.z, _x.current_postion.orientation.x, _x.current_postion.orientation.y, _x.current_postion.orientation.z, _x.current_postion.orientation.w,) = _get_struct_hb2B7d().unpack(str[start:end])
      self.emergency_stop = bool(self.emergency_stop)
      self.sound_alarm = bool(self.sound_alarm)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_hb2B7d = None
def _get_struct_hb2B7d():
    global _struct_hb2B7d
    if _struct_hb2B7d is None:
        _struct_hb2B7d = struct.Struct("<hb2B7d")
    return _struct_hb2B7d
