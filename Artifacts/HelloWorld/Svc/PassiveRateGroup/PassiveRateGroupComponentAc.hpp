// ======================================================================
// \title  PassiveRateGroupComponentAc.hpp
// \author Auto-generated
// \brief  hpp file for PassiveRateGroup component base class
//
// NOTE: this file was automatically generated
//
// ======================================================================

#ifndef SVC_PASSIVERATEGROUP_COMP_HPP_
#define SVC_PASSIVERATEGROUP_COMP_HPP_

#include <FpConfig.hpp>
#include <Fw/Port/InputSerializePort.hpp>
#include <Fw/Port/OutputSerializePort.hpp>

#include <Fw/Comp/PassiveComponentBase.hpp>


#include <Fw/Tlm/TlmString.hpp>
#include <Fw/Time/TimePortAc.hpp>
#include <Svc/Cycle/TimerVal.hpp>
#include <Fw/Time/Time.hpp>
#include <Fw/Tlm/TlmBuffer.hpp>
#include <Fw/Time/Time.hpp>
#include <Fw/Time/Time.hpp>
#include <Fw/Tlm/TlmBuffer.hpp>
#include <Svc/Cycle/TimerVal.hpp>
#include <Fw/Time/TimePortAc.hpp>
#include <Fw/Tlm/TlmPortAc.hpp>
#include <Svc/Cycle/CyclePortAc.hpp>
#include <Svc/Sched/SchedPortAc.hpp>

namespace Svc {

  //! \class PassiveRateGroupComponentBase
  //! \brief Auto-generated base for PassiveRateGroup component
  //!
  class PassiveRateGroupComponentBase :
    public Fw::PassiveComponentBase
  {

    // ----------------------------------------------------------------------
    // Friend classes
    // ----------------------------------------------------------------------

    //! Friend class for white-box testing
    //!
    friend class PassiveRateGroupComponentBaseFriend;

  public:

    // ----------------------------------------------------------------------
    // Getters for typed input ports
    // ----------------------------------------------------------------------

    //! Get input port at index
    //!
    //! \return CycleIn[portNum]
    //!
    Svc::InputCyclePort* get_CycleIn_InputPort(
        NATIVE_INT_TYPE portNum /*!< The port number*/
    );

  public:

    // ----------------------------------------------------------------------
    // Connect typed input ports to typed output ports
    // ----------------------------------------------------------------------

    //! Connect port to RateGroupMemberOut[portNum]
    //!
    void set_RateGroupMemberOut_OutputPort(
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        Svc::InputSchedPort *port /*!< The port*/
    );

    //! Connect port to Time[portNum]
    //!
    void set_Time_OutputPort(
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        Fw::InputTimePort *port /*!< The port*/
    );

    //! Connect port to Tlm[portNum]
    //!
    void set_Tlm_OutputPort(
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        Fw::InputTlmPort *port /*!< The port*/
    );

#if FW_PORT_SERIALIZATION

  public:

    // ----------------------------------------------------------------------
    // Connect serialization input ports to typed output ports
    // ----------------------------------------------------------------------

    //! Connect port to RateGroupMemberOut[portNum]
    //!
    void set_RateGroupMemberOut_OutputPort(
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        Fw::InputSerializePort *port /*!< The port*/
    );

    //! Connect port to Time[portNum]
    //!
    void set_Time_OutputPort(
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        Fw::InputSerializePort *port /*!< The port*/
    );

    //! Connect port to Tlm[portNum]
    //!
    void set_Tlm_OutputPort(
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        Fw::InputSerializePort *port /*!< The port*/
    );

#endif

  PROTECTED:

    // ----------------------------------------------------------------------
    // Component construction, initialization, and destruction
    // ----------------------------------------------------------------------

    //! Construct a PassiveRateGroupComponentBase object
    //!
    PassiveRateGroupComponentBase(
        const char* compName = "" /*!< Component name*/
    );

  public:
    //! Initialize a PassiveRateGroupComponentBase object
    //!
    void init(
        NATIVE_INT_TYPE instance = 0 /*!< The instance number*/
    );

  PROTECTED:
    //! Destroy a PassiveRateGroupComponentBase object
    //!
    virtual ~PassiveRateGroupComponentBase();

  PROTECTED:

    // ----------------------------------------------------------------------
    // Handlers to implement for typed input ports
    // ----------------------------------------------------------------------

    //! Handler for input port CycleIn
    //
    virtual void CycleIn_handler(
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        Svc::TimerVal &cycleStart /*!< 
      Cycle start timer value
      */
    ) = 0;

  PROTECTED:

    // ----------------------------------------------------------------------
    // Port handler base-class functions for typed input ports.
    // ----------------------------------------------------------------------
    // Call these functions directly to bypass the corresponding ports.
    // ----------------------------------------------------------------------

    //! Handler base-class function for input port CycleIn
    //!
    void CycleIn_handlerBase(
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        Svc::TimerVal &cycleStart /*!< 
      Cycle start timer value
      */
    );

  PROTECTED:

    // ----------------------------------------------------------------------
    // Invocation functions for typed output ports
    // ----------------------------------------------------------------------

    //! Invoke output port RateGroupMemberOut
    //!
    void RateGroupMemberOut_out(
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        NATIVE_UINT_TYPE context /*!< 
      The call order
      */
    );

  PROTECTED:

    // ----------------------------------------------------------------------
    // Getters for numbers of input ports
    // ----------------------------------------------------------------------

    //! Get the number of CycleIn input ports
    //!
    //! \return The number of CycleIn input ports
    //!
    NATIVE_INT_TYPE getNum_CycleIn_InputPorts();


    // ----------------------------------------------------------------------
    // Enumerations for number of ports
    // ----------------------------------------------------------------------

    enum {
       NUM_CYCLEIN_INPUT_PORTS = 1,
    };

  PROTECTED:

    // ----------------------------------------------------------------------
    // Getters for numbers of output ports
    // ----------------------------------------------------------------------

    //! Get the number of RateGroupMemberOut output ports
    //!
    //! \return The number of RateGroupMemberOut output ports
    //!
    NATIVE_INT_TYPE getNum_RateGroupMemberOut_OutputPorts();

    //! Get the number of Time output ports
    //!
    //! \return The number of Time output ports
    //!
    NATIVE_INT_TYPE getNum_Time_OutputPorts();

    //! Get the number of Tlm output ports
    //!
    //! \return The number of Tlm output ports
    //!
    NATIVE_INT_TYPE getNum_Tlm_OutputPorts();


    enum {
       NUM_RATEGROUPMEMBEROUT_OUTPUT_PORTS = 10,
       NUM_TIME_OUTPUT_PORTS = 1,
       NUM_TLM_OUTPUT_PORTS = 1,
    };

  PROTECTED:

    // ----------------------------------------------------------------------
    // Connection status queries for output ports
    // ----------------------------------------------------------------------

    //! Check whether port RateGroupMemberOut is connected
    //!
    //! \return Whether port RateGroupMemberOut is connected
    //!
    bool isConnected_RateGroupMemberOut_OutputPort(
        NATIVE_INT_TYPE portNum /*!< The port number*/
    );

    //! Check whether port Time is connected
    //!
    //! \return Whether port Time is connected
    //!
    bool isConnected_Time_OutputPort(
        NATIVE_INT_TYPE portNum /*!< The port number*/
    );

    //! Check whether port Tlm is connected
    //!
    //! \return Whether port Tlm is connected
    //!
    bool isConnected_Tlm_OutputPort(
        NATIVE_INT_TYPE portNum /*!< The port number*/
    );

  PROTECTED:

    // ----------------------------------------------------------------------
    // Event logging functions
    // ----------------------------------------------------------------------

  PROTECTED:

    // ----------------------------------------------------------------------
    // Channel IDs
    // ----------------------------------------------------------------------

    enum {
      CHANNELID_MAXCYCLETIME = 0x0, //!< Channel ID for MaxCycleTime
      CHANNELID_CYCLETIME = 0x1, //!< Channel ID for CycleTime
      CHANNELID_CYCLECOUNT = 0x2, //!< Channel ID for CycleCount
    };

  PROTECTED:

    // ----------------------------------------------------------------------
    // Telemetry write functions
    // ----------------------------------------------------------------------

    //! Write telemetry channel MaxCycleTime
    //!
    /* Max execution time of rate group cycle */
    void tlmWrite_MaxCycleTime(
        U32 arg /*!< The telemetry value*/,
        Fw::Time _tlmTime=Fw::Time() /*!< Timestamp. Default: unspecified, request from getTime port*/
    );

    //! Write telemetry channel CycleTime
    //!
    /* Execution time of current cycle */
    void tlmWrite_CycleTime(
        U32 arg /*!< The telemetry value*/,
        Fw::Time _tlmTime=Fw::Time() /*!< Timestamp. Default: unspecified, request from getTime port*/
    );

    //! Write telemetry channel CycleCount
    //!
    /* Count of number of cycles */
    void tlmWrite_CycleCount(
        U32 arg /*!< The telemetry value*/,
        Fw::Time _tlmTime=Fw::Time() /*!< Timestamp. Default: unspecified, request from getTime port*/
    );

  PROTECTED:

    // ----------------------------------------------------------------------
    // Time
    // ----------------------------------------------------------------------

    //! Get the time
    //!
    //! \return The current time
    //!
    Fw::Time getTime();



  PRIVATE:

    // ----------------------------------------------------------------------
    // Typed input ports
    // ----------------------------------------------------------------------

    //! Input port CycleIn
    //!
    Svc::InputCyclePort m_CycleIn_InputPort[NUM_CYCLEIN_INPUT_PORTS];

  PRIVATE:

    // ----------------------------------------------------------------------
    // Typed output ports
    // ----------------------------------------------------------------------

    //! Output port RateGroupMemberOut
    //!
    Svc::OutputSchedPort m_RateGroupMemberOut_OutputPort[NUM_RATEGROUPMEMBEROUT_OUTPUT_PORTS];

    //! Output port Time
    //!
    Fw::OutputTimePort m_Time_OutputPort[NUM_TIME_OUTPUT_PORTS];

    //! Output port Tlm
    //!
    Fw::OutputTlmPort m_Tlm_OutputPort[NUM_TLM_OUTPUT_PORTS];

  PRIVATE:

    // ----------------------------------------------------------------------
    // Calls for messages received on typed input ports
    // ----------------------------------------------------------------------

    //! Callback for port CycleIn
    //!
    static void m_p_CycleIn_in(
        Fw::PassiveComponentBase* callComp, /*!< The component instance*/
        NATIVE_INT_TYPE portNum, /*!< The port number*/
        Svc::TimerVal &cycleStart /*!< 
      Cycle start timer value
      */
    );

  PRIVATE:

    // ----------------------------------------------------------------------
    // First update flags for telemetry channels
    // ----------------------------------------------------------------------

    //! Initialized to true; cleared when channel MaxCycleTime is first updated
    //!
    bool m_first_update_MaxCycleTime;

  PRIVATE:

    // ----------------------------------------------------------------------
    // Last value storage for telemetry channels
    // ----------------------------------------------------------------------

    //! Records the last emitted value for channel MaxCycleTime
    //!
    U32 m_last_MaxCycleTime;



  };

} // end namespace Svc
#endif
