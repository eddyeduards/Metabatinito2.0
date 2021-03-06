// Generated by gencpp from file auto_guidance/ShuttleStatus.msg
// DO NOT EDIT!


#ifndef AUTO_GUIDANCE_MESSAGE_SHUTTLESTATUS_H
#define AUTO_GUIDANCE_MESSAGE_SHUTTLESTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace auto_guidance
{
template <class ContainerAllocator>
struct ShuttleStatus_
{
  typedef ShuttleStatus_<ContainerAllocator> Type;

  ShuttleStatus_()
    : error_code(0)
    , encoder_speed(0)
    , initialization_status(false)
    , charging_level(0)  {
    }
  ShuttleStatus_(const ContainerAllocator& _alloc)
    : error_code(0)
    , encoder_speed(0)
    , initialization_status(false)
    , charging_level(0)  {
  (void)_alloc;
    }



   typedef int8_t _error_code_type;
  _error_code_type error_code;

   typedef int16_t _encoder_speed_type;
  _encoder_speed_type encoder_speed;

   typedef uint8_t _initialization_status_type;
  _initialization_status_type initialization_status;

   typedef int8_t _charging_level_type;
  _charging_level_type charging_level;





  typedef boost::shared_ptr< ::auto_guidance::ShuttleStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auto_guidance::ShuttleStatus_<ContainerAllocator> const> ConstPtr;

}; // struct ShuttleStatus_

typedef ::auto_guidance::ShuttleStatus_<std::allocator<void> > ShuttleStatus;

typedef boost::shared_ptr< ::auto_guidance::ShuttleStatus > ShuttleStatusPtr;
typedef boost::shared_ptr< ::auto_guidance::ShuttleStatus const> ShuttleStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::auto_guidance::ShuttleStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::auto_guidance::ShuttleStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::auto_guidance::ShuttleStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::auto_guidance::ShuttleStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_guidance::ShuttleStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::auto_guidance::ShuttleStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_guidance::ShuttleStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::auto_guidance::ShuttleStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::auto_guidance::ShuttleStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "887f812576610bde86685cae1b654708";
  }

  static const char* value(const ::auto_guidance::ShuttleStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x887f812576610bdeULL;
  static const uint64_t static_value2 = 0x86685cae1b654708ULL;
};

template<class ContainerAllocator>
struct DataType< ::auto_guidance::ShuttleStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "auto_guidance/ShuttleStatus";
  }

  static const char* value(const ::auto_guidance::ShuttleStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::auto_guidance::ShuttleStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Shuttle Status \n\
\n\
int8 error_code\n\
int16 encoder_speed\n\
bool initialization_status\n\
int8 charging_level\n\
";
  }

  static const char* value(const ::auto_guidance::ShuttleStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::auto_guidance::ShuttleStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.error_code);
      stream.next(m.encoder_speed);
      stream.next(m.initialization_status);
      stream.next(m.charging_level);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ShuttleStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auto_guidance::ShuttleStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::auto_guidance::ShuttleStatus_<ContainerAllocator>& v)
  {
    s << indent << "error_code: ";
    Printer<int8_t>::stream(s, indent + "  ", v.error_code);
    s << indent << "encoder_speed: ";
    Printer<int16_t>::stream(s, indent + "  ", v.encoder_speed);
    s << indent << "initialization_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.initialization_status);
    s << indent << "charging_level: ";
    Printer<int8_t>::stream(s, indent + "  ", v.charging_level);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTO_GUIDANCE_MESSAGE_SHUTTLESTATUS_H
