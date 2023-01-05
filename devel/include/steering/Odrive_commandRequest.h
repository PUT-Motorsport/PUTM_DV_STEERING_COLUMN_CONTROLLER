// Generated by gencpp from file steering/Odrive_commandRequest.msg
// DO NOT EDIT!


#ifndef STEERING_MESSAGE_ODRIVE_COMMANDREQUEST_H
#define STEERING_MESSAGE_ODRIVE_COMMANDREQUEST_H


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
struct Odrive_commandRequest_
{
  typedef Odrive_commandRequest_<ContainerAllocator> Type;

  Odrive_commandRequest_()
    : command(0.0)
    , Axis_State(0)
    , Control_Mode(0)
    , Input_Mode(0)
    , Input_Position(0.0)
    , Input_Velocity_FF(0)
    , Input_Torque_FF(0)
    , Input_Torque(0.0)
    , Velocity_Limit(0.0)
    , Current_Limit(0.0)
    , Traj_Velocity_Limit(0.0)
    , Traj_Accel_Limit(0.0)
    , Traj_Decel_Limit(0.0)
    , Traj_Inertia(0.0)
    , Position(0.0)
    , Pos_Gain(0.0)
    , Vel_Gain(0.0)
    , Vel_Integrator_Gain(0.0)  {
    }
  Odrive_commandRequest_(const ContainerAllocator& _alloc)
    : command(0.0)
    , Axis_State(0)
    , Control_Mode(0)
    , Input_Mode(0)
    , Input_Position(0.0)
    , Input_Velocity_FF(0)
    , Input_Torque_FF(0)
    , Input_Torque(0.0)
    , Velocity_Limit(0.0)
    , Current_Limit(0.0)
    , Traj_Velocity_Limit(0.0)
    , Traj_Accel_Limit(0.0)
    , Traj_Decel_Limit(0.0)
    , Traj_Inertia(0.0)
    , Position(0.0)
    , Pos_Gain(0.0)
    , Vel_Gain(0.0)
    , Vel_Integrator_Gain(0.0)  {
  (void)_alloc;
    }



   typedef double _command_type;
  _command_type command;

   typedef int8_t _Axis_State_type;
  _Axis_State_type Axis_State;

   typedef int32_t _Control_Mode_type;
  _Control_Mode_type Control_Mode;

   typedef int32_t _Input_Mode_type;
  _Input_Mode_type Input_Mode;

   typedef float _Input_Position_type;
  _Input_Position_type Input_Position;

   typedef uint16_t _Input_Velocity_FF_type;
  _Input_Velocity_FF_type Input_Velocity_FF;

   typedef uint16_t _Input_Torque_FF_type;
  _Input_Torque_FF_type Input_Torque_FF;

   typedef float _Input_Torque_type;
  _Input_Torque_type Input_Torque;

   typedef float _Velocity_Limit_type;
  _Velocity_Limit_type Velocity_Limit;

   typedef float _Current_Limit_type;
  _Current_Limit_type Current_Limit;

   typedef float _Traj_Velocity_Limit_type;
  _Traj_Velocity_Limit_type Traj_Velocity_Limit;

   typedef float _Traj_Accel_Limit_type;
  _Traj_Accel_Limit_type Traj_Accel_Limit;

   typedef float _Traj_Decel_Limit_type;
  _Traj_Decel_Limit_type Traj_Decel_Limit;

   typedef float _Traj_Inertia_type;
  _Traj_Inertia_type Traj_Inertia;

   typedef float _Position_type;
  _Position_type Position;

   typedef float _Pos_Gain_type;
  _Pos_Gain_type Pos_Gain;

   typedef float _Vel_Gain_type;
  _Vel_Gain_type Vel_Gain;

   typedef float _Vel_Integrator_Gain_type;
  _Vel_Integrator_Gain_type Vel_Integrator_Gain;





  typedef boost::shared_ptr< ::steering::Odrive_commandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::steering::Odrive_commandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Odrive_commandRequest_

typedef ::steering::Odrive_commandRequest_<std::allocator<void> > Odrive_commandRequest;

typedef boost::shared_ptr< ::steering::Odrive_commandRequest > Odrive_commandRequestPtr;
typedef boost::shared_ptr< ::steering::Odrive_commandRequest const> Odrive_commandRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::steering::Odrive_commandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::steering::Odrive_commandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::steering::Odrive_commandRequest_<ContainerAllocator1> & lhs, const ::steering::Odrive_commandRequest_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command &&
    lhs.Axis_State == rhs.Axis_State &&
    lhs.Control_Mode == rhs.Control_Mode &&
    lhs.Input_Mode == rhs.Input_Mode &&
    lhs.Input_Position == rhs.Input_Position &&
    lhs.Input_Velocity_FF == rhs.Input_Velocity_FF &&
    lhs.Input_Torque_FF == rhs.Input_Torque_FF &&
    lhs.Input_Torque == rhs.Input_Torque &&
    lhs.Velocity_Limit == rhs.Velocity_Limit &&
    lhs.Current_Limit == rhs.Current_Limit &&
    lhs.Traj_Velocity_Limit == rhs.Traj_Velocity_Limit &&
    lhs.Traj_Accel_Limit == rhs.Traj_Accel_Limit &&
    lhs.Traj_Decel_Limit == rhs.Traj_Decel_Limit &&
    lhs.Traj_Inertia == rhs.Traj_Inertia &&
    lhs.Position == rhs.Position &&
    lhs.Pos_Gain == rhs.Pos_Gain &&
    lhs.Vel_Gain == rhs.Vel_Gain &&
    lhs.Vel_Integrator_Gain == rhs.Vel_Integrator_Gain;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::steering::Odrive_commandRequest_<ContainerAllocator1> & lhs, const ::steering::Odrive_commandRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace steering

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::steering::Odrive_commandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::steering::Odrive_commandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steering::Odrive_commandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::steering::Odrive_commandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steering::Odrive_commandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::steering::Odrive_commandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::steering::Odrive_commandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b8fe282d5250df9b15d2d8e86d273add";
  }

  static const char* value(const ::steering::Odrive_commandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb8fe282d5250df9bULL;
  static const uint64_t static_value2 = 0x15d2d8e86d273addULL;
};

template<class ContainerAllocator>
struct DataType< ::steering::Odrive_commandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "steering/Odrive_commandRequest";
  }

  static const char* value(const ::steering::Odrive_commandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::steering::Odrive_commandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 command\n"
"int8 Axis_State\n"
"int32 Control_Mode\n"
"int32 Input_Mode\n"
"float32 Input_Position\n"
"uint16 Input_Velocity_FF\n"
"uint16 Input_Torque_FF\n"
"float32 Input_Torque\n"
"float32 Velocity_Limit\n"
"float32 Current_Limit\n"
"float32 Traj_Velocity_Limit\n"
"float32 Traj_Accel_Limit\n"
"float32 Traj_Decel_Limit\n"
"float32 Traj_Inertia\n"
"float32 Position\n"
"float32 Pos_Gain\n"
"float32 Vel_Gain\n"
"float32 Vel_Integrator_Gain\n"
;
  }

  static const char* value(const ::steering::Odrive_commandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::steering::Odrive_commandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
      stream.next(m.Axis_State);
      stream.next(m.Control_Mode);
      stream.next(m.Input_Mode);
      stream.next(m.Input_Position);
      stream.next(m.Input_Velocity_FF);
      stream.next(m.Input_Torque_FF);
      stream.next(m.Input_Torque);
      stream.next(m.Velocity_Limit);
      stream.next(m.Current_Limit);
      stream.next(m.Traj_Velocity_Limit);
      stream.next(m.Traj_Accel_Limit);
      stream.next(m.Traj_Decel_Limit);
      stream.next(m.Traj_Inertia);
      stream.next(m.Position);
      stream.next(m.Pos_Gain);
      stream.next(m.Vel_Gain);
      stream.next(m.Vel_Integrator_Gain);
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
struct Printer< ::steering::Odrive_commandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::steering::Odrive_commandRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<double>::stream(s, indent + "  ", v.command);
    s << indent << "Axis_State: ";
    Printer<int8_t>::stream(s, indent + "  ", v.Axis_State);
    s << indent << "Control_Mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Control_Mode);
    s << indent << "Input_Mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Input_Mode);
    s << indent << "Input_Position: ";
    Printer<float>::stream(s, indent + "  ", v.Input_Position);
    s << indent << "Input_Velocity_FF: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Input_Velocity_FF);
    s << indent << "Input_Torque_FF: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Input_Torque_FF);
    s << indent << "Input_Torque: ";
    Printer<float>::stream(s, indent + "  ", v.Input_Torque);
    s << indent << "Velocity_Limit: ";
    Printer<float>::stream(s, indent + "  ", v.Velocity_Limit);
    s << indent << "Current_Limit: ";
    Printer<float>::stream(s, indent + "  ", v.Current_Limit);
    s << indent << "Traj_Velocity_Limit: ";
    Printer<float>::stream(s, indent + "  ", v.Traj_Velocity_Limit);
    s << indent << "Traj_Accel_Limit: ";
    Printer<float>::stream(s, indent + "  ", v.Traj_Accel_Limit);
    s << indent << "Traj_Decel_Limit: ";
    Printer<float>::stream(s, indent + "  ", v.Traj_Decel_Limit);
    s << indent << "Traj_Inertia: ";
    Printer<float>::stream(s, indent + "  ", v.Traj_Inertia);
    s << indent << "Position: ";
    Printer<float>::stream(s, indent + "  ", v.Position);
    s << indent << "Pos_Gain: ";
    Printer<float>::stream(s, indent + "  ", v.Pos_Gain);
    s << indent << "Vel_Gain: ";
    Printer<float>::stream(s, indent + "  ", v.Vel_Gain);
    s << indent << "Vel_Integrator_Gain: ";
    Printer<float>::stream(s, indent + "  ", v.Vel_Integrator_Gain);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STEERING_MESSAGE_ODRIVE_COMMANDREQUEST_H
