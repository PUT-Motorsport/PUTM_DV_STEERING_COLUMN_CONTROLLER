// Generated by gencpp from file respond/Desired_angle.msg
// DO NOT EDIT!


#ifndef RESPOND_MESSAGE_DESIRED_ANGLE_H
#define RESPOND_MESSAGE_DESIRED_ANGLE_H

#include <ros/service_traits.h>


#include <respond/Desired_angleRequest.h>
#include <respond/Desired_angleResponse.h>


namespace respond
{

struct Desired_angle
{

typedef Desired_angleRequest Request;
typedef Desired_angleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Desired_angle
} // namespace respond


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::respond::Desired_angle > {
  static const char* value()
  {
    return "c078a45d2f024e16d451d0b873075ade";
  }

  static const char* value(const ::respond::Desired_angle&) { return value(); }
};

template<>
struct DataType< ::respond::Desired_angle > {
  static const char* value()
  {
    return "respond/Desired_angle";
  }

  static const char* value(const ::respond::Desired_angle&) { return value(); }
};


// service_traits::MD5Sum< ::respond::Desired_angleRequest> should match
// service_traits::MD5Sum< ::respond::Desired_angle >
template<>
struct MD5Sum< ::respond::Desired_angleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::respond::Desired_angle >::value();
  }
  static const char* value(const ::respond::Desired_angleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::respond::Desired_angleRequest> should match
// service_traits::DataType< ::respond::Desired_angle >
template<>
struct DataType< ::respond::Desired_angleRequest>
{
  static const char* value()
  {
    return DataType< ::respond::Desired_angle >::value();
  }
  static const char* value(const ::respond::Desired_angleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::respond::Desired_angleResponse> should match
// service_traits::MD5Sum< ::respond::Desired_angle >
template<>
struct MD5Sum< ::respond::Desired_angleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::respond::Desired_angle >::value();
  }
  static const char* value(const ::respond::Desired_angleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::respond::Desired_angleResponse> should match
// service_traits::DataType< ::respond::Desired_angle >
template<>
struct DataType< ::respond::Desired_angleResponse>
{
  static const char* value()
  {
    return DataType< ::respond::Desired_angle >::value();
  }
  static const char* value(const ::respond::Desired_angleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RESPOND_MESSAGE_DESIRED_ANGLE_H