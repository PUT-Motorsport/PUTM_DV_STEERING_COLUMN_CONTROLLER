// Generated by gencpp from file steering/Odrive_commandResponse.msg
// DO NOT EDIT!


#ifndef STEERING_MESSAGE_ODRIVE_COMMANDRESPONSE_H
#define STEERING_MESSAGE_ODRIVE_COMMANDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace steering
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





  typedef boost::shared_ptr< ::steering::Odrive_commandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::steering::Odrive_commandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Odrive_commandResponse_

typedef ::steering::Odrive_commandResponse_<std::allocator<void> > Odrive_commandResponse;

typedef boost::shared_ptr< ::steering::Odrive_commandResponse > Odrive_commandResponsePtr;
typedef boost::shared_ptr< ::steering::Odrive_commandResponse const> Odrive_commandResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::steering::Odrive_commandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::steering::Odrive_commandResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::steering::Odrive_commandResponse_<ContainerAllocator1> & lhs, const ::steering::Odrive_commandResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::steering::Odrive_commandResponse_<ContainerAllocator1> & lhs, const ::steering::Odrive_commandResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace steering

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::steering::Odrive_commandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steering::Odrive_commandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steering::Odrive_commandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steering::Odrive_commandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steering::Odrive_commandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steering::Odrive_commandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::steering::Odrive_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a2f37ef2ba405f0c7a15cc72663d6f0";
  }

  static const char* value(const ::steering::Odrive_commandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a2f37ef2ba405f0ULL;
  static const uint64_t static_value2 = 0xc7a15cc72663d6f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::steering::Odrive_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "steering/Odrive_commandResponse";
  }

  static const char* value(const ::steering::Odrive_commandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::steering::Odrive_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 state\n"
;
  }

  static const char* value(const ::steering::Odrive_commandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::steering::Odrive_commandResponse_<ContainerAllocator> >
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
struct Printer< ::steering::Odrive_commandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::steering::Odrive_commandResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STEERING_MESSAGE_ODRIVE_COMMANDRESPONSE_H
