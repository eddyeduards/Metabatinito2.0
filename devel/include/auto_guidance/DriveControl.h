// Generated by gencpp from file auto_guidance/DriveControl.msg
// DO NOT EDIT!


#ifndef AUTO_GUIDANCE_MESSAGE_DRIVECONTROL_H
#define AUTO_GUIDANCE_MESSAGE_DRIVECONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace auto_guidance
{
template <class ContainerAllocator>
struct DriveControl_
{
  typedef DriveControl_<ContainerAllocator> Type;

  DriveControl_()
    : speed(0)
    , steering_angle(0)
    , emergency_stop(false)
    , sound_alarm(false)
    , current_postion()  {
    }
  DriveControl_(const ContainerAllocator& _alloc)
    : speed(0)
    , steering_angle(0)
    , emergency_stop(false)
    , sound_alarm(false)
    , current_postion(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _speed_type;
  _speed_type speed;

   typedef int8_t _steering_angle_type;
  _steering_angle_type steering_angle;

   typedef uint8_t _emergency_stop_type;
  _emergency_stop_type emergency_stop;

   typedef uint8_t _sound_alarm_type;
  _sound_alarm_type sound_alarm;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _current_postion_type;
  _current_postion_type current_postion;





  typedef boost::shared_ptr< ::auto_guidance::DriveControl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_guidance::DriveControl_<ContainerAllocator> const> ConstPtr;

}; // struct DriveControl_

typedef ::auto_guidance::DriveControl_<std::allocator<void> > DriveControl;

typedef boost::shared_ptr< ::auto_guidance::DriveControl > DriveControlPtr;
typedef boost::shared_ptr< ::auto_guidance::DriveControl const> DriveControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_guidance::DriveControl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_guidance::DriveControl_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace auto_guidance

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'auto_guidance': ['/home/ubuntu/ros_ws/src/auto_guidance/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::auto_guidance::DriveControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_guidance::DriveControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_guidance::DriveControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_guidance::DriveControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_guidance::DriveControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_guidance::DriveControl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_guidance::DriveControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e24a1cda9a8add832facf1b2049fde3";
  }

  static const char* value(const ::auto_guidance::DriveControl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e24a1cda9a8add8ULL;
  static const uint64_t static_value2 = 0x32facf1b2049fde3ULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_guidance::DriveControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_guidance/DriveControl";
  }

  static const char* value(const ::auto_guidance::DriveControl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_guidance::DriveControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 speed\n\
int8 steering_angle\n\
bool emergency_stop\n\
bool sound_alarm\n\
geometry_msgs/Pose current_postion \n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::auto_guidance::DriveControl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_guidance::DriveControl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed);
      stream.next(m.steering_angle);
      stream.next(m.emergency_stop);
      stream.next(m.sound_alarm);
      stream.next(m.current_postion);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DriveControl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_guidance::DriveControl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_guidance::DriveControl_<ContainerAllocator>& v)
  {
    s << indent << "speed: ";
    Printer<int16_t>::stream(s, indent + "  ", v.speed);
    s << indent << "steering_angle: ";
    Printer<int8_t>::stream(s, indent + "  ", v.steering_angle);
    s << indent << "emergency_stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.emergency_stop);
    s << indent << "sound_alarm: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sound_alarm);
    s << indent << "current_postion: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.current_postion);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_GUIDANCE_MESSAGE_DRIVECONTROL_H
