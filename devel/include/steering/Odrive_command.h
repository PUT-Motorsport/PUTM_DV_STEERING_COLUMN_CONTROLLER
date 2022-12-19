// Generated by gencpp from file steering/Odrive_command.msg
// DO NOT EDIT!


#ifndef STEERING_MESSAGE_ODRIVE_COMMAND_H
#define STEERING_MESSAGE_ODRIVE_COMMAND_H

#include <ros/service_traits.h>


#include <steering/Odrive_commandRequest.h>
#include <steering/Odrive_commandResponse.h>


namespace steering
{

struct Odrive_command
{

typedef Odrive_commandRequest Request;
typedef Odrive_commandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Odrive_command
} // namespace steering


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::steering::Odrive_command > {
  static const char* value()
  {
    return "490a95e9f7999f7ded62b1edb2bf95f8";
  }

  static const char* value(const ::steering::Odrive_command&) { return value(); }
};

template<>
struct DataType< ::steering::Odrive_command > {
  static const char* value()
  {
    return "steering/Odrive_command";
  }

  static const char* value(const ::steering::Odrive_command&) { return value(); }
};


// service_traits::MD5Sum< ::steering::Odrive_commandRequest> should match
// service_traits::MD5Sum< ::steering::Odrive_command >
template<>
struct MD5Sum< ::steering::Odrive_commandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::steering::Odrive_command >::value();
  }
  static const char* value(const ::steering::Odrive_commandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::steering::Odrive_commandRequest> should match
// service_traits::DataType< ::steering::Odrive_command >
template<>
struct DataType< ::steering::Odrive_commandRequest>
{
  static const char* value()
  {
    return DataType< ::steering::Odrive_command >::value();
  }
  static const char* value(const ::steering::Odrive_commandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::steering::Odrive_commandResponse> should match
// service_traits::MD5Sum< ::steering::Odrive_command >
template<>
struct MD5Sum< ::steering::Odrive_commandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::steering::Odrive_command >::value();
  }
  static const char* value(const ::steering::Odrive_commandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::steering::Odrive_commandResponse> should match
// service_traits::DataType< ::steering::Odrive_command >
template<>
struct DataType< ::steering::Odrive_commandResponse>
{
  static const char* value()
  {
    return DataType< ::steering::Odrive_command >::value();
  }
  static const char* value(const ::steering::Odrive_commandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // STEERING_MESSAGE_ODRIVE_COMMAND_H
