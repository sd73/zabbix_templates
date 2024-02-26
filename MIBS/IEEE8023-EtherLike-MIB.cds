                                                   j"The MIB module to describe generic objects for
                       Ethernet-like network interfaces."H"WG-URL: http://www.ieee802.org/3/index.html
            WG-EMail: STDS-802-3-MIB@LISTSERV.IEEE.ORG

            Contact: Howard Frazier
            Postal:  3151 Zanker Road
                     San Jose, CA 95134
                     USA
            Tel:     +1.408.922.8164
            E-mail:  hfrazier@broadcom.com" "201304110000Z" "201102020000Z" A"Revision, based on an earlier version in IEEE Std 802.3.1-2011." U"Initial version, based on an earlier version published 
              in RFC 3635."       -- April 11, 2013
           �"Statistics for a collection of Ethernet-like
                       interfaces attached to a particular system.
                       There will be one row in this table for each
                       Ethernet-like interface in the system."                       ["Statistics for a particular interface to an
                       Ethernet-like medium."                      1"An index value that uniquely identifies an
                       interface to an Ethernet-like medium. The
                       interface identified by a particular value of
                       this index is the same interface as identified
                       by the same value of ifIndex." "IETF RFC 2863, ifIndex"                    �"A count of frames received on a particular
                       interface that are not an integral number of
                       octets in length and do not pass the FCS check.

                       The count represented by an instance of this
                       object is incremented when the alignmentError
                       status is returned by the MAC service to the
                       LLC (or other MAC user). Received frames for
                       which multiple error conditions pertain are,
                       according to the conventions of IEEE 802.3
                       Layer Management, counted exclusively according
                       to the error status presented to the LLC.

                       This counter does not increment for group
                       encoding schemes greater than 4 bits per group.

                       For interfaces operating at 10 Gb/s, this
                       counter can roll over in less than 5 minutes if
                       it is incrementing at its maximum rate. Since
                       that amount of time could be less than a
                       management station's poll cycle time, in order
                       to avoid a loss of information, a management
                       station is advised to poll the
                       dot3HCStatsAlignmentErrors object for 10 Gb/s
                       or faster interfaces.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." F"IEEE Std 802.3, 30.3.1.1.7,
                       aAlignmentErrors"                    �"A count of frames received on a particular
                       interface that are an integral number of octets
                       in length but do not pass the FCS check. This
                       count does not include frames received with
                       frame-too-long or frame-too-short error.

                       The count represented by an instance of this
                       object is incremented when the frameCheckError
                       status is returned by the MAC service to the
                       LLC (or other MAC user). Received frames for
                       which multiple error conditions pertain are,
                       according to the conventions of IEEE 802.3
                       Layer Management, counted exclusively according
                       to the error status presented to the LLC.

                       Note:  Coding errors detected by the Physical
                       Layer for speeds above 10 Mb/s will cause the
                       frame to fail the FCS check.

                       For interfaces operating at 10 Gb/s, this
                       counter can roll over in less than 5 minutes if

                       it is incrementing at its maximum rate. Since
                       that amount of time could be less than a
                       management station's poll cycle time, in order
                       to avoid a loss of information, a management
                       station is advised to poll the
                       dot3HCStatsFCSErrors object for 10 Gb/s or
                       faster interfaces.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." P"IEEE Std 802.3, 30.3.1.1.6,
                       aFrameCheckSequenceErrors."                    �"A count of frames that are involved in a single
                       collision, and are subsequently transmitted
                       successfully.

                       A frame that is counted by an instance of this
                       object is also counted by the corresponding
                       instance of either the ifOutUcastPkts,
                       ifOutMulticastPkts, or ifOutBroadcastPkts,
                       and is not counted by the corresponding
                       instance of the dot3StatsMultipleCollisionFrames
                       object.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." M"IEEE Std 802.3, 30.3.1.1.3,
                       aSingleCollisionFrames."                    �"A count of frames that are involved in more

                       than one collision and are subsequently
                       transmitted successfully.

                       A frame that is counted by an instance of this
                       object is also counted by the corresponding
                       instance of either the ifOutUcastPkts,
                       ifOutMulticastPkts, or ifOutBroadcastPkts,
                       and is not counted by the corresponding
                       instance of the dot3StatsSingleCollisionFrames
                       object.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." O"IEEE Std 802.3, 30.3.1.1.4,
                       aMultipleCollisionFrames."                    a"A count of times that the SQE TEST ERROR
                       is received on a particular interface. The
                       SQE TEST ERROR is set in accordance with the
                       rules for verification of the SQE detection
                       mechanism in the PLS Carrier Sense Function as
                       described in IEEE Std 802.3, 7.2.4.6.

                       This counter does not increment on interfaces
                       operating at speeds greater than 10 Mb/s, or on
                       interfaces operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." S"IEEE Std 802.3, 7.2.4.6, also 30.3.2.1.4,
                       aSQETestErrors."                    �"A count of frames for which the first
                       transmission attempt on a particular interface
                       is delayed because the medium is busy.

                       The count represented by an instance of this
                       object does not include frames involved in
                       collisions.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." S"IEEE Std 802.3, 30.3.1.1.9,
                       aFramesWithDeferredXmissions."                    }"The number of times that a collision is
                       detected on a particular interface later than
                       one slotTime into the transmission of a packet.

                       A (late) collision included in a count
                       represented by an instance of this object is
                       also considered as a (generic) collision for
                       purposes of other collision-related
                       statistics.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." G"IEEE Std 802.3, 30.3.1.1.10,
                       aLateCollisions."                    2"A count of frames for which transmission on a
                       particular interface fails due to excessive
                       collisions.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." R"IEEE Std 802.3, 30.3.1.1.11,
                       aFramesAbortedDueToXSColls."                    "A count of frames for which transmission on a
                       particular interface fails due to an internal
                       MAC sublayer transmit error. A frame is only
                       counted by an instance of this object if it is
                       not counted by the corresponding instance of
                       either the dot3StatsLateCollisions object, the
                       dot3StatsExcessiveCollisions object, or the
                       dot3StatsCarrierSenseErrors object.

                       The precise meaning of the count represented by
                       an instance of this object is implementation-
                       specific. In particular, an instance of this
                       object may represent a count of transmission
                       errors on a particular interface that are not
                       otherwise counted.

                       For interfaces operating at 10 Gb/s, this
                       counter can roll over in less than 5 minutes if
                       it is incrementing at its maximum rate. Since
                       that amount of time could be less than a
                       management station's poll cycle time, in order
                       to avoid a loss of information, a management
                       station is advised to poll the
                       dot3HCStatsInternalMacTransmitErrors object for
                       10 Gb/s or faster interfaces.

                       Discontinuities in the value of this counter can

                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." W"IEEE Std 802.3, 30.3.1.1.12,
                       aFramesLostDueToIntMACXmitError."                    �"The number of times that the carrier sense
                       condition was lost or never asserted when
                       attempting to transmit a frame on a particular
                       interface.

                       The count represented by an instance of this
                       object is incremented at most once per
                       transmission attempt, even if the carrier sense
                       condition fluctuates during a transmission
                       attempt.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." K"IEEE Std 802.3, 30.3.1.1.13,
                       aCarrierSenseErrors."                    "A count of frames received on a particular
                       interface that exceed the maximum permitted
                       frame size.

                       The count represented by an instance of this
                       object is incremented when the frameTooLong
                       status is returned by the MAC service to the
                       LLC (or other MAC user). Received frames for
                       which multiple error conditions pertain are,

                       according to the conventions of IEEE 802.3
                       Layer Management, counted exclusively according
                       to the error status presented to the LLC.

                       For interfaces operating at 10 Gb/s, this
                       counter can roll over in less than 80 minutes if
                       it is incrementing at its maximum rate. Since
                       that amount of time could be less than a
                       management station's poll cycle time, in order
                       to avoid a loss of information, a management
                       station is advised to poll the
                       dot3HCStatsFrameTooLongs object for 10 Gb/s
                       or faster interfaces.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." K"IEEE Std 802.3, 30.3.1.1.25,
                       aFrameTooLongErrors."                    �"A count of frames for which reception on a
                       particular interface fails due to an internal
                       MAC sublayer receive error. A frame is only
                       counted by an instance of this object if it is
                       not counted by the corresponding instance of
                       either the dot3StatsFrameTooLongs object, the
                       dot3StatsAlignmentErrors object, or the
                       dot3StatsFCSErrors object.

                       The precise meaning of the count represented by
                       an instance of this object is implementation-
                       specific. In particular, an instance of this
                       object may represent a count of receive errors
                       on a particular interface that are not
                       otherwise counted.

                       For interfaces operating at 10 Gb/s, this
                       counter can roll over in less than 5 minutes if

                       it is incrementing at its maximum rate. Since
                       that amount of time could be less than a
                       management station's poll cycle time, in order
                       to avoid a loss of information, a management
                       station is advised to poll the
                       dot3HCStatsInternalMacReceiveErrors object for
                       10 Gb/s or faster interfaces.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." V"IEEE Std 802.3, 30.3.1.1.15,
                       aFramesLostDueToIntMACRcvError."                    m"For an interface operating at 100 Mb/s, the
                       number of times there was an invalid data symbol
                       when a valid carrier was present.

                       For an interface operating in half-duplex mode
                       at 1000 Mb/s, the number of times the receiving
                       media is non-idle (a carrier event) for a period
                       of time equal to or greater than slotTime, and
                       during which there was at least one occurrence
                       of an event that causes the PHY to indicate
                       'Data reception error' or 'carrier extend error'
                       on the GMII.

                       For an interface operating in full-duplex mode
                       at 1000 Mb/s, the number of times the receiving
                       media is non-idle (a carrier event) for a period
                       of time equal to or greater than minFrameSize,
                       and during which there was at least one
                       occurrence of an event that causes the PHY to
                       indicate 'Data reception error' on the GMII.

                       For an interface operating at 10 Gb/s, 40 Gb/s, and 
                       100 Gb/s, it is a count of the number of times the 
                       receiving media is non-idle (the time between the 
                       Start of Packet Delimiter and the End of Packet 
                       Delimiter) for a period of time equal to or greater 
                       than minFrameSize, and during which there was at least 
                       one occurrence of an event that causes the PHY to 
                       indicate 'Receive Error' on the XGMII, the XLGMII, 
                       or the CGMII.

                       The count represented by an instance of this
                       object is incremented at most once per carrier
                       event, even if multiple symbol errors occur
                       during the carrier event. This count does
                       not increment if a collision is present.

                       This counter does not increment when the
                       interface is operating at 10 Mb/s.

                       For interfaces operating at 10 Gb/s, this
                       counter can roll over in less than 5 minutes if
                       it is incrementing at its maximum rate. Since
                       that amount of time could be less than a
                       management station's poll cycle time, in order
                       to avoid a loss of information, a management
                       station is advised to poll the
                       dot3HCStatsSymbolErrors object for 10 Gb/s
                       or faster interfaces.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." P"IEEE Std 802.3, 30.3.2.1.5,
                       aSymbolErrorDuringCarrier."                    m"The current mode of operation of the MAC
                       entity. 'unknown' indicates that the current
                       duplex mode could not be determined.

                       Management control of the duplex mode is
                       accomplished through the MAU MIB. When
                       an interface does not support autonegotiation,
                       or when autonegotiation is not enabled, the
                       duplex mode is controlled using
                       ifMauDefaultType. When autonegotiation is
                       supported and enabled, duplex mode is controlled
                       using ifMauAutoNegAdvertisedBits. In either
                       case, the currently operating duplex mode is
                       reflected both in this object and in ifMauType.

                       Note that this object provides redundant
                       information with ifMauType. Normally, redundant
                       objects are discouraged. However, in this
                       instance, it allows a management application to
                       determine the duplex status of an interface
                       without having to know every possible value of
                       ifMauType. This was felt to be sufficiently
                       valuable to justify the redundancy." E"IEEE Std 802.3, 30.3.1.1.32,
                       aDuplexStatus."                     "'true' for interfaces operating at speeds above
                       1000 Mb/s that support Rate Control through
                       lowering the average data rate of the MAC
                       sublayer, with frame granularity, and 'false'
                       otherwise." K"IEEE Std 802.3, 30.3.1.1.33,
                       aRateControlAbility."                     k"The current Rate Control mode of operation of
                       the MAC sublayer of this interface." J"IEEE Std 802.3, 30.3.1.1.34,
                       aRateControlStatus."                     �"This indicates the MAC frame length at 
                        which the dot3StatsFrameTooLongs counter is 
                        incremented." /"IEEE Std 802.3, 30.3.1.1.37, aMaxFrameLength."                     b"A collection of collision histograms for a
                       particular set of interfaces." H"IEEE Std 802.3, 30.3.1.1.30,
                       aCollisionFrames."                    �"A cell in the histogram of per-frame
                       collisions for a particular interface. An

                       instance of this object represents the
                       frequency of individual MAC frames for which
                       the transmission (successful or otherwise) on a
                       particular interface is accompanied by a
                       particular number of media collisions."                       �"The number of per-frame media collisions for
                       which a particular collision histogram cell
                       represents the frequency on a particular
                       interface."                      {"A count of individual MAC frames for which the
                       transmission (successful or otherwise) on a
                       particular interface occurs after the
                       frame has experienced exactly the number
                       of collisions in the associated
                       dot3CollCount object.

                       For example, a frame which is transmitted
                       on interface 77 after experiencing
                       exactly 4 collisions would be indicated
                       by incrementing only dot3CollFrequencies.77.4.
                       No other instance of dot3CollFrequencies would
                       be incremented in this example.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can

                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime."                      �"A table of descriptive and status information
                       about the MAC Control sublayer on the
                       Ethernet-like interfaces attached to a
                       particular system. There will be one row in
                       this table for each Ethernet-like interface in
                       the system which implements the MAC Control
                       sublayer. If some, but not all, of the
                       Ethernet-like interfaces in the system implement
                       the MAC Control sublayer, there will be fewer
                       rows in this table than in the dot3StatsTable."                       �"An entry in the table, containing information
                       about the MAC Control sublayer on a single
                       Ethernet-like interface."                       f"A list of the possible MAC Control functions
                       implemented for this interface." R"IEEE Std 802.3, 30.3.3.2,
                       aMACControlFunctionsSupported."                    "A count of MAC Control frames received on this
                       interface that contain an opcode that is not
                       supported by this device.

                       For interfaces operating at 10 Gb/s, this
                       counter can roll over in less than 5 minutes if
                       it is incrementing at its maximum rate. Since
                       that amount of time could be less than a
                       management station's poll cycle time, in order
                       to avoid a loss of information, a management
                       station is advised to poll the
                       dot3HCControlInUnknownOpcodes object for 10 Gb/s
                       or faster interfaces.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." O"IEEE Std 802.3, 30.3.3.5,
                       aUnsupportedOpcodesReceived"                    �"A count of MAC Control frames received on this
                       interface that contain an opcode that is not
                       supported by this device.

                       This counter is a 64-bit version of
                       dot3ControlInUnknownOpcodes. It should be used
                       on interfaces operating at 10 Gb/s or faster.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." O"IEEE Std 802.3, 30.3.3.5,
                       aUnsupportedOpcodesReceived"                    �"A table of descriptive and status information
                       about the MAC Control PAUSE function on the
                       Ethernet-like interfaces attached to a
                       particular system. There will be one row in
                       this table for each Ethernet-like interface in
                       the system which supports the MAC Control PAUSE
                       function (i.e., the 'pause' bit in the
                       corresponding instance of
                       dot3ControlFunctionsSupported is set). If some,
                       but not all, of the Ethernet-like interfaces in
                       the system implement the MAC Control PAUSE
                       function (for example, if some interfaces only
                       support half-duplex), there will be fewer rows
                       in this table than in the dot3StatsTable."                       �"An entry in the table, containing information
                       about the MAC Control PAUSE function on a single
                       Ethernet-like interface."                      "This object is used to configure the default
                       administrative PAUSE mode for this interface.

                       This object represents the
                       administratively-configured PAUSE mode for this
                       interface. If Auto-Negotiation is not enabled
                       or is not implemented for the active MAU
                       attached to this interface, the value of this
                       object determines the operational PAUSE mode
                       of the interface whenever it is operating in
                       full-duplex mode. In this case, a set to this
                       object will force the interface into the
                       specified mode.

                       If Auto-Negotiation is implemented and enabled
                       for the MAU attached to this interface, the
                       PAUSE mode for this interface is determined by
                       Auto-Negotiation, and the value of this object
                       denotes the mode to which the interface will
                       automatically revert if/when Auto-Negotiation is
                       later disabled. Note that when Auto-Negotiation
                       is running, administrative control of the PAUSE
                       mode may be accomplished using the
                       ifMauAutoNegCapAdvertisedBits object in the
                       MAU-MIB module.

                       Note that the value of this object is ignored
                       when the interface is not operating in
                       full-duplex mode.

                       An attempt to set this object to
                       'enabledXmit(2)' or 'enabledRcv(3)' will fail
                       on interfaces that do not support operation
                       at greater than 100 Mb/s."                      o"This object reflects the PAUSE mode currently

                       in use on this interface, as determined by
                       either (1) the result of the Auto-Negotiation
                       function or (2) if Auto-Negotiation is not
                       enabled or is not implemented for the active MAU
                       attached to this interface, by the value of
                       dot3PauseAdminMode. Interfaces operating at
                       100 Mb/s or less will never return
                       'enabledXmit(2)' or 'enabledRcv(3)'. Interfaces
                       operating in half-duplex mode will return
                       'disabled(1)'. Interfaces on which
                       Auto-Negotiation is enabled but not yet
                       completed should return the value
                       'disabled(1)'."                      w"A count of MAC Control frames received on this
                       interface with an opcode indicating the PAUSE
                       operation.

                       This counter does not increment when the
                       interface is operating in half-duplex mode.

                       For interfaces operating at 10 Gb/s, this
                       counter can roll over in less than 5 minutes if
                       it is incrementing at its maximum rate. Since
                       that amount of time could be less than a
                       management station's poll cycle time, in order
                       to avoid a loss of information, a management
                       station is advised to poll the
                       dot3HCInPauseFrames object for 10 Gb/s or
                       faster interfaces.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." P"IEEE Std 802.3, 30.3.4.3,
                       aPAUSEMACCtrlFramesReceived."                    {"A count of MAC Control frames transmitted on
                       this interface with an opcode indicating the
                       PAUSE operation.

                       This counter does not increment when the
                       interface is operating in half-duplex mode.

                       For interfaces operating at 10 Gb/s, this
                       counter can roll over in less than 5 minutes if
                       it is incrementing at its maximum rate. Since
                       that amount of time could be less than a
                       management station's poll cycle time, in order
                       to avoid a loss of information, a management
                       station is advised to poll the
                       dot3HCOutPauseFrames object for 10 Gb/s or
                       faster interfaces.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." S"IEEE Std 802.3, 30.3.4.2,
                       aPAUSEMACCtrlFramesTransmitted."                    �"A count of MAC Control frames received on this
                       interface with an opcode indicating the PAUSE
                       operation.

                       This counter does not increment when the
                       interface is operating in half-duplex mode.

                       This counter is a 64-bit version of
                       dot3InPauseFrames. It should be used on
                       interfaces operating at 10 Gb/s or faster.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." P"IEEE Std 802.3, 30.3.4.3,
                       aPAUSEMACCtrlFramesReceived."                    �"A count of MAC Control frames transmitted on
                       this interface with an opcode indicating the
                       PAUSE operation.

                       This counter does not increment when the
                       interface is operating in half-duplex mode.

                       This counter is a 64-bit version of
                       dot3OutPauseFrames. It should be used on
                       interfaces operating at 10 Gb/s or faster.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." S"IEEE Std 802.3, 30.3.4.2,
                       aPAUSEMACCtrlFramesTransmitted."                    s"A table containing 64-bit versions of error
                       counters from the dot3StatsTable. The 32-bit
                       versions of these counters may roll over quite
                       quickly on higher speed Ethernet interfaces.
                       The counters that have 64-bit versions in this
                       table are the counters that apply to full-duplex
                       interfaces, since 10 Gb/s and faster
                       Ethernet-like interfaces do not support
                       half-duplex, and very few 1000 Mb/s
                       Ethernet-like interfaces support half-duplex.

                       Entries in this table are recommended for
                       interfaces capable of operating at 1000 Mb/s or
                       faster, and are required for interfaces capable
                       of operating at 10 Gb/s or faster. Lower speed
                       Ethernet-like interfaces do not need entries in
                       this table, in which case there may be fewer
                       entries in this table than in the
                       dot3StatsTable. However, implementations
                       containing interfaces with a mix of speeds may
                       choose to implement entries in this table for
                       all Ethernet-like interfaces."                       e"An entry containing 64-bit statistics for a
                       single Ethernet-like interface."                      L"A count of frames received on a particular
                       interface that are not an integral number of
                       octets in length and do not pass the FCS check.

                       The count represented by an instance of this
                       object is incremented when the alignmentError
                       status is returned by the MAC service to the
                       LLC (or other MAC user). Received frames for
                       which multiple error conditions pertain are,
                       according to the conventions of IEEE 802.3
                       Layer Management, counted exclusively according
                       to the error status presented to the LLC.

                       This counter does not increment for group
                       encoding schemes greater than 4 bits per group.

                       This counter is a 64-bit version of
                       dot3StatsAlignmentErrors. It should be used
                       on interfaces operating at 10 Gb/s or faster.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management

                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." F"IEEE Std 802.3, 30.3.1.1.7,
                       aAlignmentErrors"                    "A count of frames received on a particular
                       interface that are an integral number of octets
                       in length but do not pass the FCS check. This
                       count does not include frames received with
                       frame-too-long or frame-too-short error.

                       The count represented by an instance of this
                       object is incremented when the frameCheckError
                       status is returned by the MAC service to the
                       LLC (or other MAC user). Received frames for
                       which multiple error conditions pertain are,
                       according to the conventions of IEEE 802.3
                       Layer Management, counted exclusively according
                       to the error status presented to the LLC.

                       Note:  Coding errors detected by the Physical
                       Layer for speeds above 10 Mb/s will cause the
                       frame to fail the FCS check.

                       This counter is a 64-bit version of
                       dot3StatsFCSErrors. It should be used on
                       interfaces operating at 10 Gb/s or faster.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." P"IEEE Std 802.3, 30.3.1.1.6,
                       aFrameCheckSequenceErrors."                    �"A count of frames for which transmission on a
                       particular interface fails due to an internal
                       MAC sublayer transmit error. A frame is only

                       counted by an instance of this object if it is
                       not counted by the corresponding instance of
                       either the dot3StatsLateCollisions object, the
                       dot3StatsExcessiveCollisions object, or the
                       dot3StatsCarrierSenseErrors object.

                       The precise meaning of the count represented by
                       an instance of this object is implementation-
                       specific. In particular, an instance of this
                       object may represent a count of transmission
                       errors on a particular interface that are not
                       otherwise counted.

                       This counter is a 64-bit version of
                       dot3StatsInternalMacTransmitErrors. It should
                       be used on interfaces operating at 10 Gb/s or
                       faster.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." W"IEEE Std 802.3, 30.3.1.1.12,
                       aFramesLostDueToIntMACXmitError."                    �"A count of frames received on a particular
                       interface that exceed the maximum permitted
                       frame size.

                       The count represented by an instance of this
                       object is incremented when the frameTooLong
                       status is returned by the MAC service to the
                       LLC (or other MAC user). Received frames for
                       which multiple error conditions pertain are,
                       according to the conventions of IEEE 802.3
                       Layer Management, counted exclusively according
                       to the error status presented to the LLC.

                       This counter is a 64-bit version of
                       dot3StatsFrameTooLongs. It should be used on
                       interfaces operating at 10 Gb/s or faster.

                       Discontinuities in the value of this counter can

                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." K"IEEE Std 802.3, 30.3.1.1.25,
                       aFrameTooLongErrors."                    ~"A count of frames for which reception on a
                       particular interface fails due to an internal
                       MAC sublayer receive error. A frame is only
                       counted by an instance of this object if it is
                       not counted by the corresponding instance of
                       either the dot3StatsFrameTooLongs object, the
                       dot3StatsAlignmentErrors object, or the
                       dot3StatsFCSErrors object.

                       The precise meaning of the count represented by
                       an instance of this object is implementation-
                       specific. In particular, an instance of this
                       object may represent a count of receive errors
                       on a particular interface that are not
                       otherwise counted.

                       This counter is a 64-bit version of
                       dot3StatsInternalMacReceiveErrors. It should be
                       used on interfaces operating at 10 Gb/s or
                       faster.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." V"IEEE Std 802.3, 30.3.1.1.15,
                       aFramesLostDueToIntMACRcvError."                    	�"For an interface operating at 100 Mb/s, the
                       number of times there was an invalid data symbol
                       when a valid carrier was present.


                       For an interface operating in half-duplex mode
                       at 1000 Mb/s, the number of times the receiving
                       media is non-idle (a carrier event) for a period
                       of time equal to or greater than slotTime, and
                       during which there was at least one occurrence
                       of an event that causes the PHY to indicate
                       'Data reception error' or 'carrier extend error'
                       on the GMII.

                       For an interface operating in full-duplex mode
                       at 1000 Mb/s, the number of times the receiving
                       media is non-idle (a carrier event) for a period
                       of time equal to or greater than minFrameSize,
                       and during which there was at least one
                       occurrence of an event that causes the PHY to
                       indicate 'Data reception error' on the GMII.

                       For an interface operating at 10 Gb/s, 40 Gb/s and
                       100 Gb/s, the number of times the receiving media is 
                       non-idle (a carrier event) for a period of time equal
                       to or greater than minFrameSize, and during which
                       there was at least one occurrence of an event
                       that causes the PHY to indicate 'Receive Error'
                       on the XGMII, the XLGMII, or the CGMII.

                       The count represented by an instance of this
                       object is incremented at most once per carrier
                       event, even if multiple symbol errors occur
                       during the carrier event. This count does
                       not increment if a collision is present.

                       This counter is a 64-bit version of
                       dot3StatsSymbolErrors. It should be used on
                       interfaces operating at 10 Gb/s or faster.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." P"IEEE Std 802.3, 30.3.2.1.5,
                       aSymbolErrorDuringCarrier."                    �"A count reflecting the amount of time that the
                       LPI_REQUEST parameter has the value ASSERT. The
                       request is indicated to the PHY according to the
                       requirements of the RS (see IEEE Std 802.3 22.7,
                       35.4, and 46.4).
                       
                       This counter has a maximum increment rate of 
                       1 000 000 counts per second." 6"IEEE Std 802.3, 30.3.2.1.8 aTransmitLPIMicroseconds."                    �"A count reflecting the amount of time that the
                       LPI_INDICATION parameter has the value ASSERT. The
                       indication reflects the state of the PHY according to 
                       the requirements of the RS (see IEEE Std 802.3 22.7,
                       35.4, and 46.4).
                       
                       This counter has a maximum increment rate of 
                       1 000 000 counts per second." 5"IEEE Std 802.3, 30.3.2.1.9 aReceiveLPIMicroseconds."                    
"A count of occurrences of the transition from 
                        state LPI_DEASSERTED to state LPI_ASSERTED of 
                        the LPI transmit state diagram is the RS. 
                        The state transition corresponds to the assertion 
                        of the LPI_REQUEST parameter. The request is indicated 
                        to the PHY according to the requirements of the RS 
                        (see IEEE Std 802.3 22.7, 35.4, 46.4.)
                       
                        This counter has a maximum increment rate of 50 000 
                        counts per second at 100 Mb/s; 90 000 counts per 
                        second at 1000 Mb/s; and 230 000 counts per second 
                        at 10 Gb/s." 6"IEEE Std 802.3, 30.3.2.1.10 aTransmitLPITransitions."                    J"A count of occurrences of the transition from DEASSERT 
                       to ASSERT of the LPI_INDICATE parameter. The 
                       indication reflects the state of the PHY according to 
                       the requirements of the RS
                       (see IEEE Std 802.3 22.7, 35.4, and 46.4).
                       
                       This counter has a maximum increment rate of 50 000
                       counts per second at 100 Mb/s; 90 000 counts per second 
                       at 1000 Mb/s; and 230 000 counts per second at 10 Gb/s." 5"IEEE Std 802.3, 30.3.2.1.11 aReceiveLPITransitions."                     �"The maximum number of Slow Protocol frames 
                        of a given subtype that can be transmitted 
                        in a one second interval. The default value
                        is 10." Q"IEEE Std 802.3, 30.3.1.1.38, 
                        aSlowProtocolFrameLimit."                    U"A table of status information
                       about the Extension MAC Control frames transmitted
                       and received on the Ethernet-like interfaces attached 
                       to a particular system. There will be one row in
                       this table for each Ethernet-like interface in
                       the system which supports Extension MAC Control
                       function (i.e., the 'mpcp' bit in the
                       corresponding instance of
                       dot3ControlFunctionsSupported is set). If some,
                       but not all, of the Ethernet-like interfaces in
                       the system implement the Extension MAC Control
                       function, there will be fewer rows
                       in this table than in the dot3StatsTable."                       �"An entry in the table, containing information
                       about the Extension MAC Control function on a single
                       Ethernet-like interface."                      r"A count of Extension MAC Control frames received on 
                       this interface.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." T"IEEE Std 802.3, 30.3.8.2 
                       aEXTENSIONMACCtrlFramesReceived."                    t"A count of Extension MAC Control frames transmitted on
                       this interface.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." W"IEEE Std 802.3, 30.3.8.1 
                       aEXTENSIONMACCtrlFramesTransmitted."                     g"The current EXTENSIONMACCtrlStatus as described in
                        IEEE Std 802.3, 30.3.8.3." 4"IEEE Std 802.3, 30.3.8.3, aEXTENSIONMACCtrlStatus."                    �"A table of descriptive and status information
                       about the MAC Control Priority-based Flow Control 
                       function on the Ethernet-like interfaces attached to
                       a particular system. There will be one row in
                       this table for each Ethernet-like interface in
                       the system which supports the MAC Control PFC
                       function (i.e., the 'pfc' bit in the
                       corresponding instance of
                       dot3ControlFunctionsSupported is set). If some,
                       but not all, of the Ethernet-like interfaces in
                       the system implement the MAC Control PFC
                       function (for example, if some interfaces only
                       support half-duplex), there will be fewer rows
                       in this table than in the dot3StatsTable."                       �"An entry in the table, containing information
                       about the MAC Control PFC function on a single
                       Ethernet-like interface."                      �"This object is used to configure the default
                       administrative PFC mode for this interface.

                       This object represents the
                       administratively-configured PFC mode for this
                       interface. The value of this
                       object determines the operational PFC mode
                       of the interface. A set to this
                       object will force the interface into the
                       specified mode.

                       Note that the value of this object is ignored
                       when the interface is not operating in
                       full-duplex mode."                       �"This object reflects the PFC mode currently
                       in use on this interface, as determined by
                       by the value of dot3PFCAdminMode." +"IEEE Std 802.3, 30.3.3.6 aPFCenableStatus"                    �"A count of MAC Control frames received on this
                       interface with an opcode indicating the PFC
                       operation.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime."                      �"A count of MAC Control frames transmitted on
                       this interface with an opcode indicating the
                       PFC operation.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime."                               �"A collection of objects providing a histogram
                       of packets successfully transmitted after
                       experiencing exactly N collisions."                 �"A collection of objects providing information
                       applicable to Ethernet-like network interfaces
                       capable of operating at 10 Mb/s or slower in
                       half-duplex mode."                 �"A collection of objects providing information
                       applicable to Ethernet-like network interfaces
                       capable of operating at 100 Mb/s or faster."                 �"A collection of objects providing information
                       about the duplex mode of an Ethernet-like
                       network interface."                 �"A collection of objects providing information
                       about the MAC Control sublayer on Ethernet-like
                       network interfaces."                 �"A collection of objects providing information
                       about and control of the MAC Control PAUSE
                       function on Ethernet-like network interfaces."                 �"A collection of objects providing information
                       applicable to all Ethernet-like network
                       interfaces."                 �"A collection of objects providing information
                       applicable only to half-duplex Ethernet-like
                       network interfaces."                 �"A collection of objects providing high-capacity
                       statistics applicable to higher-speed
                       Ethernet-like network interfaces."                 �"A collection of objects providing high-capacity
                       statistics for the MAC Control sublayer on
                       higher-speed Ethernet-like network interfaces."                 �"A collection of objects providing high-capacity
                       statistics for the MAC Control PAUSE function on
                       higher-speed Ethernet-like network interfaces."                 �"A collection of objects providing information
                       about the Rate Control function on Ethernet-like
                       interfaces."                 �"A collection of objects providing information
                       about the Low Power Idle function on Ethernet-like
                       interfaces."                 �"An object providing control and information
                          about the frame transmission rate limit for 
                          Slow Protocols on Ethernet-like interfaces."                 �"A collection of objects providing information
                          about the Extension MAC Control function on 
                          Ethernet-like interfaces."                 �"A collection of objects providing information
                          about the Priority Flow Control function on 
                          Ethernet-like interfaces."                    �"The compliance statement for managed network
                           entities which have Ethernet-like network
                           interfaces.

                           Note that compliance with this MIB module
                           requires compliance with the ifCompliance3
                           MODULE-COMPLIANCE statement of the IF-MIB
                           (IETF RFC 2863). In addition, compliance with this
                           MIB module requires compliance  with the
                           mauModIfCompl3 MODULE-COMPLIANCE statement of
                           the MAU-MIB module defined in Clause 13."  )"This group is mandatory for all
                           Ethernet-like network interfaces which are
                           capable of operating in full-duplex mode.
                           It is highly recommended for all
                           Ethernet-like network interfaces."5"This group is mandatory for all
                           Ethernet-like network interfaces which are
                           capable of operating at speeds faster than
                           1000 Mb/s. It is highly recommended for all
                           Ethernet-like network interfaces." �"This group is mandatory for all
                           Ethernet-like network interfaces which are
                           capable of operating at 10 Mb/s or slower in
                           half-duplex mode." �"This group is mandatory for all
                           Ethernet-like network interfaces which are
                           capable of operating at 100 Mb/s or faster." �"This group is mandatory for all
                           Ethernet-like network interfaces which are
                           capable of operating in half-duplex mode."u"This group is mandatory for all
                           Ethernet-like network interfaces which are
                           capable of operating at 10 Gb/s or faster.
                           It is recommended for all Ethernet-like
                           network interfaces which are capable of
                           operating at 1000 Mb/s or faster." �"This group is mandatory for all
                           Ethernet-like network interfaces that
                           support the MAC Control sublayer." �"This group is mandatory for all
                           Ethernet-like network interfaces that
                           support the MAC Control sublayer and are
                           capable of operating at 10 Gb/s or faster." �"This group is mandatory for all
                           Ethernet-like network interfaces that
                           support the MAC Control PAUSE function.""This group is mandatory for all
                           Ethernet-like network interfaces that
                           support the MAC Control PAUSE function and
                           are capable of operating at 10 Gb/s or
                           faster."z"This group is optional. It is appropriate
                           for all Ethernet-like network interfaces
                           which are capable of operating in
                           half-duplex mode and have the necessary
                           metering. Implementation in systems with
                           such interfaces is highly recommended." �"This group is mandatory for all
                           Ethernet-like network interfaces that
                           support the Low Power Idle function." �"This group is optional. It is appropriate for
                           Ethernet-like network interfaces that implement OAM
                           as defined in Clause 57 of IEEE Std 802.3." �"This group is mandatory for all
                           Ethernet-like network interfaces that implement
                           Extension MAC Control." �"This group is mandatory for all
                           Ethernet-like network interfaces that implement
                           Priority Flow Control."                    