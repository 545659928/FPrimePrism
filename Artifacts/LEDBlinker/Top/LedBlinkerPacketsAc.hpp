

#ifndef LedBlinkerPackets_header_h
#define LedBlinkerPackets_header_h

#include <Svc/TlmPacketizer/TlmPacketizerTypes.hpp>

namespace LedBlinker {

    // set of packets to send
    extern const Svc::TlmPacketizerPacketList LedBlinkerPacketsPkts;
    // set of channels to ignore
    extern const Svc::TlmPacketizerPacket LedBlinkerPacketsIgnore;

}

#endif // LedBlinkerPackets_header_h

