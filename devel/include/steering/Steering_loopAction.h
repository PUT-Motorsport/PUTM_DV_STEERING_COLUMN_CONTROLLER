// Generated by gencpp from file steering/Steering_loopAction.msg
// DO NOT EDIT!


#ifndef STEERING_MESSAGE_STEERING_LOOPACTION_H
#define STEERING_MESSAGE_STEERING_LOOPACTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <steering/Steering_loopActionGoal.h>
#include <steering/Steering_loopActionResult.h>
#include <steering/Steering_loopActionFeedback.h>

namespace steering
{
template <class ContainerAllocator>
struct Steering_loopAction_
{
  typedef Steering_loopAction_<ContainerAllocator> Type;

  Steering_loopAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  Steering_loopAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::steering::Steering_loopActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::steering::Steering_loopActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::steering::Steering_loopActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::steering::Steering_loopAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::steering::Steering_loopAction_<ContainerAllocator> const> ConstPtr;

}; // struct Steering_loopAction_

typedef ::steering::Steering_loopAction_<std::allocator<void> > Steering_loopAction;

typedef boost::shared_ptr< ::steering::Steering_loopAction > Steering_loopActionPtr;
typedef boost::shared_ptr< ::steering::Steering_loopAction const> Steering_loopActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::steering::Steering_loopAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::steering::Steering_loopAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::steering::Steering_loopAction_<ContainerAllocator1> & lhs, const ::steering::Steering_loopAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::steering::Steering_loopAction_<ContainerAllocator1> & lhs, const ::steering::Steering_loopAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace steering

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::steering::Steering_loopAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steering::Steering_loopAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steering::Steering_loopAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steering::Steering_loopAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steering::Steering_loopAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steering::Steering_loopAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::steering::Steering_loopAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2625a0a6d9b656ede11b02ec8b0e30d5";
  }

  static const char* value(const ::steering::Steering_loopAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2625a0a6d9b656edULL;
  static const uint64_t static_value2 = 0xe11b02ec8b0e30d5ULL;
};

template<class ContainerAllocator>
struct DataType< ::steering::Steering_loopAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "steering/Steering_loopAction";
  }

  static const char* value(const ::steering::Steering_loopAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::steering::Steering_loopAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Steering_loopActionGoal action_goal\n"
"Steering_loopActionResult action_result\n"
"Steering_loopActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: steering/Steering_loopActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"Steering_loopGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: steering/Steering_loopGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"float32 new_position\n"
"\n"
"================================================================================\n"
"MSG: steering/Steering_loopActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"Steering_loopResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: steering/Steering_loopResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the result\n"
"bool movement_done\n"
"float32 result_position\n"
"\n"
"================================================================================\n"
"MSG: steering/Steering_loopActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"Steering_loopFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: steering/Steering_loopFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"float32 current_position\n"
;
  }

  static const char* value(const ::steering::Steering_loopAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::steering::Steering_loopAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Steering_loopAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::steering::Steering_loopAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::steering::Steering_loopAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::steering::Steering_loopActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::steering::Steering_loopActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::steering::Steering_loopActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STEERING_MESSAGE_STEERING_LOOPACTION_H
