// ======================================================================
// \title  Ports_StaticMemoryEnumAc.cpp
// \author Generated by fpp-to-cpp
// \brief  cpp file for Ports_StaticMemory enum
// ======================================================================

#include <cstring>
#include <limits>

#include "Fw/Types/Assert.hpp"
#include "Ref/Top/Ports_StaticMemoryEnumAc.hpp"

namespace Ref {

  // ----------------------------------------------------------------------
  // Operators
  // ----------------------------------------------------------------------

  Ports_StaticMemory& Ports_StaticMemory ::
    operator=(const Ports_StaticMemory& obj)
  {
    this->e = obj.e;
    return *this;
  }

  Ports_StaticMemory& Ports_StaticMemory ::
    operator=(T e)
  {
    this->e = e;
    return *this;
  }

#ifdef BUILD_UT

  std::ostream& operator<<(std::ostream& os, const Ports_StaticMemory& obj) {
    Fw::String s;
    obj.toString(s);
    os << s;
    return os;
  }

#endif

  // ----------------------------------------------------------------------
  // Member functions
  // ----------------------------------------------------------------------

  bool Ports_StaticMemory ::
    isValid() const
  {
    return ((e >= downlink) && (e <= uplink));
  }

  Fw::SerializeStatus Ports_StaticMemory ::
    serialize(Fw::SerializeBufferBase& buffer) const
  {
    const Fw::SerializeStatus status = buffer.serialize(
        static_cast<SerialType>(this->e)
    );
    return status;
  }

  Fw::SerializeStatus Ports_StaticMemory ::
    deserialize(Fw::SerializeBufferBase& buffer)
  {
    SerialType es;
    Fw::SerializeStatus status = buffer.deserialize(es);
    if (status == Fw::FW_SERIALIZE_OK) {
      this->e = static_cast<T>(es);
      if (!this->isValid()) {
        status = Fw::FW_DESERIALIZE_FORMAT_ERROR;
      }
    }
    return status;
  }

#if FW_SERIALIZABLE_TO_STRING || BUILD_UT

  void Ports_StaticMemory ::
    toString(Fw::StringBase& sb) const
  {
    Fw::String s;
    switch (e) {
      case downlink:
        s = "downlink";
        break;
      case uplink:
        s = "uplink";
        break;
      default:
        s = "[invalid]";
        break;
    }
    sb.format("%s (%d)", s.toChar(), e);
  }

#endif

}