// Generated by gencpp from file steering/Steering_loopGoal.msg
// DO NOT EDIT!


#ifndef STEERING_MESSAGE_STEERING_LOOPGOAL_H
#define STEERING_MESSAGE_STEERING_LOOPGOAL_H


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
struct Steering_loopGoal_
{
  typedef Steering_loopGoal_<ContainerAllocator> Type;

  Steering_loopGoal_()
    : new_position(0.0)  {
    }
  Steering_loopGoal_(const ContainerAllocator& _alloc)
    : new_position(0.0)  {
  (void)_alloc;
    }



   typedef float _new_position_type;
  _new_position_type new_position;





  typedef boost::shared_ptr< ::steering::Steering_loopGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::steering::Steering_loopGoal_<ContainerAllocator> const> ConstPtr;

}; // struct Steering_loopGoal_

typedef ::steering::Steering_loopGoal_<std::allocator<void> > Steering_loopGoal;

typedef boost::shared_ptr< ::steering::Steering_loopGoal > Steering_loopGoalPtr;
typedef boost::shared_ptr< ::steering::Steering_loopGoal const> Steering_loopGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::steering::Steering_loopGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::steering::Steering_loopGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::steering::Steering_loopGoal_<ContainerAllocator1> & lhs, const ::steering::Steering_loopGoal_<ContainerAllocator2> & rhs)
{
  return lhs.new_position == rhs.new_position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::steering::Steering_loopGoal_<ContainerAllocator1> & lhs, const ::steering::Steering_loopGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace steering

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::steering::Steering_loopGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steering::Steering_loopGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steering::Steering_loopGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steering::Steering_loopGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steering::Steering_loopGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steering::Steering_loopGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::steering::Steering_loopGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "940f1920ef9177c4320784fe9585b6e9";
  }

  static const char* value(const ::steering::Steering_loopGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x940f1920ef9177c4ULL;
  static const uint64_t static_value2 = 0x320784fe9585b6e9ULL;
};

template<class ContainerAllocator>
struct DataType< ::steering::Steering_loopGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "steering/Steering_loopGoal";
  }

  static const char* value(const ::steering::Steering_loopGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::steering::Steering_loopGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"float32 new_position  # Specify which dishwasher we want to use\n"
;
  }

  static const char* value(const ::steering::Steering_loopGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::steering::Steering_loopGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.new_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Steering_loopGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::steering::Steering_loopGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::steering::Steering_loopGoal_<ContainerAllocator>& v)
  {
    s << indent << "new_position: ";
    Printer<float>::stream(s, indent + "  ", v.new_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STEERING_MESSAGE_STEERING_LOOPGOAL_H
