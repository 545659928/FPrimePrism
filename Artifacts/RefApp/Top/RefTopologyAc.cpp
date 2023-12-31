// ======================================================================
// \title  RefTopologyAc.cpp
// \author Generated by fpp-to-cpp
// \brief  cpp file for Ref topology
// ======================================================================

#include "Ref/Top/RefTopologyAc.hpp"

namespace Ref {

  namespace {

    // ----------------------------------------------------------------------
    // Component configuration objects
    // ----------------------------------------------------------------------

    namespace ConfigObjects {

      namespace health {
        Svc::Health::PingEntry pingEntries[] = {
          {
            PingEntries::blockDrv::WARN,
            PingEntries::blockDrv::FATAL,
            "blockDrv"
          },
          {
            PingEntries::cmdDisp::WARN,
            PingEntries::cmdDisp::FATAL,
            "cmdDisp"
          },
          {
            PingEntries::cmdSeq::WARN,
            PingEntries::cmdSeq::FATAL,
            "cmdSeq"
          },
          {
            PingEntries::eventLogger::WARN,
            PingEntries::eventLogger::FATAL,
            "eventLogger"
          },
          {
            PingEntries::fileDownlink::WARN,
            PingEntries::fileDownlink::FATAL,
            "fileDownlink"
          },
          {
            PingEntries::fileManager::WARN,
            PingEntries::fileManager::FATAL,
            "fileManager"
          },
          {
            PingEntries::fileUplink::WARN,
            PingEntries::fileUplink::FATAL,
            "fileUplink"
          },
          {
            PingEntries::pingRcvr::WARN,
            PingEntries::pingRcvr::FATAL,
            "pingRcvr"
          },
          {
            PingEntries::prmDb::WARN,
            PingEntries::prmDb::FATAL,
            "prmDb"
          },
          {
            PingEntries::rateGroup1Comp::WARN,
            PingEntries::rateGroup1Comp::FATAL,
            "rateGroup1Comp"
          },
          {
            PingEntries::rateGroup2Comp::WARN,
            PingEntries::rateGroup2Comp::FATAL,
            "rateGroup2Comp"
          },
          {
            PingEntries::rateGroup3Comp::WARN,
            PingEntries::rateGroup3Comp::FATAL,
            "rateGroup3Comp"
          },
          {
            PingEntries::tlmSend::WARN,
            PingEntries::tlmSend::FATAL,
            "tlmSend"
          },
        };
      }

    }

  }

  // ----------------------------------------------------------------------
  // Component instances
  // ----------------------------------------------------------------------

  SignalGen SG1(FW_OPTIONAL_NAME("SG1"));

  SignalGen SG2(FW_OPTIONAL_NAME("SG2"));

  SignalGen SG3(FW_OPTIONAL_NAME("SG3"));

  SignalGen SG4(FW_OPTIONAL_NAME("SG4"));

  SignalGen SG5(FW_OPTIONAL_NAME("SG5"));

  Drv::BlockDriver blockDrv(FW_OPTIONAL_NAME("blockDrv"));

  Svc::CommandDispatcher cmdDisp(FW_OPTIONAL_NAME("cmdDisp"));

  Svc::CmdSequencer cmdSeq(FW_OPTIONAL_NAME("cmdSeq"));

  Drv::TcpClient comm(FW_OPTIONAL_NAME("comm"));

  Svc::Framer downlink(FW_OPTIONAL_NAME("downlink"));

  Svc::ActiveLogger eventLogger(FW_OPTIONAL_NAME("eventLogger"));

  Svc::AssertFatalAdapter fatalAdapter(FW_OPTIONAL_NAME("fatalAdapter"));

  Svc::FatalHandler fatalHandler(FW_OPTIONAL_NAME("fatalHandler"));

  Svc::FileDownlink fileDownlink(FW_OPTIONAL_NAME("fileDownlink"));

  Svc::FileManager fileManager(FW_OPTIONAL_NAME("fileManager"));

  Svc::FileUplink fileUplink(FW_OPTIONAL_NAME("fileUplink"));

  Svc::BufferManager fileUplinkBufferManager(FW_OPTIONAL_NAME("fileUplinkBufferManager"));

  Svc::Health health(FW_OPTIONAL_NAME("health"));

  Svc::LinuxTime linuxTime(FW_OPTIONAL_NAME("linuxTime"));

  PingReceiver pingRcvr(FW_OPTIONAL_NAME("pingRcvr"));

  Svc::PrmDb prmDb(FW_OPTIONAL_NAME("prmDb"));

  Svc::ActiveRateGroup rateGroup1Comp(FW_OPTIONAL_NAME("rateGroup1Comp"));

  Svc::ActiveRateGroup rateGroup2Comp(FW_OPTIONAL_NAME("rateGroup2Comp"));

  Svc::ActiveRateGroup rateGroup3Comp(FW_OPTIONAL_NAME("rateGroup3Comp"));

  Svc::RateGroupDriver rateGroupDriverComp(FW_OPTIONAL_NAME("rateGroupDriverComp"));

  RecvBuff recvBuffComp(FW_OPTIONAL_NAME("recvBuffComp"));

  SendBuff sendBuffComp(FW_OPTIONAL_NAME("sendBuffComp"));

  Svc::StaticMemory staticMemory(FW_OPTIONAL_NAME("staticMemory"));

  Svc::SystemResources systemResources(FW_OPTIONAL_NAME("systemResources"));

  Svc::PassiveTextLogger textLogger(FW_OPTIONAL_NAME("textLogger"));

  Svc::TlmChan tlmSend(FW_OPTIONAL_NAME("tlmSend"));

  TypeDemo typeDemo(FW_OPTIONAL_NAME("typeDemo"));

  Svc::Deframer uplink(FW_OPTIONAL_NAME("uplink"));

  // ----------------------------------------------------------------------
  // Helper functions
  // ----------------------------------------------------------------------

  void initComponents(const TopologyState& state) {
    SG1.init(QueueSizes::SG1, InstanceIds::SG1);
    SG2.init(QueueSizes::SG2, InstanceIds::SG2);
    SG3.init(QueueSizes::SG3, InstanceIds::SG3);
    SG4.init(QueueSizes::SG4, InstanceIds::SG4);
    SG5.init(QueueSizes::SG5, InstanceIds::SG5);
    blockDrv.init(QueueSizes::blockDrv, InstanceIds::blockDrv);
    cmdDisp.init(QueueSizes::cmdDisp, InstanceIds::cmdDisp);
    cmdSeq.init(QueueSizes::cmdSeq, InstanceIds::cmdSeq);
    comm.init(InstanceIds::comm);
    downlink.init(InstanceIds::downlink);
    eventLogger.init(QueueSizes::eventLogger, InstanceIds::eventLogger);
    fatalAdapter.init(InstanceIds::fatalAdapter);
    fatalHandler.init(InstanceIds::fatalHandler);
    fileDownlink.init(QueueSizes::fileDownlink, InstanceIds::fileDownlink);
    fileManager.init(QueueSizes::fileManager, InstanceIds::fileManager);
    fileUplink.init(QueueSizes::fileUplink, InstanceIds::fileUplink);
    fileUplinkBufferManager.init(InstanceIds::fileUplinkBufferManager);
    health.init(QueueSizes::health, InstanceIds::health);
    linuxTime.init(InstanceIds::linuxTime);
    pingRcvr.init(QueueSizes::pingRcvr, InstanceIds::pingRcvr);
    prmDb.init(QueueSizes::prmDb, InstanceIds::prmDb);
    rateGroup1Comp.init(QueueSizes::rateGroup1Comp, InstanceIds::rateGroup1Comp);
    rateGroup2Comp.init(QueueSizes::rateGroup2Comp, InstanceIds::rateGroup2Comp);
    rateGroup3Comp.init(QueueSizes::rateGroup3Comp, InstanceIds::rateGroup3Comp);
    rateGroupDriverComp.init(InstanceIds::rateGroupDriverComp);
    recvBuffComp.init(InstanceIds::recvBuffComp);
    sendBuffComp.init(QueueSizes::sendBuffComp, InstanceIds::sendBuffComp);
    staticMemory.init(InstanceIds::staticMemory);
    systemResources.init(InstanceIds::systemResources);
    textLogger.init(InstanceIds::textLogger);
    tlmSend.init(QueueSizes::tlmSend, InstanceIds::tlmSend);
    typeDemo.init(InstanceIds::typeDemo);
    uplink.init(InstanceIds::uplink);
  }

  void setBaseIds() {
    blockDrv.setIdBase(BaseIds::blockDrv);
    rateGroup1Comp.setIdBase(BaseIds::rateGroup1Comp);
    rateGroup2Comp.setIdBase(BaseIds::rateGroup2Comp);
    rateGroup3Comp.setIdBase(BaseIds::rateGroup3Comp);
    cmdDisp.setIdBase(BaseIds::cmdDisp);
    cmdSeq.setIdBase(BaseIds::cmdSeq);
    fileDownlink.setIdBase(BaseIds::fileDownlink);
    fileManager.setIdBase(BaseIds::fileManager);
    fileUplink.setIdBase(BaseIds::fileUplink);
    pingRcvr.setIdBase(BaseIds::pingRcvr);
    eventLogger.setIdBase(BaseIds::eventLogger);
    tlmSend.setIdBase(BaseIds::tlmSend);
    prmDb.setIdBase(BaseIds::prmDb);
    typeDemo.setIdBase(BaseIds::typeDemo);
    health.setIdBase(BaseIds::health);
    SG1.setIdBase(BaseIds::SG1);
    SG2.setIdBase(BaseIds::SG2);
    SG3.setIdBase(BaseIds::SG3);
    SG4.setIdBase(BaseIds::SG4);
    SG5.setIdBase(BaseIds::SG5);
    sendBuffComp.setIdBase(BaseIds::sendBuffComp);
    comm.setIdBase(BaseIds::comm);
    downlink.setIdBase(BaseIds::downlink);
    fatalAdapter.setIdBase(BaseIds::fatalAdapter);
    fatalHandler.setIdBase(BaseIds::fatalHandler);
    fileUplinkBufferManager.setIdBase(BaseIds::fileUplinkBufferManager);
    linuxTime.setIdBase(BaseIds::linuxTime);
    rateGroupDriverComp.setIdBase(BaseIds::rateGroupDriverComp);
    recvBuffComp.setIdBase(BaseIds::recvBuffComp);
    staticMemory.setIdBase(BaseIds::staticMemory);
    textLogger.setIdBase(BaseIds::textLogger);
    uplink.setIdBase(BaseIds::uplink);
    systemResources.setIdBase(BaseIds::systemResources);
  }

  void connectComponents() {

    // Command
    cmdDisp.set_compCmdSend_OutputPort(
        0,
        SG1.get_cmdIn_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        1,
        SG2.get_cmdIn_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        2,
        SG3.get_cmdIn_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        3,
        SG4.get_cmdIn_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        4,
        SG5.get_cmdIn_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        5,
        cmdDisp.get_CmdDisp_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        6,
        cmdSeq.get_cmdIn_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        7,
        eventLogger.get_CmdDisp_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        8,
        fileDownlink.get_cmdIn_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        9,
        fileManager.get_cmdIn_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        10,
        health.get_CmdDisp_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        11,
        pingRcvr.get_CmdDisp_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        12,
        prmDb.get_CmdDisp_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        13,
        recvBuffComp.get_CmdDisp_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        14,
        sendBuffComp.get_CmdDisp_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        15,
        systemResources.get_CmdDisp_InputPort(0)
    );
    cmdDisp.set_compCmdSend_OutputPort(
        16,
        typeDemo.get_cmdIn_InputPort(0)
    );

    // CommandRegistration
    SG1.set_cmdRegOut_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(0)
    );
    SG2.set_cmdRegOut_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(1)
    );
    SG3.set_cmdRegOut_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(2)
    );
    SG4.set_cmdRegOut_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(3)
    );
    SG5.set_cmdRegOut_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(4)
    );
    cmdDisp.set_CmdReg_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(5)
    );
    cmdSeq.set_cmdRegOut_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(6)
    );
    eventLogger.set_CmdReg_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(7)
    );
    fileDownlink.set_cmdRegOut_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(8)
    );
    fileManager.set_cmdRegOut_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(9)
    );
    health.set_CmdReg_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(10)
    );
    pingRcvr.set_CmdReg_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(11)
    );
    prmDb.set_CmdReg_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(12)
    );
    recvBuffComp.set_CmdReg_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(13)
    );
    sendBuffComp.set_CmdReg_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(14)
    );
    systemResources.set_CmdReg_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(15)
    );
    typeDemo.set_cmdRegOut_OutputPort(
        0,
        cmdDisp.get_compCmdReg_InputPort(16)
    );

    // CommandResponse
    SG1.set_cmdResponseOut_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    SG2.set_cmdResponseOut_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    SG3.set_cmdResponseOut_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    SG4.set_cmdResponseOut_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    SG5.set_cmdResponseOut_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    cmdDisp.set_CmdStatus_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    cmdSeq.set_cmdResponseOut_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    eventLogger.set_CmdStatus_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    fileDownlink.set_cmdResponseOut_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    fileManager.set_cmdResponseOut_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    health.set_CmdStatus_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    pingRcvr.set_CmdStatus_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    prmDb.set_CmdStatus_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    recvBuffComp.set_CmdStatus_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    sendBuffComp.set_CmdStatus_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    systemResources.set_CmdStatus_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );
    typeDemo.set_cmdResponseOut_OutputPort(
        0,
        cmdDisp.get_compCmdStat_InputPort(0)
    );

    // Downlink
    comm.set_deallocate_OutputPort(
        0,
        staticMemory.get_bufferDeallocate_InputPort(0)
    );
    downlink.set_bufferDeallocate_OutputPort(
        0,
        fileDownlink.get_bufferReturn_InputPort(0)
    );
    downlink.set_framedAllocate_OutputPort(
        0,
        staticMemory.get_bufferAllocate_InputPort(0)
    );
    downlink.set_framedOut_OutputPort(
        0,
        comm.get_send_InputPort(0)
    );
    eventLogger.set_PktSend_OutputPort(
        0,
        downlink.get_comIn_InputPort(0)
    );
    fileDownlink.set_bufferSendOut_OutputPort(
        0,
        downlink.get_bufferIn_InputPort(0)
    );
    tlmSend.set_PktSend_OutputPort(
        0,
        downlink.get_comIn_InputPort(0)
    );

    // Events
    SG1.set_logOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    SG2.set_logOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    SG3.set_logOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    SG4.set_logOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    SG5.set_logOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    cmdDisp.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    cmdSeq.set_logOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    eventLogger.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    fatalAdapter.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    fileDownlink.set_eventOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    fileManager.set_eventOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    fileUplink.set_eventOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    fileUplinkBufferManager.set_eventOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    health.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    pingRcvr.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    prmDb.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    rateGroup1Comp.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    rateGroup2Comp.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    rateGroup3Comp.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    recvBuffComp.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    sendBuffComp.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    systemResources.set_Log_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );
    typeDemo.set_logOut_OutputPort(
        0,
        eventLogger.get_LogRecv_InputPort(0)
    );

    // FaultProtection
    eventLogger.set_FatalAnnounce_OutputPort(
        0,
        fatalHandler.get_FatalReceive_InputPort(0)
    );

    // Health
    blockDrv.set_PingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(0)
    );
    cmdDisp.set_pingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(1)
    );
    cmdSeq.set_pingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(2)
    );
    eventLogger.set_pingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(3)
    );
    fileDownlink.set_pingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(4)
    );
    fileManager.set_pingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(5)
    );
    fileUplink.set_pingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(6)
    );
    health.set_PingSend_OutputPort(
        0,
        blockDrv.get_PingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        1,
        cmdDisp.get_pingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        2,
        cmdSeq.get_pingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        3,
        eventLogger.get_pingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        4,
        fileDownlink.get_pingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        5,
        fileManager.get_pingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        6,
        fileUplink.get_pingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        7,
        pingRcvr.get_PingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        8,
        prmDb.get_pingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        9,
        rateGroup1Comp.get_PingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        10,
        rateGroup2Comp.get_PingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        11,
        rateGroup3Comp.get_PingIn_InputPort(0)
    );
    health.set_PingSend_OutputPort(
        12,
        tlmSend.get_pingIn_InputPort(0)
    );
    pingRcvr.set_PingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(7)
    );
    prmDb.set_pingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(8)
    );
    rateGroup1Comp.set_PingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(9)
    );
    rateGroup2Comp.set_PingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(10)
    );
    rateGroup3Comp.set_PingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(11)
    );
    tlmSend.set_pingOut_OutputPort(
        0,
        health.get_PingReturn_InputPort(12)
    );

    // Parameters
    recvBuffComp.set_ParamGet_OutputPort(
        0,
        prmDb.get_getPrm_InputPort(0)
    );
    recvBuffComp.set_ParamSet_OutputPort(
        0,
        prmDb.get_setPrm_InputPort(0)
    );
    sendBuffComp.set_ParamGet_OutputPort(
        0,
        prmDb.get_getPrm_InputPort(0)
    );
    sendBuffComp.set_ParamSet_OutputPort(
        0,
        prmDb.get_setPrm_InputPort(0)
    );
    typeDemo.set_prmGetOut_OutputPort(
        0,
        prmDb.get_getPrm_InputPort(0)
    );
    typeDemo.set_prmSetOut_OutputPort(
        0,
        prmDb.get_setPrm_InputPort(0)
    );

    // RateGroups
    blockDrv.set_CycleOut_OutputPort(
        0,
        rateGroupDriverComp.get_CycleIn_InputPort(0)
    );
    rateGroup1Comp.set_RateGroupMemberOut_OutputPort(
        0,
        SG1.get_schedIn_InputPort(0)
    );
    rateGroup1Comp.set_RateGroupMemberOut_OutputPort(
        1,
        SG2.get_schedIn_InputPort(0)
    );
    rateGroup1Comp.set_RateGroupMemberOut_OutputPort(
        2,
        tlmSend.get_Run_InputPort(0)
    );
    rateGroup1Comp.set_RateGroupMemberOut_OutputPort(
        3,
        fileDownlink.get_Run_InputPort(0)
    );
    rateGroup1Comp.set_RateGroupMemberOut_OutputPort(
        4,
        systemResources.get_run_InputPort(0)
    );
    rateGroup2Comp.set_RateGroupMemberOut_OutputPort(
        0,
        cmdSeq.get_schedIn_InputPort(0)
    );
    rateGroup2Comp.set_RateGroupMemberOut_OutputPort(
        1,
        sendBuffComp.get_SchedIn_InputPort(0)
    );
    rateGroup2Comp.set_RateGroupMemberOut_OutputPort(
        2,
        SG3.get_schedIn_InputPort(0)
    );
    rateGroup2Comp.set_RateGroupMemberOut_OutputPort(
        3,
        SG4.get_schedIn_InputPort(0)
    );
    rateGroup3Comp.set_RateGroupMemberOut_OutputPort(
        0,
        health.get_Run_InputPort(0)
    );
    rateGroup3Comp.set_RateGroupMemberOut_OutputPort(
        1,
        SG5.get_schedIn_InputPort(0)
    );
    rateGroup3Comp.set_RateGroupMemberOut_OutputPort(
        2,
        blockDrv.get_Sched_InputPort(0)
    );
    rateGroup3Comp.set_RateGroupMemberOut_OutputPort(
        3,
        fileUplinkBufferManager.get_schedIn_InputPort(0)
    );
    rateGroupDriverComp.set_CycleOut_OutputPort(
        0,
        rateGroup1Comp.get_CycleIn_InputPort(0)
    );
    rateGroupDriverComp.set_CycleOut_OutputPort(
        1,
        rateGroup2Comp.get_CycleIn_InputPort(0)
    );
    rateGroupDriverComp.set_CycleOut_OutputPort(
        2,
        rateGroup3Comp.get_CycleIn_InputPort(0)
    );

    // Ref
    blockDrv.set_BufferOut_OutputPort(
        0,
        recvBuffComp.get_Data_InputPort(0)
    );
    sendBuffComp.set_Data_OutputPort(
        0,
        blockDrv.get_BufferIn_InputPort(0)
    );

    // Sequencer
    cmdDisp.set_seqCmdStatus_OutputPort(
        0,
        cmdSeq.get_cmdResponseIn_InputPort(0)
    );
    cmdSeq.set_comCmdOut_OutputPort(
        0,
        cmdDisp.get_seqCmdBuff_InputPort(0)
    );

    // Telemetry
    SG1.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    SG2.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    SG3.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    SG4.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    SG5.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    blockDrv.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    cmdDisp.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    cmdSeq.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    fileDownlink.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    fileManager.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    fileUplink.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    fileUplinkBufferManager.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    health.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    pingRcvr.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    rateGroup1Comp.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    rateGroup2Comp.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    rateGroup3Comp.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    recvBuffComp.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    sendBuffComp.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    systemResources.set_Tlm_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );
    typeDemo.set_tlmOut_OutputPort(
        0,
        tlmSend.get_TlmRecv_InputPort(0)
    );

    // TextEvents
    SG1.set_logTextOut_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    SG2.set_logTextOut_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    SG3.set_logTextOut_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    SG4.set_logTextOut_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    SG5.set_logTextOut_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    cmdDisp.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    cmdSeq.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    eventLogger.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    fatalAdapter.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    fileDownlink.set_textEventOut_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    fileManager.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    fileUplink.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    fileUplinkBufferManager.set_textEventOut_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    health.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    pingRcvr.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    prmDb.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    rateGroup1Comp.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    rateGroup2Comp.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    rateGroup3Comp.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    recvBuffComp.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    sendBuffComp.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    systemResources.set_LogText_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );
    typeDemo.set_logTextOut_OutputPort(
        0,
        textLogger.get_TextLogger_InputPort(0)
    );

    // Time
    SG1.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    SG2.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    SG3.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    SG4.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    SG5.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    blockDrv.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    cmdDisp.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    cmdSeq.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    eventLogger.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    fatalAdapter.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    fileDownlink.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    fileManager.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    fileUplink.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    fileUplinkBufferManager.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    health.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    pingRcvr.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    prmDb.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    rateGroup1Comp.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    rateGroup2Comp.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    rateGroup3Comp.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    recvBuffComp.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    sendBuffComp.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    systemResources.set_Time_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );
    typeDemo.set_timeCaller_OutputPort(
        0,
        linuxTime.get_timeGetPort_InputPort(0)
    );

    // Uplink
    cmdDisp.set_seqCmdStatus_OutputPort(
        1,
        uplink.get_cmdResponseIn_InputPort(0)
    );
    comm.set_allocate_OutputPort(
        0,
        staticMemory.get_bufferAllocate_InputPort(1)
    );
    comm.set_recv_OutputPort(
        0,
        uplink.get_framedIn_InputPort(0)
    );
    fileUplink.set_bufferSendOut_OutputPort(
        0,
        fileUplinkBufferManager.get_bufferSendIn_InputPort(0)
    );
    uplink.set_bufferAllocate_OutputPort(
        0,
        fileUplinkBufferManager.get_bufferGetCallee_InputPort(0)
    );
    uplink.set_bufferDeallocate_OutputPort(
        0,
        fileUplinkBufferManager.get_bufferSendIn_InputPort(0)
    );
    uplink.set_bufferOut_OutputPort(
        0,
        fileUplink.get_bufferSendIn_InputPort(0)
    );
    uplink.set_comOut_OutputPort(
        0,
        cmdDisp.get_seqCmdBuff_InputPort(1)
    );
    uplink.set_framedDeallocate_OutputPort(
        0,
        staticMemory.get_bufferDeallocate_InputPort(1)
    );
  }

  void regCommands() {
    SG1.regCommands();
    SG2.regCommands();
    SG3.regCommands();
    SG4.regCommands();
    SG5.regCommands();
    cmdDisp.regCommands();
    cmdSeq.regCommands();
    eventLogger.regCommands();
    fileDownlink.regCommands();
    fileManager.regCommands();
    health.regCommands();
    pingRcvr.regCommands();
    prmDb.regCommands();
    recvBuffComp.regCommands();
    sendBuffComp.regCommands();
    systemResources.regCommands();
    typeDemo.regCommands();
  }

  void loadParameters() {
    recvBuffComp.loadParameters();
    sendBuffComp.loadParameters();
    typeDemo.loadParameters();
  }

  void startTasks(const TopologyState& state) {
    blockDrv.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::blockDrv),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::blockDrv),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::blockDrv)
    );
    cmdDisp.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::cmdDisp),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::cmdDisp),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::cmdDisp)
    );
    cmdSeq.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::cmdSeq),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::cmdSeq),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::cmdSeq)
    );
    eventLogger.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::eventLogger),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::eventLogger),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::eventLogger)
    );
    fileDownlink.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::fileDownlink),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::fileDownlink),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::fileDownlink)
    );
    fileManager.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::fileManager),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::fileManager),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::fileManager)
    );
    fileUplink.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::fileUplink),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::fileUplink),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::fileUplink)
    );
    pingRcvr.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::pingRcvr),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::pingRcvr),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::pingRcvr)
    );
    prmDb.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::prmDb),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::prmDb),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::prmDb)
    );
    rateGroup1Comp.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::rateGroup1Comp),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::rateGroup1Comp),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::rateGroup1Comp)
    );
    rateGroup2Comp.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::rateGroup2Comp),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::rateGroup2Comp),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::rateGroup2Comp)
    );
    rateGroup3Comp.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::rateGroup3Comp),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::rateGroup3Comp),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::rateGroup3Comp)
    );
    tlmSend.start(
      static_cast<NATIVE_UINT_TYPE>(Priorities::tlmSend),
      static_cast<NATIVE_UINT_TYPE>(StackSizes::tlmSend),
      Os::Task::TASK_DEFAULT, // Default CPU
      static_cast<NATIVE_UINT_TYPE>(TaskIds::tlmSend)
    );
  }

  void stopTasks(const TopologyState& state) {
    blockDrv.exit();
    cmdDisp.exit();
    cmdSeq.exit();
    eventLogger.exit();
    fileDownlink.exit();
    fileManager.exit();
    fileUplink.exit();
    pingRcvr.exit();
    prmDb.exit();
    rateGroup1Comp.exit();
    rateGroup2Comp.exit();
    rateGroup3Comp.exit();
    tlmSend.exit();
  }

  void freeThreads(const TopologyState& state) {
    (void) blockDrv.ActiveComponentBase::join(nullptr);
    (void) cmdDisp.ActiveComponentBase::join(nullptr);
    (void) cmdSeq.ActiveComponentBase::join(nullptr);
    (void) eventLogger.ActiveComponentBase::join(nullptr);
    (void) fileDownlink.ActiveComponentBase::join(nullptr);
    (void) fileManager.ActiveComponentBase::join(nullptr);
    (void) fileUplink.ActiveComponentBase::join(nullptr);
    (void) pingRcvr.ActiveComponentBase::join(nullptr);
    (void) prmDb.ActiveComponentBase::join(nullptr);
    (void) rateGroup1Comp.ActiveComponentBase::join(nullptr);
    (void) rateGroup2Comp.ActiveComponentBase::join(nullptr);
    (void) rateGroup3Comp.ActiveComponentBase::join(nullptr);
    (void) tlmSend.ActiveComponentBase::join(nullptr);
  }

  // ----------------------------------------------------------------------
  // Setup and teardown functions
  // ----------------------------------------------------------------------

  void setup(const TopologyState& state) {
    initComponents(state);
    setBaseIds();
    connectComponents();
    regCommands();
    loadParameters();
    startTasks(state);
  }

  void teardown(const TopologyState& state) {
    stopTasks(state);
    freeThreads(state);
  }

}
