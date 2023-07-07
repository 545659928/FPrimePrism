// ======================================================================
// \title  PrmDb_PrmReadErrorEnumAc.hpp
// \author Generated by fpp-to-cpp
// \brief  hpp file for PrmDb_PrmReadError enum
// ======================================================================

#ifndef Svc_PrmDb_PrmDb_PrmReadErrorEnumAc_HPP
#define Svc_PrmDb_PrmDb_PrmReadErrorEnumAc_HPP

#include "FpConfig.hpp"
#include "Fw/Types/Serializable.hpp"
#include "Fw/Types/String.hpp"

namespace Svc {

  //! Parameter read error
  class PrmDb_PrmReadError :
    public Fw::Serializable
  {

    public:

      // ----------------------------------------------------------------------
      // Types
      // ----------------------------------------------------------------------

      //! The serial representation type
      typedef I32 SerialType;

      //! The raw enum type
      enum T {
        OPEN = 0,
        DELIMITER = 1,
        DELIMITER_SIZE = 2,
        DELIMITER_VALUE = 3,
        RECORD_SIZE = 4,
        RECORD_SIZE_SIZE = 5,
        RECORD_SIZE_VALUE = 6,
        PARAMETER_ID = 7,
        PARAMETER_ID_SIZE = 8,
        PARAMETER_VALUE = 9,
        PARAMETER_VALUE_SIZE = 10,
      };

      //! For backwards compatibility
      typedef T t;

    public:

      // ----------------------------------------------------------------------
      // Constants
      // ----------------------------------------------------------------------

      enum {
        //! The size of the serial representation
        SERIALIZED_SIZE = sizeof(SerialType),
        //! The number of enumerated constants
        NUM_CONSTANTS = 11,
      };

    public:

      // ----------------------------------------------------------------------
      // Constructors
      // ----------------------------------------------------------------------

      //! Constructor (default value of OPEN)
      PrmDb_PrmReadError()
      {
        this->e = OPEN;
      }

      //! Constructor (user-provided value)
      PrmDb_PrmReadError(
          const T e //!< The raw enum value
      )
      {
        this->e = e;
      }

      //! Copy constructor
      PrmDb_PrmReadError(
          const PrmDb_PrmReadError& obj //!< The source object
      )
      {
        this->e = obj.e;
      }

    public:

      // ----------------------------------------------------------------------
      // Operators
      // ----------------------------------------------------------------------

      //! Copy assignment operator (object)
      PrmDb_PrmReadError& operator=(
          const PrmDb_PrmReadError& obj //!< The source object
      );

      //! Copy assignment operator (raw enum)
      PrmDb_PrmReadError& operator=(
          T e //!< The enum value
      );

      //! Conversion operator
      operator T() const
      {
        return this->e;
      }

      //! Equality operator
      bool operator==(T e) const
      {
        return this->e == e;
      }

      //! Inequality operator
      bool operator!=(T e) const
      {
        return !(*this == e);
      }

#ifdef BUILD_UT

      //! Ostream operator
      friend std::ostream& operator<<(
          std::ostream& os, //!< The ostream
          const PrmDb_PrmReadError& obj //!< The object
      );

#endif

    public:

      // ----------------------------------------------------------------------
      // Member functions
      // ----------------------------------------------------------------------

      //! Check raw enum value for validity
      bool isValid() const;

      //! Serialize raw enum value to SerialType
      Fw::SerializeStatus serialize(
          Fw::SerializeBufferBase& buffer //!< The serial buffer
      ) const;

      //! Deserialize raw enum value from SerialType
      Fw::SerializeStatus deserialize(
          Fw::SerializeBufferBase& buffer //!< The serial buffer
      );

#if FW_SERIALIZABLE_TO_STRING || BUILD_UT

      //! Convert enum to string
      void toString(
          Fw::StringBase& sb //!< The StringBase object to hold the result
      ) const;

#endif

    public:

      // ----------------------------------------------------------------------
      // Member variables
      // ----------------------------------------------------------------------

      //! The raw enum value
      T e;

  };

}

#endif