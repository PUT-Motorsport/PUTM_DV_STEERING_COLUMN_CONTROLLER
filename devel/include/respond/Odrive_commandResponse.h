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
    : Axis_Error(0)
    , Axis_State(0)
    , Active_Errors(0)
    , Disarm_Reason(0)
    , Pos_Estimate(0)
    , Vel_Estimate(0)
    , Iq_Setpoint(0)
    , Iq_Measured(0)
    , FET_Temperature(0)
    , Motor_Temperature(0)
    , Vbus_Voltage(0)
    , Vbus_Current(0)  {
    }
  Odrive_commandResponse_(const ContainerAllocator& _alloc)
    : Axis_Error(0)
    , Axis_State(0)
    , Active_Errors(0)
    , Disarm_Reason(0)
    , Pos_Estimate(0)
    , Vel_Estimate(0)
    , Iq_Setpoint(0)
    , Iq_Measured(0)
    , FET_Temperature(0)
    , Motor_Temperature(0)
    , Vbus_Voltage(0)
    , Vbus_Current(0)  {
  (void)_alloc;
    }



   typedef int32_t _Axis_Error_type;
  _Axis_Error_type Axis_Error;

   typedef int8_t _Axis_State_type;
  _Axis_State_type Axis_State;

   typedef int32_t _Active_Errors_type;
  _Active_Errors_type Active_Errors;

   typedef int32_t _Disarm_Reason_type;
  _Disarm_Reason_type Disarm_Reason;

   typedef int32_t _Pos_Estimate_type;
  _Pos_Estimate_type Pos_Estimate;

   typedef int32_t _Vel_Estimate_type;
  _Vel_Estimate_type Vel_Estimate;

   typedef int32_t _Iq_Setpoint_type;
  _Iq_Setpoint_type Iq_Setpoint;

   typedef int32_t _Iq_Measured_type;
  _Iq_Measured_type Iq_Measured;

   typedef int32_t _FET_Temperature_type;
  _FET_Temperature_type FET_Temperature;

   typedef int32_t _Motor_Temperature_type;
  _Motor_Temperature_type Motor_Temperature;

   typedef int32_t _Vbus_Voltage_type;
  _Vbus_Voltage_type Vbus_Voltage;

   typedef int32_t _Vbus_Current_type;
  _Vbus_Current_type Vbus_Current;





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
  return lhs.Axis_Error == rhs.Axis_Error &&
    lhs.Axis_State == rhs.Axis_State &&
    lhs.Active_Errors == rhs.Active_Errors &&
    lhs.Disarm_Reason == rhs.Disarm_Reason &&
    lhs.Pos_Estimate == rhs.Pos_Estimate &&
    lhs.Vel_Estimate == rhs.Vel_Estimate &&
    lhs.Iq_Setpoint == rhs.Iq_Setpoint &&
    lhs.Iq_Measured == rhs.Iq_Measured &&
    lhs.FET_Temperature == rhs.FET_Temperature &&
    lhs.Motor_Temperature == rhs.Motor_Temperature &&
    lhs.Vbus_Voltage == rhs.Vbus_Voltage &&
    lhs.Vbus_Current == rhs.Vbus_Current;
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
    return "d3731a249632fa4e65bace96bcb5c3f6";
  }

  static const char* value(const ::respond::Odrive_commandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd3731a249632fa4eULL;
  static const uint64_t static_value2 = 0x65bace96bcb5c3f6ULL;
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
    return "int32 Axis_Error\n"
"int8 Axis_State\n"
"int32 Active_Errors\n"
"int32 Disarm_Reason\n"
"int32 Pos_Estimate\n"
"int32 Vel_Estimate\n"
"int32 Iq_Setpoint\n"
"int32 Iq_Measured\n"
"int32 FET_Temperature\n"
"int32 Motor_Temperature\n"
"int32 Vbus_Voltage\n"
"int32 Vbus_Current\n"
"\n"
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
      stream.next(m.Axis_Error);
      stream.next(m.Axis_State);
      stream.next(m.Active_Errors);
      stream.next(m.Disarm_Reason);
      stream.next(m.Pos_Estimate);
      stream.next(m.Vel_Estimate);
      stream.next(m.Iq_Setpoint);
      stream.next(m.Iq_Measured);
      stream.next(m.FET_Temperature);
      stream.next(m.Motor_Temperature);
      stream.next(m.Vbus_Voltage);
      stream.next(m.Vbus_Current);
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
    s << indent << "Axis_Error: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Axis_Error);
    s << indent << "Axis_State: ";
    Printer<int8_t>::stream(s, indent + "  ", v.Axis_State);
    s << indent << "Active_Errors: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Active_Errors);
    s << indent << "Disarm_Reason: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Disarm_Reason);
    s << indent << "Pos_Estimate: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Pos_Estimate);
    s << indent << "Vel_Estimate: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Vel_Estimate);
    s << indent << "Iq_Setpoint: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Iq_Setpoint);
    s << indent << "Iq_Measured: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Iq_Measured);
    s << indent << "FET_Temperature: ";
    Printer<int32_t>::stream(s, indent + "  ", v.FET_Temperature);
    s << indent << "Motor_Temperature: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Motor_Temperature);
    s << indent << "Vbus_Voltage: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Vbus_Voltage);
    s << indent << "Vbus_Current: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Vbus_Current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RESPOND_MESSAGE_ODRIVE_COMMANDRESPONSE_H