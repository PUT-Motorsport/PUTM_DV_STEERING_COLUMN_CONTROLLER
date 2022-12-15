// Generated by gencpp from file respond/Odrive_commandResponse.msg
// DO NOT EDIT!


#ifndef RESPOND_MESSAGE_ODRIVE_COMMANDRESPONSE_H
#define RESPOND_MESSAGE_ODRIVE_COMMANDRESPONSE_H


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
struct Odrive_commandResponse_
{
  typedef Odrive_commandResponse_<ContainerAllocator> Type;

  Odrive_commandResponse_()
    : state(0)  {
    }
  Odrive_commandResponse_(const ContainerAllocator& _alloc)
    : state(0)  {
  (void)_alloc;
    }



   typedef int32_t _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::respond::Odrive_commandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::respond::Odrive_commandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Odrive_commandResponse_

typedef ::respond::Odrive_commandResponse_<std::allocator<void> > Odrive_commandResponse;

typedef boost::shared_ptr< ::respond::Odrive_commandResponse > Odrive_commandResponsePtr;
typedef boost::shared_ptr< ::respond::Odrive_commandResponse const> Odrive_commandResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::respond::Odrive_commandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::respond::Odrive_commandResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::respond::Odrive_commandResponse_<ContainerAllocator1> & lhs, const ::respond::Odrive_commandResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::respond::Odrive_commandResponse_<ContainerAllocator1> & lhs, const ::respond::Odrive_commandResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace respond

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::respond::Odrive_commandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::respond::Odrive_commandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::respond::Odrive_commandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::respond::Odrive_commandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::respond::Odrive_commandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::respond::Odrive_commandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::respond::Odrive_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a2f37ef2ba405f0c7a15cc72663d6f0";
  }

  static const char* value(const ::respond::Odrive_commandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a2f37ef2ba405f0ULL;
  static const uint64_t static_value2 = 0xc7a15cc72663d6f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::respond::Odrive_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "respond/Odrive_commandResponse";
  }

  static const char* value(const ::respond::Odrive_commandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::respond::Odrive_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 state\n"
;
  }

  static const char* value(const ::respond::Odrive_commandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::respond::Odrive_commandResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Odrive_commandResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::respond::Odrive_commandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::respond::Odrive_commandResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RESPOND_MESSAGE_ODRIVE_COMMANDRESPONSE_H
