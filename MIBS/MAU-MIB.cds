     Z"Common enumeration values for repeater
                   and interface MAU jack types."                                                            H"Management information for 802.3 MAUs.

                   The following reference is used throughout
                   this MIB module:

                   [IEEE 802.3 Std] refers to
                      IEEE Std 802.3, 1998 Edition: 'Information
                      technology - Telecommunications and
                      information exchange between systems -
                      Local and metropolitan area networks -
                      Specific requirements - Part 3: Carrier
                      sense multiple access with collision
                      detection (CSMA/CD) access method and
                      physical layer specifications',
                      September 1998.

                   Of particular interest is Clause 30, '10Mb/s,
                   100Mb/s and 1000Mb/s Management'.""WG E-mail: hubmib@hprnd.rose.hp.com
          To subscribe: hubmib-request@hprnd.rose.hp.com

                 Chair: Dan Romascanu
                Postal: Lucent Technologies
                        Atidim Technology Park, Bldg. 3
                        Tel Aviv 61131
                        Israel
                   Tel: +972 3 645 8414, 6458458
                   Fax: +972 3 648 7146
                E-mail: dromasca@lucent.com

               Editors: Andrew Smith
                Postal: Extreme Networks, Inc.
                        10460 Bandley Drive
                        Cupertino, CA 95014
                        USA
                   Tel: +1 408 579-2821
                E-mail: andrew@extremenetworks.com

                        John Flick
                Postal: Hewlett-Packard Company
                        8000 Foothills Blvd. M/S 5557
                       Roseville, CA 95747-5557
                       USA
                  Tel: +1 916 785 4018
                  Fax: +1 916 785 1199
               E-mail: johnf@rose.hp.com
                       Kathryn de Graaf
               Postal: Argon Networks
                       25 Porter Road
                       Littleton, MA  01460
                       USA
                  Tel: +1 978 486 0665 x163
                  Fax: +1 978 486 9379
               E-mail: kdegraaf@argon.com"       -- August 24, 1999
    m-- REVISION    "9908240400Z"
-- DESCRIPTION "This version published as RFC 2668. Updated
--             to include support for 1000 Mb/sec
--            MAUs and flow control negotiation."
-- REVISION    "9710310000Z"
-- DESCRIPTION "This version published as RFC 2239."
-- REVISION    "9309300000Z"
-- DESCRIPTION "Initial version, published as RFC 1515."
        n"******** THIS COMPLIANCE IS DEPRECATED ********

                   Compliance for MAUs attached to repeater
                   ports.


                   This compliance is deprecated and replaced by
                   mauModRpCompl2, which corrects an oversight by
                   allowing rpMauStatus to be implemented
                   read-only."   �"Implementation of this optional group is
                       recommended for MAUs which have 100Mb/s or
                       greater capability." �"Implementation of this optional group is
                       recommended for MAUs which have one or more
                       external jacks." j"Implementation of this group is recommended
                       for MAUs attached to repeater ports."     -- STATUS      deprecated
       �"******** THIS COMPLIANCE IS DEPRECATED ********

                   Compliance for MAUs attached to interfaces.

                   This compliance is deprecated and replaced by
                   mauModIfCompl2."   �"Implementation of this optional group is
                       recommended for MAUs which have 100Mb/s
                       capability." �"Implementation of this optional group is
                       recommended for MAUs which have one or more
                       external jacks." �"Implementation of this group is mandatory
                       for MAUs which support managed


                       auto-negotiation." W"Implementation of this group is mandatory
                       for broadband MAUs." f"Implementation of this group is recommended
                       for MAUs attached to interfaces."     -- STATUS      deprecated
       -"Compliance for MAUs attached to interfaces."   �"Implementation of this optional group is
                       recommended for MAUs which have 100Mb/s
                       or greater capability." �"Implementation of this optional group is
                       recommended for MAUs which have one or more
                       external jacks." �"Implementation of this group is mandatory
                       for MAUs which support managed
                       auto-negotiation." �"Implementation of this group is mandatory
                       for MAUs which have 1000Mb/s or greater
                       capability and support managed
                       auto-negotiation." f"Implementation of this group is recommended
                       for MAUs attached to interfaces." "Write access is not required."             E"Compliance for MAUs attached to repeater
                   ports."   �"Implementation of this optional group is
                       recommended for MAUs which have 100Mb/s or
                       greater capability." �"Implementation of this optional group is
                       recommended for MAUs which have one or more
                       external jacks." j"Implementation of this group is recommended
                       for MAUs attached to repeater ports." "Write access is not required."                 �"Basic conformance group for MAUs attached to
                   repeater ports.  This group is also the
                   conformance specification for RFC 1515
                   implementations."                 �"Conformance group for MAUs attached to
                   repeater ports with 100 Mb/s or greater


                   capability."                 _"Conformance group for MAUs attached to
                   repeater ports with managed jacks."                 �"Basic conformance group for MAUs attached to
                   interfaces.  This group also provides a
                   conformance specification for RFC 1515
                   implementations."                "********* THIS GROUP IS DEPRECATED **********

                   Conformance group for MAUs attached to
                   interfaces with 100 Mb/s capability.

                   This object group has been deprecated in favor
                   of mauIfGrpHighCapacity."         -- STATUS      deprecated
       ["Conformance group for MAUs attached to
                   interfaces with managed jacks."                "********* THIS GROUP IS DEPRECATED **********

                   Conformance group for MAUs attached to
                   interfaces with managed auto-negotiation.

                   This object group has been deprecated in favor
                   of mauIfGrpAutoNeg2."         -- STATUS      deprecated
      �"********* THIS GROUP IS DEPRECATED **********

                   Conformance group for broadband MAUs attached
                   to interfaces.

                   This object group is deprecated.  There have
                   been no reported implementations of this group,
                   and it was felt to be unlikely that there will
                   be any future implementations."         -- STATUS      deprecated
       p"Conformance group for MAUs attached to


                   interfaces with 100 Mb/s or greater capability."                 f"Conformance group for MAUs attached to
                   interfaces with managed auto-negotiation."                 o"Conformance group for 1000Mbps MAUs attached to
                   interfaces with managed auto-negotiation."                     ""Notifications for repeater MAUs."                     #"Notifications for interface MAUs."                         �"Table of descriptive and status information
                   about the MAU(s) attached to the ports of a
                   repeater."                       W"An entry in the table, containing information
                   about a single MAU."                      �"This variable uniquely identifies the group
                   containing the port to which the MAU described
                   by this entry is connected.

                   Note:  In practice, a group will generally be
                   a field-replaceable unit (i.e., module, card,
                   or board) that can fit in the physical system
                   enclosure, and the group number will correspond
                   to a number marked on the physical enclosure.

                   The group denoted by a particular value of this
                   object is the same as the group denoted by the
                   same value of rptrGroupIndex." %"Reference RFC 2108, rptrGroupIndex."                     �"This variable uniquely identifies the repeater
                   port within group rpMauGroupIndex to which the
                   MAU described by this entry is connected." $"Reference RFC 2108, rptrPortIndex."                     �"This variable uniquely identifies the MAU
                   described by this entry from among other
                   MAUs connected to the same port
                   (rpMauPortIndex)." '"[IEEE 802.3 Std], 30.5.1.1.1, aMAUID."                    �"This object identifies the MAU type.  An
                   initial set of MAU types are defined above.  The
                   assignment of OBJECT IDENTIFIERs to new types of
                   MAUs is managed by the IANA.  If the MAU type is
                   unknown, the object identifier

                   unknownMauType OBJECT IDENTIFIER ::= { 0 0 }

                   is returned.  Note that unknownMauType is a
                   syntactically valid object identifier, and any
                   conformant implementation of ASN.1 and the BER
                   must be able to generate and recognize this
                   value." )"[IEEE 802.3 Std], 30.5.1.1.2, aMAUType."                    	8"The current state of the MAU.  This object MAY
                   be implemented as a read-only object by those
                   agents and MAUs that do not implement software
                   control of the MAU state.  Some agents may not
                   support setting the value of this object to some
                   of the enumerated values.

                   The value other(1) is returned if the MAU is in
                   a state other than one of the states 2 through
                   6.
                   The value unknown(2) is returned when the MAU's
                   true state is unknown; for example, when it is
                   being initialized.

                   A MAU in the operational(3) state is fully
                   functional, operates, and passes signals to its
                   attached DTE or repeater port in accordance to
                   its specification.

                   A MAU in standby(4) state forces DI and CI to
                   idle and the media transmitter to idle or fault,
                   if supported.  Standby(4) mode only applies to
                   link type MAUs.  The state of
                   rpMauMediaAvailable is unaffected.

                   A MAU in shutdown(5) state assumes the same
                   condition on DI, CI, and the media transmitter
                   as though it were powered down or not connected.
                   The MAU MAY return other(1) value for the
                   rpMauJabberState and rpMauMediaAvailable objects
                   when it is in this state.  For an AUI, this
                   state will remove power from the AUI.

                   Setting this variable to the value reset(6)
                   resets the MAU in the same manner as a
                   power-off, power-on cycle of at least one-half
                   second would.  The agent is not required to
                   return the value reset (6).

                   Setting this variable to the value
                   operational(3), standby(4), or shutdown(5)
                   causes the MAU to assume the respective state
                   except that setting a mixing-type MAU or an AUI
                   to standby(4) will cause the MAU to enter the
                   shutdown state." �"[IEEE 802.3 Std], 30.5.1.1.7, aMAUAdminState,
                       30.5.1.2.2, acMAUAdminControl, and 30.5.1.2.1,
                   acResetMAU."                    G"If the MAU is a link or fiber type (FOIRL,
                   10BASE-T, 10BASE-F) then this is equivalent to
                   the link test fail state/low light function.
                   For an AUI or a coax (including broadband) MAU
                   this indicates whether or not loopback is
                   detected on the DI circuit.  The value of this
                   attribute persists between packets for MAU types
                   AUI, 10BASE5, 10BASE2, 10BROAD36, and 10BASE-FP.

                   The value other(1) is returned if the
                   mediaAvailable state is not one of 2 through 11.

                   The value unknown(2) is returned when the MAU's
                   true state is unknown; for example, when it is
                   being initialized.  At power-up or following a
                   reset, the value of this attribute will be
                   unknown for AUI, coax, and 10BASE-FP MAUs.  For
                   these MAUs loopback will be tested on each
                   transmission during which no collision is
                   detected.  If DI is receiving input when DO
                   returns to IDL after a transmission and there
                   has been no collision during the transmission
                   then loopback will be detected.  The value of
                   this attribute will only change during
                   non-collided transmissions for AUI, coax, and
                   10BASE-FP MAUs.

                   For 100Mbps and 1000Mbps MAUs, the enumerations
                   match the states within the respective link
                   integrity state diagrams, fig 32-16, 23-12 and
                   24-15 of sections 32, 23 and 24 of [16].  Any
                   MAU which implements management of
                   auto-negotiation will map remote fault
                   indication to remote fault.

                   The value available(3) indicates that the link,
                   light, or loopback is normal.  The value
                   notAvailable(4) indicates link loss, low light,
                   or no loopback.
                   The value remoteFault(5) indicates that a fault
                   has been detected at the remote end of the link.
                   This value applies to 10BASE-FB, 100BASE-T4 Far
                   End Fault Indication and non-specified remote
                   faults from a system running auto-negotiation.
                   The values remoteJabber(7), remoteLinkLoss(8),
                   and remoteTest(9) SHOULD be used instead of
                   remoteFault(5) where the reason for remote fault
                   is identified in the remote signaling protocol.

                   The value invalidSignal(6) indicates that an
                   invalid signal has been received from the other
                   end of the link.  InvalidSignal(6) applies only
                   to MAUs of type 10BASE-FB.

                   Where an IEEE Std 802.3u-1995 clause 22 MII
                   is present, a logic one in the remote fault bit
                   (reference section 22.2.4.2.8 of that document)
                   maps to the value remoteFault(5), and a logic
                   zero in the link status bit (reference section
                   22.2.4.2.10 of that document) maps to the value
                   notAvailable(4).  The value notAvailable(4)
                   takes precedence over the value remoteFault(5).

                   Any MAU that implements management of clause 37
                   Auto-Negotiation will map the received Remote
                   Fault (RF1 and RF2) bit values for Offline to
                   offline(10), Link Failure to remoteFault(5) and
                   Auto-Negotiation Error to autoNegError(11)." 0"[IEEE 802.3 Std], 30.5.1.1.4, aMediaAvailable."                    �"A count of the number of times that
                   rpMauMediaAvailable for this MAU instance leaves
                   the state available(3).

                   Discontinuities in the value of this counter can
                   occur at re-initialization of the management
                   system, and at other times as indicated by the
                   value of rptrMonitorPortLastChange." ~"[IEEE 802.3 Std], 30.5.1.1.5,
                   aLoseMediaCounter.
                   RFC 2108, rptrMonitorPortLastChange"                    W"The value other(1) is returned if the jabber
                   state is not 2, 3, or 4.  The agent MUST always
                   return other(1) for MAU type dot3MauTypeAUI.

                   The value unknown(2) is returned when the MAU's
                   true state is unknown; for example, when it is
                   being initialized.

                   If the MAU is not jabbering the agent returns
                   noJabber(3).  This is the 'normal' state.

                   If the MAU is in jabber state the agent returns
                   the jabbering(4) value." E"[IEEE 802.3 Std], 30.5.1.1.6,
                 aJabber.jabberFlag."                    �"A count of the number of times that
                   mauJabberState for this MAU instance enters the
                   state jabbering(4).  For MAUs of type
                   dot3MauTypeAUI, dot3MauType100BaseT4,
                   dot3MauType100BaseTX, dot3MauType100BaseFX and
                       all 1000Mbps types, this counter will always
                       indicate zero.

                       Discontinuities in the value of this counter
                       can occur at re-initialization of the
                       management system, and at other times as
                       indicated by the value of
                       rptrMonitorPortLastChange." �"[IEEE 802.3 Std], 30.5.1.1.6,
                       aJabber.jabberCounter.
                       RFC 2108, rptrMonitorPortLastChange"                    "A count of the number of false carrier events
                   during IDLE in 100BASE-X links.  This counter
                   does not increment at the symbol rate.  It can
                   increment after a valid carrier completion at a
                   maximum rate of once per 100 ms until the next
                   carrier event.

                   This counter increments only for MAUs of type
                   dot3MauType100BaseT4, dot3MauType100BaseTX, and
                   dot3MauType100BaseFX and all 1000Mbps types.
                   For all other MAU types, this counter will
                   always indicate zero.

                   The approximate minimum time for rollover of
                   this counter is 7.4 hours.

                   Discontinuities in the value of this counter can
                   occur at re-initialization of the management
                   system, and at other times as indicated by the
                   value of rptrMonitorPortLastChange." h"[IEEE 802.3 Std], 30.5.1.1.10, aFalseCarriers.
                   RFC 2108, rptrMonitorPortLastChange"                     p"Information about the external jacks attached
                   to MAUs attached to the ports of a repeater."                       \"An entry in the table, containing information
                   about a particular jack."                       �"This variable uniquely identifies the jack
                   described by this entry from among other jacks
                   attached to the same MAU (rpMauIndex)."                       Z"The jack connector type, as it appears on the
                   outside of the system."                           h"Table of descriptive and status information
                   about MAU(s) attached to an interface."                       W"An entry in the table, containing information
                   about a single MAU."                       �"This variable uniquely identifies the interface
                   to which the MAU described by this entry is
                   connected." "RFC 1213, ifIndex"                     �"This variable uniquely identifies the MAU
                   described by this entry from among other MAUs
                   connected to the same interface (ifMauIfIndex)." '"[IEEE 802.3 Std], 30.5.1.1.1, aMAUID."                    �"This object identifies the MAU type.  An
                   initial set of MAU types are defined above.  The
                   assignment of OBJECT IDENTIFIERs to new types of
                   MAUs is managed by the IANA.  If the MAU type is
                   unknown, the object identifier

                   unknownMauType OBJECT IDENTIFIER ::= { 0 0 }

                   is returned.  Note that unknownMauType is a
                   syntactically valid object identifier, and any
                   conformant implementation of ASN.1 and the BER
                   must be able to generate and recognize this
                   value.

                   This object represents the operational type of
                   the MAU, as determined by either (1) the result
                   of the auto-negotiation function or (2) if
                   auto-negotiation is not enabled or is not
                   implemented for this MAU, by the value of the
                   object ifMauDefaultType.  In case (2), a set to
                   the object ifMauDefaultType will force the MAU
                   into the new operating mode." )"[IEEE 802.3 Std], 30.5.1.1.2, aMAUType."                    	8"The current state of the MAU.  This object MAY
                   be implemented as a read-only object by those
                   agents and MAUs that do not implement software
                   control of the MAU state.  Some agents may not
                   support setting the value of this object to some
                   of the enumerated values.

                   The value other(1) is returned if the MAU is in
                   a state other than one of the states 2 through
                   6.

                   The value unknown(2) is returned when the MAU's
                   true state is unknown; for example, when it is
                   being initialized.
                   A MAU in the operational(3) state is fully
                   functional, operates, and passes signals to its
                   attached DTE or repeater port in accordance to
                   its specification.

                   A MAU in standby(4) state forces DI and CI to
                   idle and the media transmitter to idle or fault,
                   if supported.  Standby(4) mode only applies to
                   link type MAUs.  The state of
                   ifMauMediaAvailable is unaffected.

                   A MAU in shutdown(5) state assumes the same
                   condition on DI, CI, and the media transmitter
                   as though it were powered down or not connected.
                   The MAU MAY return other(1) value for the
                   ifMauJabberState and ifMauMediaAvailable objects
                   when it is in this state.  For an AUI, this
                   state will remove power from the AUI.

                   Setting this variable to the value reset(6)
                   resets the MAU in the same manner as a
                   power-off, power-on cycle of at least one-half
                   second would.  The agent is not required to
                   return the value reset (6).

                   Setting this variable to the value
                   operational(3), standby(4), or shutdown(5)
                   causes the MAU to assume the respective state
                   except that setting a mixing-type MAU or an AUI
                   to standby(4) will cause the MAU to enter the
                   shutdown state." �"[IEEE 802.3 Std], 30.5.1.1.7, aMAUAdminState,
                   30.5.1.2.2, acMAUAdminControl, and 30.5.1.2.1,
                   acResetMAU."                    :"If the MAU is a link or fiber type (FOIRL,
                   10BASE-T, 10BASE-F) then this is equivalent to
                   the link test fail state/low light function.
                   For an AUI or a coax (including broadband) MAU
                   this indicates whether or not loopback is
                   detected on the DI circuit.  The value of this
                   attribute persists between packets for MAU types
                   AUI, 10BASE5, 10BASE2, 10BROAD36, and 10BASE-FP.

                   The value other(1) is returned if the
                   mediaAvailable state is not one of 2 through 11.

                   The value unknown(2) is returned when the MAU's
                   true state is unknown; for example, when it is
                   being initialized.  At power-up or following a
                   reset, the value of this attribute will be
                   unknown for AUI, coax, and 10BASE-FP MAUs.  For
                   these MAUs loopback will be tested on each
                   transmission during which no collision is
                   detected.  If DI is receiving input when DO
                   returns to IDL after a transmission and there
                   has been no collision during the transmission
                   then loopback will be detected.  The value of
                   this attribute will only change during
                   non-collided transmissions for AUI, coax, and
                   10BASE-FP MAUs.

                   For 100Mbps and 1000Mbps MAUs, the enumerations
                   match the states within the respective link
                   integrity state diagrams, fig 32-16, 23-12 and
                   24-15 of sections 32, 23 and 24 of [16].  Any
                   MAU which implements management of
                   auto-negotiation will map remote fault
                   indication to remote fault.

                   The value available(3) indicates that the link,
                   light, or loopback is normal.  The value
                   notAvailable(4) indicates link loss, low light,
                   or no loopback.

                   The value remoteFault(5) indicates that a fault
                   has been detected at the remote end of the link.
                   This value applies to 10BASE-FB, 100BASE-T4 Far
                   End Fault Indication and non-specified remote
                   faults from a system running auto-negotiation.
                   The values remoteJabber(7), remoteLinkLoss(8),
                   and remoteTest(9) SHOULD be used instead of
                   remoteFault(5) where the reason for remote fault
                   is identified in the remote signaling protocol.

                   The value invalidSignal(6) indicates that an
                   invalid signal has been received from the other
                   end of the link.  InvalidSignal(6) applies only
                   to MAUs of type 10BASE-FB.

                   Where an IEEE Std 802.3u-1995 clause 22 MII
                   is present, a logic one in the remote fault bit
                   (reference section 22.2.4.2.8 of that document)
                   maps to the value remoteFault(5), and a logic
                   zero in the link status bit (reference section
                   22.2.4.2.10 of that document) maps to the value
                   notAvailable(4).  The value notAvailable(4)
                   takes precedence over the value remoteFault(5).

                   Any MAU that implements management of clause 37
                   Auto-Negotiation will map the received RF1 and
                   RF2 bit values for Offline to offline(10), Link
                   Failure to remoteFault(5) and Auto-Negotiation
                   Error to autoNegError(11)." 0"[IEEE 802.3 Std], 30.5.1.1.4, aMediaAvailable."                    �"A count of the number of times that
                   ifMauMediaAvailable for this MAU instance leaves
                   the state available(3).
                   Discontinuities in the value of this counter can
                   occur at re-initialization of the management
                   system, and at other times as indicated by the
                   value of ifCounterDiscontinuityTime." �"[IEEE 802.3 Std], 30.5.1.1.5,
                   aLoseMediaCounter.
                   RFC 2233, ifCounterDiscontinuityTime."                    W"The value other(1) is returned if the jabber
                   state is not 2, 3, or 4.  The agent MUST always
                   return other(1) for MAU type dot3MauTypeAUI.

                   The value unknown(2) is returned when the MAU's
                   true state is unknown; for example, when it is
                   being initialized.

                   If the MAU is not jabbering the agent returns
                   noJabber(3).  This is the 'normal' state.

                   If the MAU is in jabber state the agent returns
                   the jabbering(4) value." G"[IEEE 802.3 Std], 30.5.1.1.6,
                   aJabber.jabberFlag."                    &"A count of the number of times that
                   mauJabberState for this MAU instance enters the
                   state jabbering(4). This counter will always
                   indicate zero for MAUs of type dot1MauTypeAUI
                   and those of speeds above 10Mbps.

                   Discontinuities in the value of this counter can
                   occur at re-initialization of the management
                   system, and at other times as indicated by the
                   value of ifCounterDiscontinuityTime." �"[IEEE 802.3 Std], 30.5.1.1.6,
                   aJabber.jabberCounter.
                   RFC 2233, ifCounterDiscontinuityTime."                    "A count of the number of false carrier events
                   during IDLE in 100BASE-X and 1000BASE-X links.

                   For all other MAU types, this counter will
                   always indicate zero. This counter does not
                   increment at the symbol rate.

                   It can increment after a valid carrier
                   completion at a maximum rate of once per 100 ms
                   for 100BASE-X and once per 10us for 1000BASE-X
                   until the next CarrierEvent.

                   Discontinuities in the value of this counter can
                   occur at re-initialization of the management
                   system, and at other times as indicated by the
                   value of ifCounterDiscontinuityTime." j"[IEEE 802.3 Std], 30.5.1.1.10, aFalseCarriers.
                   RFC 2233, ifCounterDiscontinuityTime."                    z"********* THIS OBJECT IS DEPRECATED **********

                   A value that uniquely identifies the set of
                   possible IEEE 802.3 types that the MAU could be.
                   The value is a sum which initially takes the
                   value zero.  Then, for each type capability of
                   this MAU, 2 raised to the power noted below is
                   added to the sum. For example, a MAU which has
                   the capability to be only 10BASE-T would have a
                   value of 512 (2**9).  In contrast, a MAU which
                   supports both 10Base-T (full duplex) and
                   100BASE-TX (full duplex) would have a value of
                   ((2**11) + (2**16)) or 67584.

                   The powers of 2 assigned to the capabilities are
                   these:

                   Power  Capability
                     0      other or unknown
                     1      AUI
                     2      10BASE-5
                     3      FOIRL
                     4      10BASE-2
                     5      10BASE-T duplex mode unknown
                     6      10BASE-FP
                     7      10BASE-FB
                     8      10BASE-FL duplex mode unknown
                     9      10BROAD36
                    10      10BASE-T  half duplex mode
                    11      10BASE-T  full duplex mode
                    12      10BASE-FL half duplex mode
                    13      10BASE-FL full duplex mode
                    14      100BASE-T4
                    15      100BASE-TX half duplex mode
                    16      100BASE-TX full duplex mode
                    17      100BASE-FX half duplex mode
                    18      100BASE-FX full duplex mode
                    19      100BASE-T2 half duplex mode
                    20      100BASE-T2 full duplex mode

                   If auto-negotiation is present on this MAU, this
                   object will map to ifMauAutoNegCapability.

                   This object has been deprecated in favour of
                   ifMauTypeListBits."             -- STATUS   deprecated
        {"This object identifies the default
                   administrative baseband MAU type, to be used in
                   conjunction with the operational MAU type
                   denoted by ifMauType.

                   The set of possible values for this object is
                   the same as the set defined for the ifMauType
                   object.

                   This object represents the
                   administratively-configured type of the MAU.  If
                   auto-negotiation is not enabled or is not
                   implemented for this MAU, the value of this
                   object determines the operational type of the
                   MAU.  In this case, a set to this object will
                   force the MAU into the specified operating mode.

                   If auto-negotiation is implemented and enabled
                   for this MAU, the operational type of the MAU
                   is determined by auto-negotiation, and the value
                   of this object denotes the type to which the MAU
                   will automatically revert if/when
                   auto-negotiation is later disabled.

                   NOTE TO IMPLEMENTORS:  It may be necessary to
                   provide for underlying hardware implementations
                   which do not follow the exact behavior specified
                   above.  In particular, when
                   ifMauAutoNegAdminStatus transitions from enabled
                   to disabled, the agent implementation MUST
                   ensure that the operational type of the MAU (as
                   reported by ifMauType) correctly transitions to
                   the value specified by this object, rather than
                   continuing to operate at the value earlier
                   determined by the auto-negotiation function." K"[IEEE 802.3 Std], 30.5.1.1.1, aMAUID, and
                   22.2.4.1.4."                     e"This object indicates whether or not
                   auto-negotiation is supported on this MAU."                      :"A value that uniquely identifies the set of
                   possible IEEE 802.3 types that the MAU could be.
                   If auto-negotiation is present on this MAU, this
                   object will map to ifMauAutoNegCapability.

                   Note that this MAU may be capable of operating
                   as a MAU type that is beyond the scope of this
                   MIB.  This is indicated by returning the
                   bit value bOther in addition to any bit values
                   for capabilities that are listed above."       -- SYNTAX BITS {
               e"Information about the external jacks attached
                   to MAUs attached to an interface."                       \"An entry in the table, containing information
                   about a particular jack."                       �"This variable uniquely identifies the jack
                   described by this entry from among other jacks
                   attached to the same MAU."                       Z"The jack connector type, as it appears on the
                   outside of the system."                           �"********* THIS OBJECT IS DEPRECATED **********

                   Table of descriptive and status information
                   about the broadband MAUs connected to
                   interfaces."             -- STATUS      deprecated
         �"********* THIS OBJECT IS DEPRECATED **********

                   An entry in the table, containing information
                   about a single broadband MAU."             -- STATUS      deprecated
         �"********* THIS OBJECT IS DEPRECATED **********

                   This variable uniquely identifies the interface
                   to which the MAU described by this entry is
                   connected." "Reference RFC 1213, ifIndex."           -- STATUS      deprecated
         �"********* THIS OBJECT IS DEPRECATED **********

                   This variable uniquely identifies the MAU
                   connected to interface broadMauIfIndex that is
                   described by this entry." '"[IEEE 802.3 Std], 30.5.1.1.1, aMAUID."           -- STATUS      deprecated
        I"********* THIS OBJECT IS DEPRECATED **********

                   This object indicates the type of frequency
                   multiplexing/cabling system used to separate the
                   transmit and receive paths for the 10BROAD36
                   MAU.

                   The value other(1) is returned if the split type
                   is not either single or dual.

                   The value single(2) indicates a single cable
                   system.  The value dual(3) indicates a dual


                   cable system, offset normally zero." K"[IEEE 802.3 Std], 30.5.1.1.8,
                   aBbMAUXmitRcvSplitType."           -- STATUS      deprecated
         �"********* THIS OBJECT IS DEPRECATED **********

                   This variable indicates the transmit carrier
                   frequency of the 10BROAD36 MAU in MHz/4; that
                   is, in units of 250 kHz." _"[IEEE 802.3 Std], 30.5.1.1.9,
                   aBroadbandFrequencies.xmitCarrierFrequency."           -- STATUS      deprecated
         �"********* THIS OBJECT IS DEPRECATED **********

                   This variable indicates the translation offset
                   frequency of the 10BROAD36 MAU in MHz/4; that
                   is, in units of 250 kHz." _"[IEEE 802.3 Std], 30.5.1.1.9,
                   aBroadbandFrequencies.translationFrequency."           -- STATUS      deprecated
             �"Configuration and status objects for the
                   auto-negotiation function of MAUs attached to
                   interfaces."                       �"An entry in the table, containing configuration
                   and status information for the auto-negotiation
                   function of a particular MAU."                      J"Setting this object to enabled(1) will cause
                   the interface which has the auto-negotiation
                   signaling ability to be enabled.

                   If the value of this object is disabled(2) then
                   the interface will act as it would if it had no
                   auto-negotiation signaling.  Under these
                   conditions, an IEEE 802.3 MAU will immediately
                   be forced to the state indicated by the value of
                   the object ifMauDefaultType.

                   NOTE TO IMPLEMENTORS:  When
                   ifMauAutoNegAdminStatus transitions from enabled
                   to disabled, the agent implementation MUST
                   ensure that the operational type of the MAU (as
                   reported by ifMauType) correctly transitions to
                   the value specified by the ifMauDefaultType
                   object, rather than continuing to operate at the
                   value earlier determined by the auto-negotiation
                   function." �"[IEEE 802.3 Std], 30.6.1.1.2,
                   aAutoNegAdminState and 30.6.1.2.2,
                   acAutoNegAdminControl."                    "A value indicating whether the remote end of
                   the link is using auto-negotiation signaling. It
                   takes the value detected(1) if and only if,
                   during the previous link negotiation, FLP Bursts
                   were received." L"[IEEE 802.3 Std], 30.6.1.1.3,
                   aAutoNegRemoteSignaling."                    "A value indicating the current status of the
                   auto-negotiation process.  The enumeration
                   parallelDetectFail(5) maps to a failure in
                   parallel detection as defined in 28.2.3.1 of
                   [IEEE 802.3 Std]." G"[IEEE 802.3 Std], 30.6.1.1.4,
                   aAutoNegAutoConfig."                    Z"********* THIS OBJECT IS DEPRECATED **********

                   A value that uniquely identifies the set of
                   capabilities of the local auto-negotiation
                   entity.  The value is a sum which initially
                   takes the value zero.  Then, for each capability
                   of this interface, 2 raised to the power noted


                   below is added to the sum. For example, an
                   interface which has the capability to support
                   only 100Base-TX half duplex would have a value
                   of 32768 (2**15).  In contrast, an interface
                   which supports both 100Base-TX half duplex and
                   and 100Base-TX full duplex would have a value of
                   98304 ((2**15) + (2**16)).

                   The powers of 2 assigned to the capabilities are
                   these:

                   Power   Capability
                     0       other or unknown
                    (1-9)    (reserved)
                    10       10BASE-T  half duplex mode
                    11       10BASE-T  full duplex mode
                    12       (reserved)
                    13       (reserved)
                    14       100BASE-T4
                    15       100BASE-TX half duplex mode
                    16       100BASE-TX full duplex mode
                    17       (reserved)
                    18       (reserved)
                    19      100BASE-T2 half duplex mode
                    20      100BASE-T2 full duplex mode

                   Note that interfaces that support this MIB may
                   have capabilities that extend beyond the scope
                   of this MIB.
                   This object has been deprecated in favour of
                   ifMauAutoNegCapabilityBits" S"[IEEE 802.3 Std], 30.6.1.1.5,
                   aAutoNegLocalTechnologyAbility."           -- STATUS      deprecated
        p"********* THIS OBJECT IS DEPRECATED **********

                   A value that uniquely identifies the set of
                   capabilities advertised by the local
                   auto-negotiation entity. Refer to
                   ifMauAutoNegCapability for a description of the
                   possible values of this object.

                   Capabilities in this object that are not


                   available in ifMauAutoNegCapability cannot be
                   enabled.

                   This object has been deprecated in favour of
                   ifMauAutoNegCapAdvertisedBits" X"[IEEE 802.3 Std], 30.6.1.1.6,
                   aAutoNegAdvertisedTechnologyAbility."           -- STATUS      deprecated
        �"********* THIS OBJECT IS DEPRECATED **********

                   A value that uniquely identifies the set of
                   capabilities received from the remote
                   auto-negotiation entity. Refer to
                   ifMauAutoNegCapability for a description of the
                   possible values of this object.

                   Note that interfaces that support this MIB may
                   be attached to remote auto-negotiation entities
                   which have capabilities beyond the scope of this
                   MIB.

                   This object has been deprecated in favour of
                   ifMauAutoNegCapReceivedBits" V"[IEEE 802.3 Std], 30.6.1.1.7,
                   aAutoNegReceivedTechnologyAbility."           -- STATUS      deprecated
        �"If the value of this object is set to
                   restart(1) then this will force auto-negotiation
                   to begin link renegotiation. If auto-negotiation
                   signaling is disabled, a write to this object
                   has no effect.

                   Setting the value of this object to norestart(2)
                   has no effect." S"[IEEE 802.3 Std], 30.6.1.2.1,


                   acAutoNegRestartAutoConfig."                    e"A value that uniquely identifies the set of
                   capabilities of the local auto-negotiation
                   entity.  Note that interfaces that support this
                   MIB may have capabilities that extend beyond the
                   scope of this MIB.

                   Note that the local auto-negotiation entity may
                   support some capabilities beyond the scope of
                   this MIB.  This is indicated by returning the
                   bit value bOther in addition to any bit values
                   for capabilities that are listed above." S"[IEEE 802.3 Std], 30.6.1.1.5,
                   aAutoNegLocalTechnologyAbility."     -- SYNTAX      BITS {
              ~"A value that uniquely identifies the set of
                   capabilities advertised by the local
                   auto-negotiation entity.

                   Capabilities in this object that are not
                   available in ifMauAutoNegCapabilityBits cannot
                   be enabled.
                   Note that the local auto-negotiation entity may
                   advertise some capabilities beyond the scope of
                   this MIB.  This is indicated by returning the
                   bit value bOther in addition to any bit values
                   for capabilities that are listed above." X"[IEEE 802.3 Std], 30.6.1.1.6,
                   aAutoNegAdvertisedTechnologyAbility."     -- SYNTAX      BITS {
              "A value that uniquely identifies the set of
                   capabilities received from the remote
                   auto-negotiation entity.

                   Note that interfaces that support this MIB may
                   be attached to remote auto-negotiation entities
                   which have capabilities beyond the scope of this
                   MIB.  This is indicated by returning the bit
                   value bOther in addition to any bit values for
                   capabilities that are listed above." V"[IEEE 802.3 Std], 30.6.1.1.7,
                   aAutoNegReceivedTechnologyAbility."     -- SYNTAX      BITS {
               �"A value that identifies any local fault
                   indications that this MAU has detected and will
                   advertise at the next auto-negotiation
                   interaction for 1000Mbps MAUs." X"[IEEE 802.3 Std], 30.6.1.1.6,
                   aAutoNegAdvertisedTechnologyAbility."                     �"A value that identifies any fault indications
                   received from the far end of a link by the
                   local auto-negotiation entity for 1000Mbps
                   MAUs." V"[IEEE 802.3 Std], 30.6.1.1.7,
                   aAutoNegReceivedTechnologyAbility."                          "no internal MAU, view from AUI"               &"thick coax MAU (per 802.3 section 8)"               #"FOIRL MAU (per 802.3 section 9.9)"               &"thin coax MAU (per 802.3 section 10)"              �"UTP MAU (per 802.3 section 14).
                   Note that it is strongly recommended that
                   agents return either dot3MauType10BaseTHD or
                   dot3MauType10BaseTFD if the duplex mode is
                   known.  However, management applications should
                   be prepared to receive this MAU type value from
                   older agent implementations."               *"passive fiber MAU (per 802.3 section 16)"               '"sync fiber MAU (per 802.3 section 17)"              �"async fiber MAU (per 802.3 section 18)
                   Note that it is strongly recommended that
                   agents return either dot3MauType10BaseFLHD or
                   dot3MauType10BaseFLFD if the duplex mode is
                   known.  However, management applications should
                   be prepared to receive this MAU type value from
                   older agent implementations."               �"broadband DTE MAU (per 802.3 section 11).
                   Note that 10BROAD36 MAUs can be attached to
                   interfaces but not to repeaters."               F"UTP MAU (per 802.3 section 14), half duplex
                   mode"               F"UTP MAU (per 802.3 section 14), full duplex
                   mode"               N"async fiber MAU (per 802.3 section 18), half
                   duplex mode"               N"async fiber MAU (per 802.3 section 18), full
                   duplex mode"               ,"4 pair categ. 3 UTP (per 802.3 section 23)"               R"2 pair categ. 5 UTP (per 802.3 section 25),
                   half duplex mode"               R"2 pair categ. 5 UTP (per 802.3 section 25),
                   full duplex mode"               O"X fiber over PMT (per 802.3 section 26), half
                   duplex mode"               O"X fiber over PMT (per 802.3 section 26), full
                   duplex mode"               R"2 pair categ. 3 UTP (per 802.3 section 32),
                   half duplex mode"               R"2 pair categ. 3 UTP (per 802.3 section 32),
                   full duplex mode"               S"PCS/PMA (per 802.3 section 36), unknown PMD,
                   half duplex mode"               S"PCS/PMA (per 802.3 section 36), unknown PMD,
                   full duplex mode"               _"Fiber over long-wavelength laser (per 802.3
                   section 38), half duplex mode"               _"Fiber over long-wavelength laser (per 802.3
                   section 38), full duplex mode"               `"Fiber over short-wavelength laser (per 802.3
                   section 38), half duplex mode"               `"Fiber over short-wavelength laser (per 802.3
                   section 38), full duplex mode"               a"Copper over 150-Ohm balanced cable (per 802.3
                   section 39), half duplex mode"               a"Copper over 150-Ohm balanced cable (per 802.3
                   section 39), full duplex mode"               W"Four-pair Category 5 UTP (per 802.3 section
                   40), half duplex mode"               W"Four-pair Category 5 UTP (per 802.3 section
                   40), full duplex mode"                  "This trap is sent whenever a managed repeater
                   MAU enters the jabber state.

                   The agent MUST throttle the generation of
                   consecutive rpMauJabberTraps so that there is at
                   least a five-second gap between them." I"[IEEE 802.3 Mgt], 30.5.1.3.1, nJabber
                   notification."               "This trap is sent whenever a managed interface
                   MAU enters the jabber state.

                   The agent MUST throttle the generation of
                   consecutive ifMauJabberTraps so that there is at
                   least a five-second gap between them." I"[IEEE 802.3 Mgt], 30.5.1.3.1, nJabber
                   notification."                  