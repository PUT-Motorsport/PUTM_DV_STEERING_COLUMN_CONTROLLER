// Generated by gencpp from file respond/Steering_loopFeedback.msg
// DO NOT EDIT!


#ifndef RESPOND_MESSAGE_STEERING_LOOPFEEDBACK_H
#define RESPOND_MESSAGE_STEERING_LOOPFEEDBACK_H


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
struct Steering_loopFeedback_
{
  typedef Steering_loopFeedback_<ContainerAllocator> Type;

  Steering_loopFeedback_()
    : current_position(0.0)  {
    }
  Steering_loopFeedback_(const ContainerAllocator& _alloc)
    : current_position(0.0)  {
  (void)_alloc;
    }



   typedef float _current_position_type;
  _current_position_type current_position;





  typedef boost::shared_ptr< ::respond::Steering_loopFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::respond::Steering_loopFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct Steering_loopFeedback_

typedef ::respond::Steering_loopFeedback_<std::allocator<void> > Steering_loopFeedback;

typedef boost::shared_ptr< ::respond::Steering_loopFeedback > Steering_loopFeedbackPtr;
typedef boost::shared_ptr< ::respond::Steering_loopFeedback const> Steering_loopFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::respond::Steering_loopFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::respond::Steering_loopFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::respond::Steering_loopFeedback_<ContainerAllocator1> & lhs, const ::respond::Steering_loopFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.current_position == rhs.current_position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::respond::Steering_loopFeedback_<ContainerAllocator1> & lhs, const ::respond::Steering_loopFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace respond

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::respond::Steering_loopFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::respond::Steering_loopFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::respond::Steering_loopFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::respond::Steering_loopFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::respond::Steering_loopFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::respond::Steering_loopFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::respond::Steering_loopFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a447468e6d196264c01d04f925289e8a";
  }

  static const char* value(const ::respond::Steering_loopFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa447468e6d196264ULL;
  static const uint64_t static_value2 = 0xc01d04f925289e8aULL;
};

template<class ContainerAllocator>
struct DataType< ::respond::Steering_loopFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "respond/Steering_loopFeedback";
  }

  static const char* value(const ::respond::Steering_loopFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::respond::Steering_loopFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"float32 current_position\n"
;
  }

  static const char* value(const ::respond::Steering_loopFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::respond::Steering_loopFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Steering_loopFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::respond::Steering_loopFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::respond::Steering_loopFeedback_<ContainerAllocator>& v)
  {
    s << indent << "current_position: ";
    Printer<float>::stream(s, indent + "  ", v.current_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RESPOND_MESSAGE_STEERING_LOOPFEEDBACK_H
