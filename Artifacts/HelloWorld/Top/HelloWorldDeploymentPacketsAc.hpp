

#ifndef HelloWorldDeploymentPackets_header_h
#define HelloWorldDeploymentPackets_header_h

#include <Svc/TlmPacketizer/TlmPacketizerTypes.hpp>

namespace HelloWorldDeployment {

    // set of packets to send
    extern const Svc::TlmPacketizerPacketList HelloWorldDeploymentPacketsPkts;
    // set of channels to ignore
    extern const Svc::TlmPacketizerPacket HelloWorldDeploymentPacketsIgnore;

}

#endif // HelloWorldDeploymentPackets_header_h

