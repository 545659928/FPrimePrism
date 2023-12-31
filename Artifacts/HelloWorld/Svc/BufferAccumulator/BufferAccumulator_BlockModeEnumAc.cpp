// ======================================================================
// \title  BufferAccumulator_BlockModeEnumAc.cpp
// \author Generated by fpp-to-cpp
// \brief  cpp file for BufferAccumulator_BlockMode enum
// ======================================================================

#include <cstring>
#include <limits>

#include "Fw/Types/Assert.hpp"
#include "F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.hpp"

namespace Svc {

  // ----------------------------------------------------------------------
  // Operators
  // ----------------------------------------------------------------------

  BufferAccumulator_BlockMode& BufferAccumulator_BlockMode ::
    operator=(const BufferAccumulator_BlockMode& obj)
  {
    this->e = obj.e;
    return *this;
  }

  BufferAccumulator_BlockMode& BufferAccumulator_BlockMode ::
    operator=(T e)
  {
    this->e = e;
    return *this;
  }

#ifdef BUILD_UT

  std::ostream& operator<<(std::ostream& os, const BufferAccumulator_BlockMode& obj) {
    Fw::String s;
    obj.toString(s);
    os << s;
    return os;
  }

#endif

  // ----------------------------------------------------------------------
  // Member functions
  // ----------------------------------------------------------------------

  bool BufferAccumulator_BlockMode ::
    isValid() const
  {
    return ((e >= NOBLOCK) && (e <= BLOCK));
  }

  Fw::SerializeStatus BufferAccumulator_BlockMode ::
    serialize(Fw::SerializeBufferBase& buffer) const
  {
    const Fw::SerializeStatus status = buffer.serialize(
        static_cast<SerialType>(this->e)
    );
    return status;
  }

  Fw::SerializeStatus BufferAccumulator_BlockMode ::
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

  void BufferAccumulator_BlockMode ::
    toString(Fw::StringBase& sb) const
  {
    Fw::String s;
    switch (e) {
      case NOBLOCK:
        s = "NOBLOCK";
        break;
      case BLOCK:
        s = "BLOCK";
        break;
      default:
        s = "[invalid]";
        break;
    }
    sb.format("%s (%d)", s.toChar(), e);
  }

#endif

}
