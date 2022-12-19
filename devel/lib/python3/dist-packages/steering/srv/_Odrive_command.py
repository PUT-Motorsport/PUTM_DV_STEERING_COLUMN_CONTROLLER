# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from steering/Odrive_commandRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Odrive_commandRequest(genpy.Message):
  _md5sum = "a6b43d426bfd3f44e42ee21d5f192930"
  _type = "steering/Odrive_commandRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 command
float64[] values
"""
  __slots__ = ['command','values']
  _slot_types = ['int32','float64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command,values

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Odrive_commandRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.command is None:
        self.command = 0
      if self.values is None:
        self.values = []
    else:
      self.command = 0
      self.values = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.command
      buff.write(_get_struct_i().pack(_x))
      length = len(self.values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.values))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.command,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.values = s.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.command
      buff.write(_get_struct_i().pack(_x))
      length = len(self.values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.values.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.command,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.values = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from steering/Odrive_commandResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Odrive_commandResponse(genpy.Message):
  _md5sum = "d3731a249632fa4e65bace96bcb5c3f6"
  _type = "steering/Odrive_commandResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 Axis_Error
int8 Axis_State
int32 Active_Errors
int32 Disarm_Reason
int32 Pos_Estimate
int32 Vel_Estimate
int32 Iq_Setpoint
int32 Iq_Measured
int32 FET_Temperature
int32 Motor_Temperature
int32 Vbus_Voltage
int32 Vbus_Current
"""
  __slots__ = ['Axis_Error','Axis_State','Active_Errors','Disarm_Reason','Pos_Estimate','Vel_Estimate','Iq_Setpoint','Iq_Measured','FET_Temperature','Motor_Temperature','Vbus_Voltage','Vbus_Current']
  _slot_types = ['int32','int8','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Axis_Error,Axis_State,Active_Errors,Disarm_Reason,Pos_Estimate,Vel_Estimate,Iq_Setpoint,Iq_Measured,FET_Temperature,Motor_Temperature,Vbus_Voltage,Vbus_Current

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Odrive_commandResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Axis_Error is None:
        self.Axis_Error = 0
      if self.Axis_State is None:
        self.Axis_State = 0
      if self.Active_Errors is None:
        self.Active_Errors = 0
      if self.Disarm_Reason is None:
        self.Disarm_Reason = 0
      if self.Pos_Estimate is None:
        self.Pos_Estimate = 0
      if self.Vel_Estimate is None:
        self.Vel_Estimate = 0
      if self.Iq_Setpoint is None:
        self.Iq_Setpoint = 0
      if self.Iq_Measured is None:
        self.Iq_Measured = 0
      if self.FET_Temperature is None:
        self.FET_Temperature = 0
      if self.Motor_Temperature is None:
        self.Motor_Temperature = 0
      if self.Vbus_Voltage is None:
        self.Vbus_Voltage = 0
      if self.Vbus_Current is None:
        self.Vbus_Current = 0
    else:
      self.Axis_Error = 0
      self.Axis_State = 0
      self.Active_Errors = 0
      self.Disarm_Reason = 0
      self.Pos_Estimate = 0
      self.Vel_Estimate = 0
      self.Iq_Setpoint = 0
      self.Iq_Measured = 0
      self.FET_Temperature = 0
      self.Motor_Temperature = 0
      self.Vbus_Voltage = 0
      self.Vbus_Current = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_ib10i().pack(_x.Axis_Error, _x.Axis_State, _x.Active_Errors, _x.Disarm_Reason, _x.Pos_Estimate, _x.Vel_Estimate, _x.Iq_Setpoint, _x.Iq_Measured, _x.FET_Temperature, _x.Motor_Temperature, _x.Vbus_Voltage, _x.Vbus_Current))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 45
      (_x.Axis_Error, _x.Axis_State, _x.Active_Errors, _x.Disarm_Reason, _x.Pos_Estimate, _x.Vel_Estimate, _x.Iq_Setpoint, _x.Iq_Measured, _x.FET_Temperature, _x.Motor_Temperature, _x.Vbus_Voltage, _x.Vbus_Current,) = _get_struct_ib10i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_ib10i().pack(_x.Axis_Error, _x.Axis_State, _x.Active_Errors, _x.Disarm_Reason, _x.Pos_Estimate, _x.Vel_Estimate, _x.Iq_Setpoint, _x.Iq_Measured, _x.FET_Temperature, _x.Motor_Temperature, _x.Vbus_Voltage, _x.Vbus_Current))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 45
      (_x.Axis_Error, _x.Axis_State, _x.Active_Errors, _x.Disarm_Reason, _x.Pos_Estimate, _x.Vel_Estimate, _x.Iq_Setpoint, _x.Iq_Measured, _x.FET_Temperature, _x.Motor_Temperature, _x.Vbus_Voltage, _x.Vbus_Current,) = _get_struct_ib10i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_ib10i = None
def _get_struct_ib10i():
    global _struct_ib10i
    if _struct_ib10i is None:
        _struct_ib10i = struct.Struct("<ib10i")
    return _struct_ib10i
class Odrive_command(object):
  _type          = 'steering/Odrive_command'
  _md5sum = '490a95e9f7999f7ded62b1edb2bf95f8'
  _request_class  = Odrive_commandRequest
  _response_class = Odrive_commandResponse
