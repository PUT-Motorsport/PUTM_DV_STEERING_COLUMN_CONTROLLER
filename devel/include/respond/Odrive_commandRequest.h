// Generated by gencpp from file respond/Odrive_commandRequest.msg
// DO NOT EDIT!


#ifndef RESPOND_MESSAGE_ODRIVE_COMMANDREQUEST_H
#define RESPOND_MESSAGE_ODRIVE_COMMANDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace respond
{
template <class ContainerAllocator>
struct Odrive_commandRequest_
{
  typedef Odrive_commandRequest_<ContainerAllocator> Type;

  Odrive_commandRequest_()
    : command(0)
    , value(0)  {
    }
  Odrive_commandRequest_(const ContainerAllocator& _alloc)
    : command(0)
    , value(0)  {
  (void)_alloc;
    }



   typedef int32_t _command_type;
  _command_type command;

   typedef int32_t _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::respond::Odrive_commandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::respond::Odrive_commandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Odrive_commandRequest_

typedef ::respond::Odrive_commandRequest_<std::allocator<void> > Odrive_commandRequest;

typedef boost::shared_ptr< ::respond::Odrive_commandRequest > Odrive_commandRequestPtr;
typedef boost::shared_ptr< ::respond::Odrive_commandRequest const> Odrive_commandRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::respond::Odrive_commandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::respond::Odrive_commandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::respond::Odrive_commandRequest_<ContainerAllocator1> & lhs, const ::respond::Odrive_commandRequest_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::respond::Odrive_commandRequest_<ContainerAllocator1> & lhs, const ::respond::Odrive_commandRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace respond

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::respond::Odrive_commandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::respond::Odrive_commandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::respond::Odrive_commandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::respond::Odrive_commandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::respond::Odrive_commandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::respond::Odrive_commandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::respond::Odrive_commandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ae937ab698a9cfa4cc9e4ad44e65496f";
  }

  static const char* value(const ::respond::Odrive_commandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xae937ab698a9cfa4ULL;
  static const uint64_t static_value2 = 0xcc9e4ad44e65496fULL;
};

template<class ContainerAllocator>
struct DataType< ::respond::Odrive_commandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "respond/Odrive_commandRequest";
  }

  static const char* value(const ::respond::Odrive_commandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::respond::Odrive_commandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 command\n"
"int32 value\n"
;
  }

  static const char* value(const ::respond::Odrive_commandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::respond::Odrive_commandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Odrive_commandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::respond::Odrive_commandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::respond::Odrive_commandRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<int32_t>::stream(s, indent + "  ", v.command);
    s << indent << "value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RESPOND_MESSAGE_ODRIVE_COMMANDREQUEST_H
