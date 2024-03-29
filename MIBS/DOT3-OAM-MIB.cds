     |"24-bit Organizationally Unique Identifier.  Information on
       OUIs can be found in IEEE 802-2001 [802-2001], Clause 9."                                                                                        h"The MIB module for managing the new Ethernet OAM features
       introduced by the Ethernet in the First Mile taskforce (IEEE
       802.3ah).  The functionality presented here is based on IEEE
       802.3ah [802.3ah], released in October, 2004.  [802.3ah] was
       prepared as an addendum to the standing version of IEEE 802.3
       [802.3-2002].  Since then, [802.3ah] has been
       merged into the base IEEE 802.3 specification in [802.3-2005].

       In particular, this MIB focuses on the new OAM functions
       introduced in Clause 57 of [802.3ah].  The OAM functionality
       of Clause 57 is controlled by new management attributes
       introduced in Clause 30 of [802.3ah].  The OAM functions are
       not specific to any particular Ethernet physical layer, and
       can be generically applied to any Ethernet interface of
       [802.3-2002].

       An Ethernet OAM protocol data unit is a valid Ethernet frame
       with a destination MAC address equal to the reserved MAC
       address for Slow Protocols (See 43B of [802.3ah]), a
       lengthOrType field equal to the reserved type for Slow
       Protocols, and a Slow Protocols subtype equal to that of the
       subtype reserved for Ethernet OAM.  OAMPDU is used throughout
       this document as an abbreviation for Ethernet OAM protocol
       data unit.

       The following reference is used throughout this MIB module:




         [802.3ah] refers to:
           IEEE Std 802.3ah-2004: 'Draft amendment to -
           Information technology - Telecommunications and
           information exchange between systems - Local and
           metropolitan area networks - Specific requirements - Part
           3: Carrier sense multiple access with collision detection
           (CSMA/CD) access method and physical layer specifications
           - Media Access Control Parameters, Physical Layers and
           Management Parameters for subscriber access networks',
           October 2004.

         [802.3-2002] refers to:
           IEEE Std 802.3-2002:
           'Information technology - Telecommunications and
           information exchange between systems - Local and
           metropolitan area networks - Specific requirements - Part
           3: Carrier sense multiple access with collision detection
           (CSMA/CD) access method and physical layer specifications
           - Media Access Control Parameters, Physical Layers and
           Management Parameters for subscriber access networks',
           March 2002.

         [802.3-2005] refers to:
           IEEE Std 802.3-2005:
           'Information technology - Telecommunications and
           information exchange between systems - Local and
           metropolitan area networks - Specific requirements - Part
           3: Carrier sense multiple access with collision detection
           (CSMA/CD) access method and physical layer specifications
           - Media Access Control Parameters, Physical Layers and
           Management Parameters for subscriber access networks',
           December 2005.

         [802-2001] refers to:
           'IEEE Standard for LAN/MAN (Local Area
           Network/Metropolitan Area Network): Overview and
           Architecture', IEEE 802, June 2001.

       Copyright (c) The IETF Trust (2007).  This version of
       this MIB module is part of RFC 4878; See the RFC itself for
       full legal notices. "�"WG Charter:
         http://www.ietf.org/html.charters/hubmib-charter.html
       Mailing lists:
         General Discussion: hubmib@ietf.org
         To Subscribe: hubmib-requests@ietf.org
         In Body: subscribe your_email_address
       Chair: Bert Wijnen
         Alcatel-Lucent
         Email: bwijnen at alcatel-lucent dot com
       Editor: Matt Squire
         Hatteras Networks
         E-mail: msquire at hatterasnetworks dot com
       " "200706140000Z" )"Initial version, published as RFC 4878."       -- June 14,2007"
          "A dot3OamThresholdEvent notification is sent when a local or
       remote threshold crossing event is detected.  A local
       threshold crossing event is detected by the local entity,
       while a remote threshold crossing event is detected by the
       reception of an Ethernet OAM Event Notification OAMPDU
       that indicates a threshold event.

       This notification should not be sent more than once per
       second.

       The OAM entity can be derived from extracting the ifIndex from
       the variable bindings.  The objects in the notification
       correspond to the values in a row instance in the
       dot3OamEventLogTable.

       The management entity should periodically check
       dot3OamEventLogTable to detect any missed events."                �"A dot3OamNonThresholdEvent notification is sent when a local
       or remote non-threshold crossing event is detected.  A local
       event is detected by the local entity, while a remote event is
       detected by the reception of an Ethernet OAM Event
       Notification OAMPDU that indicates a non-threshold crossing
       event.

       This notification should not be sent more than once per



       second.

       The OAM entity can be derived from extracting the ifIndex from
       the variable bindings.  The objects in the notification
       correspond to the values in a row instance of the
       dot3OamEventLogTable.

       The management entity should periodically check
       dot3OamEventLogTable to detect any missed events."                    "This table contains the primary controls and status for the
       OAM capabilities of an Ethernet-like interface.  There will be
       one row in this table for each Ethernet-like interface in the
       system that supports the OAM functions defined in [802.3ah].
       "                      �"An entry in the table that contains information on the
       Ethernet OAM function for a single Ethernet like interface.
       Entries in the table are created automatically for each
       interface supporting Ethernet OAM.  The status of the row
       entry can be determined from dot3OamOperStatus.

       A dot3OamEntry is indexed in the dot3OamTable by the ifIndex
       object of the Interfaces MIB.
       "                      �"This object is used to provision the default administrative
       OAM mode for this interface.  This object represents the
       desired state of OAM for this interface.

       The dot3OamAdminState always starts in the disabled(2) state
       until an explicit management action or configuration
       information retained by the system causes a transition to the
       enabled(1) state.  When enabled(1), Ethernet OAM will attempt
       to operate over this interface.
       " "[802.3ah], 30.3.6.1.2"                    b"At initialization and failure conditions, two OAM entities on



       the same full-duplex Ethernet link begin a discovery phase to
       determine what OAM capabilities may be used on that link.  The
       progress of this initialization is controlled by the OA
       sublayer.

       This value is always disabled(1) if OAM is disabled on this
       interface via the dot3OamAdminState.

       If the link has detected a fault and is transmitting OAMPDUs
       with a link fault indication, the value is linkFault(2).
       Also, if the interface is not operational (ifOperStatus is
       not up(1)), linkFault(2) is returned.  Note that the object
       ifOperStatus may not be up(1) as a result of link failure or
       administrative action (ifAdminState being down(2) or
       testing(3)).

       The passiveWait(3) state is returned only by OAM entities in
       passive mode (dot3OamMode) and reflects the state in which the
       OAM entity is waiting to see if the peer device is OA
       capable.  The activeSendLocal(4) value is used by active mode
       devices (dot3OamMode) and reflects the OAM entity actively
       trying to discover whether the peer has OAM capability but has
       not yet made that determination.

       The state sendLocalAndRemote(5) reflects that the local OA
       entity has discovered the peer but has not yet accepted or
       rejected the configuration of the peer.  The local device can,
       for whatever reason, decide that the peer device is
       unacceptable and decline OAM peering.  If the local OAM entity
       rejects the peer OAM entity, the state becomes
       oamPeeringLocallyRejected(7).  If the OAM peering is allowed
       by the local device, the state moves to
       sendLocalAndRemoteOk(6).  Note that both the
       sendLocalAndRemote(5) and oamPeeringLocallyRejected(7) states
       fall within the state SEND_LOCAL_REMOTE of the Discovery state
       diagram [802.3ah, Figure 57-5], with the difference being
       whether the local OAM client has actively rejected the peering
       or has just not indicated any decision yet.  Whether a peering
       decision has been made is indicated via the local flags field
       in the OAMPDU (reflected in the aOAMLocalFlagsField of
       30.3.6.1.10).

       If the remote OAM entity rejects the peering, the state
       becomes oamPeeringRemotelyRejected(8).  Note that both the
       sendLocalAndRemoteOk(6) and oamPeeringRemotelyRejected(8)
       states fall within the state SEND_LOCAL_REMOTE_OK of the
       Discovery state diagram [802.3ah, Figure 57-5], with the
       difference being whether the remote OAM client has rejected



       the peering or has just not yet decided.  This is indicated
       via the remote flags field in the OAMPDU (reflected in the
       aOAMRemoteFlagsField of 30.3.6.1.11).

       When the local OAM entity learns that both it and the remote
       OAM entity have accepted the peering, the state moves to
       operational(9) corresponding to the SEND_ANY state of the
       Discovery state diagram [802.3ah, Figure 57-5].

       Since Ethernet OAM functions are not designed to work
       completely over half-duplex interfaces, the value
       nonOperHalfDuplex(10) is returned whenever Ethernet OAM is
       enabled (dot3OamAdminState is enabled(1)), but the interface
       is in half-duplex operation.
       " 1"[802.3ah], 30.3.6.1.4, 30.3.6.1.10, 30.3.6.1.11"                    k"This object configures the mode of OAM operation for this
       Ethernet-like interface.  OAM on Ethernet interfaces may be in
       'active' mode or 'passive' mode.  These two modes differ in
       that active mode provides additional capabilities to initiate
       monitoring activities with the remote OAM peer entity, while
       passive mode generally waits for the peer to initiate OA
       actions with it.  As an example, an active OAM entity can put
       the remote OAM entity in a loopback state, where a passive OA
       entity cannot.

       The default value of dot3OamMode is dependent on the type of
       system on which this Ethernet-like interface resides.  The
       default value should be 'active(2)' unless it is known that
       this system should take on a subservient role to the other
       device connected over this interface.

       Changing this value results in incrementing the configuration
       revision field of locally generated OAMPDUs (30.3.6.1.12) and
       potentially re-doing the OAM discovery process if the
       dot3OamOperStatus was already operational(9).
       " "[802.3ah], 30.3.6.1.3"                    "The largest OAMPDU that the OAM entity supports.  OA
       entities exchange maximum OAMPDU sizes and negotiate to use
       the smaller of the two maximum OAMPDU sizes between the peers.
       This value is determined by the local implementation.
       " "[802.3ah], 30.3.6.1.8"                    F"The configuration revision of the OAM entity as reflected in
       the latest OAMPDU sent by the OAM entity.  The config revision
       is used by OAM entities to indicate that configuration changes
       have occurred, which might require the peer OAM entity to
       re-evaluate whether OAM peering is allowed.
       " "[802.3ah], 30.3.6.1.12"                    �"The OAM functions supported on this Ethernet-like interface.
       OAM consists of separate functional sets beyond the basic
       discovery process that is always required.  These functional
       groups can be supported independently by any implementation.
       These values are communicated to the peer via the local
       configuration field of Information OAMPDUs.

       Setting 'unidirectionalSupport(0)' indicates that the OA



       entity supports the transmission of OAMPDUs on links that are
       operating in unidirectional mode (traffic flowing in one
       direction only).  Setting 'loopbackSupport(1)' indicates that
       the OAM entity can initiate and respond to loopback commands.
       Setting 'eventSupport(2)' indicates that the OAM entity can
       send and receive Event Notification OAMPDUs.  Setting
       'variableSupport(3)' indicates that the OAM entity can send
       and receive Variable Request and Response OAMPDUs.
       " "[802.3ah], 30.3.6.1.6"                    �"This table contains information about the OAM peer for a
       particular Ethernet-like interface.  OAM entities communicate
       with a single OAM peer entity on Ethernet links on which OA
       is enabled and operating properly.  There is one entry in this
       table for each entry in the dot3OamTable for which information
       on the peer OAM entity is available.
       "                      >"An entry in the table containing information on the peer OA
       entity for a single Ethernet-like interface.

       Note that there is at most one OAM peer for each Ethernet-like
       interface.  Entries are automatically created when information
       about the OAM peer entity becomes available, and automatically
       deleted when the OAM peer entity is no longer in
       communication.  Peer information is not available when
       dot3OamOperStatus is disabled(1), linkFault(2),
       passiveWait(3), activeSendLocal(4), or nonOperHalfDuplex(10).
       "                       |"The MAC address of the peer OAM entity.  The MAC address is
       derived from the most recently received OAMPDU.
       " "[802.3ah], 30.3.6.1.5."                    8"The OUI of the OAM peer as reflected in the latest
       Information OAMPDU received with a Local Information TLV.  The
       OUI can be used to identify the vendor of the remote OA
       entity.  This value is initialized to three octets of zero
       before any Local Information TLV is received.
       " "[802.3ah], 30.3.6.1.16."                    �"The Vendor Info of the OAM peer as reflected in the latest
       Information OAMPDU received with a Local Information TLV.
       The semantics of the Vendor Information field is proprietary
       and specific to the vendor (identified by the
       dot3OamPeerVendorOui).  This information could, for example,



       be used to identify a specific product or product family.
       This value is initialized to zero before any Local
       Information TLV is received.
       " "[802.3ah], 30.3.6.1.17."                    ?"The mode of the OAM peer as reflected in the latest
       Information OAMPDU received with a Local Information TLV.  The
       mode of the peer can be determined from the Configuration
       field in the Local Information TLV of the last Information
       OAMPDU received from the peer.  The value is unknown(3)
       whenever no Local Information TLV has been received.  The
       values of active(2) and passive(1) are returned when a Local
       Information TLV has been received indicating that the peer is
       in active or passive mode, respectively.
       " "[802.3ah], 30.3.6.1.7."                    V"The maximum size of OAMPDU supported by the peer as reflected
       in the latest Information OAMPDU received with a Local
       Information TLV.  Ethernet OAM on this interface must not use
       OAMPDUs that exceed this size.  The maximum OAMPDU size can be
       determined from the PDU Configuration field of the Local
       Information TLV of the last Information OAMPDU received from
       the peer.  A value of zero is returned if no Local Information
       TLV has been received.  Otherwise, the value of the OAM peer's
       maximum OAMPDU size is returned in this value.
       " "[802.3ah], 30.3.6.1.9."                    �"The configuration revision of the OAM peer as reflected in
       the latest OAMPDU.  This attribute is changed by the peer
       whenever it has a local configuration change for Ethernet OA
       on this interface.  The configuration revision can be
       determined from the Revision field of the Local Information
       TLV of the most recently received Information OAMPDU with
       a Local Information TLV.  A value of zero is returned if
       no Local Information TLV has been received.
     " "[802.3ah], 30.3.6.1.13."                    �"The OAM functions supported on this Ethernet-like interface.
       OAM consists of separate functionality sets above the basic
       discovery process.  This value indicates the capabilities of
       the peer OAM entity with respect to these functions.  This
       value is initialized so all bits are clear.

       If unidirectionalSupport(0) is set, then the peer OAM entity
       supports sending OAM frames on Ethernet interfaces when the
       receive path is known to be inoperable.  If
       loopbackSupport(1) is set, then the peer OAM entity can send
       and receive OAM loopback commands.  If eventSupport(2) is set,
       then the peer OAM entity can send and receive event OAMPDUs to
       signal various error conditions.  If variableSupport(3) is
       set, then the peer OAM entity can send and receive variable
       requests to monitor the attribute value as described in Clause
       57 of [802.3ah].

       The capabilities of the OAM peer can be determined from the
       configuration field of the Local Information TLV of the most
       recently received Information OAMPDU with a Local Information
       TLV.  All zeros are returned if no Local Information TLV has



       yet been received.
       " ""[802.3ah], REFERENCE 30.3.6.1.7."                    '"This table contains controls for the loopback state of the
       local link as well as indicates the status of the loopback
       function.  There is one entry in this table for each entry in
       dot3OamTable that supports loopback functionality (where
       dot3OamFunctionsSupported includes the loopbackSupport bit
       set).

       Loopback can be used to place the remote OAM entity in a state
       where every received frame (except OAMPDUs) is echoed back
       over the same interface on which they were received.  In this
       state, at the remote entity, 'normal' traffic is disabled as
       only the looped back frames are transmitted on the interface.
       Loopback is thus an intrusive operation that prohibits normal
       data flow and should be used accordingly.
       "                      d"An entry in the table, containing information on the loopback
       status for a single Ethernet-like interface.  Entries in the
       table are automatically created whenever the local OAM entity
       supports loopback capabilities.  The loopback status on the
       interface can be determined from the dot3OamLoopbackStatus
       object.
       "                      !"The loopback status of the OAM entity.  This status is
       determined by a combination of the local parser and
       multiplexer states, the remote parser and multiplexer states,
       as well as by the actions of the local OAM client.  When
       operating in normal mode with no loopback in progress, the
       status reads noLoopback(1).

       The values initiatingLoopback(2) and terminatingLoopback(4)
       can be read or written.  The other values can only be read -
       they can never be written.  Writing initiatingLoopback causes
       the local OAM entity to start the loopback process with its
       peer.  This value can only be written when the status is
       noLoopback(1).  Writing the value initiatingLoopback(2) in any
       other state has no effect.  When in remoteLoopback(3), writing
       terminatingLoopback(4) causes the local OAM entity to initiate
       the termination of the loopback state.  Writing
       terminatingLoopack(4) in any other state has no effect.

       If the OAM client initiates a loopback and has sent a
       Loopback OAMPDU and is waiting for a response, where the local
       parser and multiplexer states are DISCARD (see [802.3ah,
       57.2.11.1]), the status is 'initiatingLoopback'.  In this
       case, the local OAM entity has yet to receive any
       acknowledgment that the remote OAM entity has received its
       loopback command request.




       If the local OAM client knows that the remote OAM entity is in
       loopback mode (via the remote state information as described
       in [802.3ah, 57.2.11.1, 30.3.6.1.15]), the status is
       remoteLoopback(3).  If the local OAM client is in the process
       of terminating the remote loopback [802.3ah, 57.2.11.3,
       30.3.6.1.14] with its local multiplexer and parser states in
       DISCARD, the status is terminatingLoopback(4).  If the remote
       OAM client has put the local OAM entity in loopback mode as
       indicated by its local parser state, the status is
       localLoopback(5).

       The unknown(6) status indicates that the parser and
       multiplexer combination is unexpected.  This status may be
       returned if the OAM loopback is in a transition state but
       should not persist.

       The values of this attribute correspond to the following
       values of the local and remote parser and multiplexer states.

         value            LclPrsr   LclMux    RmtPrsr   RmtMux
         noLoopback         FWD       FWD       FWD       FWD
         initLoopback     DISCARD   DISCARD     FWD       FWD
         rmtLoopback      DISCARD     FWD      LPBK    DISCARD
         tmtngLoopback    DISCARD   DISCARD    LPBK    DISCARD
         lclLoopback        LPBK    DISCARD   DISCARD     FWD
         unknown            ***   any other combination   ***
       " >"[802.3ah], REFERENCE 57.2.11, 30.3.61.14,
       30.3.6.1.15"                    �"Since OAM loopback is a disruptive operation (user traffic
       does not pass), this attribute provides a mechanism to provide
       controls over whether received OAM loopback commands are
       processed or ignored.  When the value is ignore(1), received
       loopback commands are ignored.  When the value is process(2),
       OAM loopback commands are processed.  The default value is to
       ignore loopback commands (ignore(1)).
       " >"[802.3ah], REFERENCE 57.2.11, 30.3.61.14,
       30.3.6.1.15"                    �"This table contains statistics for the OAM function on a
       particular Ethernet-like interface.  There is an entry in the
       table for every entry in the dot3OamTable.

       The counters in this table are defined as 32-bit entries to
       match the counter size as defined in [802.3ah].  Given that
       the OA protocol is a slow protocol, the counters increment at
       a slow rate.
       "                      *"An entry in the table containing statistics information on
       the Ethernet OAM function for a single Ethernet-like
       interface.  Entries are automatically created for every entry
       in the dot3OamTable.  Counters are maintained across
       transitions in dot3OamOperStatus.
       "                      "A count of the number of Information OAMPDUs transmitted on
       this interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.  " "[802.3ah], 30.3.6.1.20."                    "A count of the number of Information OAMPDUs received on this
       interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.21."                    %"A count of the number of unique Event OAMPDUs transmitted on
       this interface.  Event Notifications may be sent in duplicate
       to increase the probability of successfully being received,



       given the possibility that a frame may be lost in transit.
       Duplicate Event Notification transmissions are counted by
       dot3OamDuplicateEventNotificationTx.

       A unique Event Notification OAMPDU is indicated as an Event
       Notification OAMPDU with a Sequence Number field that is
       distinct from the previously transmitted Event Notification
       OAMPDU Sequence Number.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.22."                    !"A count of the number of unique Event OAMPDUs received on
       this interface.  Event Notification OAMPDUs may be sent in
       duplicate to increase the probability of successfully being
       received, given the possibility that a frame may be lost in
       transit.  Duplicate Event Notification receptions are counted
       by dot3OamDuplicateEventNotificationRx.

       A unique Event Notification OAMPDU is indicated as an Event
       Notification OAMPDU with a Sequence Number field that is
       distinct from the previously received Event Notification
       OAMPDU Sequence Number.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.24."                    �"A count of the number of duplicate Event OAMPDUs transmitted



       on this interface.  Event Notification OAMPDUs may be sent in
       duplicate to increase the probability of successfully being
       received, given the possibility that a frame may be lost in
       transit.

       A duplicate Event Notification OAMPDU is indicated as an Event
       Notification OAMPDU with a Sequence Number field that is
       identical to the previously transmitted Event Notification
       OAMPDU Sequence Number.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.23."                    �"A count of the number of duplicate Event OAMPDUs received on
       this interface.  Event Notification OAMPDUs may be sent in
       duplicate to increase the probability of successfully being
       received, given the possibility that a frame may be lost in
       transit.

       A duplicate Event Notification OAMPDU is indicated as an Event
       Notification OAMPDU with a Sequence Number field that is
       identical to the previously received Event Notification OAMPDU
       Sequence Number.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.25."                    #"A count of the number of Loopback Control OAMPDUs transmitted



       on this interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.26."                    "A count of the number of Loopback Control OAMPDUs received
       on this interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.27."                     "A count of the number of Variable Request OAMPDUs transmitted
       on this interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.28."                     "A count of the number of Variable Request OAMPDUs received on



       this interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.29."                    !"A count of the number of Variable Response OAMPDUs
       transmitted on this interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.30."                    "A count of the number of Variable Response OAMPDUs received
       on this interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.31."                    ("A count of the number of Organization Specific OAMPDUs



       transmitted on this interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.32."                    ""A count of the number of Organization Specific OAMPDUs
       received on this interface.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.33."                    +"A count of the number of OAMPDUs transmitted on this
       interface with an unsupported op-code.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.18."                    +"A count of the number of OAMPDUs received on this interface



       with an unsupported op-code.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.19."                    O"A count of the number of frames that were dropped by the OA
       multiplexer.  Since the OAM multiplexer has multiple inputs
       and a single output, there may be cases where frames are
       dropped due to transmit resource contention.  This counter is
       incremented whenever a frame is dropped by the OAM layer.
       Note that any Ethernet frame, not just OAMPDUs, may be dropped
       by the OAM layer.  This can occur when an OAMPDU takes
       precedence over a 'normal' frame resulting in the 'normal'
       frame being dropped.

       When this counter is incremented, no other counters in this
       MIB are incremented.

       Discontinuities of this counter can occur at re-initialization
       of the management system, and at other times as indicated by
       the value of the ifCounterDiscontinuityTime.
       " "[802.3ah], 30.3.6.1.46."                    /"Ethernet OAM includes the ability to generate and receive
       Event Notification OAMPDUs to indicate various link problems.
       This table contains the mechanisms to enable Event



       Notifications and configure the thresholds to generate the
       standard Ethernet OAM events.  There is one entry in the table
       for every entry in dot3OamTable that supports OAM events
       (where dot3OamFunctionsSupported includes the eventSupport
       bit set).  The values in the table are maintained across
       changes to dot3OamOperStatus.

       The standard threshold crossing events are:
         - Errored Symbol Period Event.  Generated when the number of
           symbol errors exceeds a threshold within a given window
           defined by a number of symbols (for example, 1,000 symbols
           out of 1,000,000 had errors).
         - Errored Frame Period Event.  Generated when the number of
           frame errors exceeds a threshold within a given window
           defined by a number of frames (for example, 10 frames out
           of 1000 had errors).
         - Errored Frame Event.  Generated when the number of frame
           errors exceeds a threshold within a given window defined
           by a period of time (for example, 10 frames in 1 second
           had errors).
         - Errored Frame Seconds Summary Event.  Generated when the
           number of errored frame seconds exceeds a threshold within
           a given time period (for example, 10 errored frame seconds
           within the last 100 seconds).  An errored frame second is
           defined as a 1 second interval which had &gt;0 frame errors.
       There are other events (dying gasp, critical events) that are
       not threshold crossing events but which can be
       enabled/disabled via this table.
       "                       "Entries are automatically created and deleted from this
       table, and exist whenever the OAM entity supports Ethernet OA
       events (as indicated by the eventSupport bit in
       dot3OamFunctionsSuppported).  Values in the table are
       maintained across changes to the value of dot3OamOperStatus.

       Event configuration controls when the local management entity
       sends Event Notification OAMPDUs to its OAM peer, and when
       certain event flags are set or cleared in OAMPDUs.
       "                      *"The two objects dot3OamErrSymPeriodWindowHi and
       dot3OamErrSymPeriodLo together form an unsigned 64-bit
       integer representing the number of symbols over which this
       threshold event is defined.  This is defined as
     dot3OamErrSymPeriodWindow = ((2^32)*dot3OamErrSymPeriodWindowHi)
                                       + dot3OamErrSymPeriodWindowLo

       If dot3OamErrSymPeriodThreshold symbol errors occur within a
       window of dot3OamErrSymPeriodWindow symbols, an Event
       Notification OAMPDU should be generated with an Errored Symbol
       Period Event TLV indicating that the threshold has been
       crossed in this window.

       The default value for dot3OamErrSymPeriodWindow is the number
       of symbols in one second for the underlying physical layer.
       " "[802.3ah], 30.3.6.1.34"                    1"The two objects dot3OamErrSymPeriodWindowHi and
       dot3OamErrSymPeriodWindowLo together form an unsigned 64-bit
       integer representing the number of symbols over which this
       threshold event is defined.  This is defined as

     dot3OamErrSymPeriodWindow = ((2^32)*dot3OamErrSymPeriodWindowHi)
                                       + dot3OamErrSymPeriodWindowLo

       If dot3OamErrSymPeriodThreshold symbol errors occur within a
       window of dot3OamErrSymPeriodWindow symbols, an Event
       Notification OAMPDU should be generated with an Errored Symbol
       Period Event TLV indicating that the threshold has been
       crossed in this window.

       The default value for dot3OamErrSymPeriodWindow is the number
       of symbols in one second for the underlying physical layer.
       " "[802.3ah], 30.3.6.1.34"                    b"The two objects dot3OamErrSymPeriodThresholdHi and
       dot3OamErrSymPeriodThresholdLo together form an unsigned
       64-bit integer representing the number of symbol errors that
       must occur within a given window to cause this event.

       This is defined as

         dot3OamErrSymPeriodThreshold =
                           ((2^32) * dot3OamErrSymPeriodThresholdHi)
                                   + dot3OamErrSymPeriodThresholdLo

       If dot3OamErrSymPeriodThreshold symbol errors occur within a
       window of dot3OamErrSymPeriodWindow symbols, an Event
       Notification OAMPDU should be generated with an Errored Symbol
       Period Event TLV indicating that the threshold has been
       crossed in this window.

       The default value for dot3OamErrSymPeriodThreshold is one
       symbol errors.  If the threshold value is zero, then an Event



       Notification OAMPDU is sent periodically (at the end of every
       window).  This can be used as an asynchronous notification to
       the peer OAM entity of the statistics related to this
       threshold crossing alarm.
       " "[802.3ah], 30.3.6.1.34"                    ^"The two objects dot3OamErrSymPeriodThresholdHi and
       dot3OamErrSymPeriodThresholdLo together form an unsigned
       64-bit integer representing the number of symbol errors that
       must occur within a given window to cause this event.

       This is defined as

         dot3OamErrSymPeriodThreshold =
                           ((2^32) * dot3OamErrSymPeriodThresholdHi)
                                   + dot3OamErrSymPeriodThresholdLo

       If dot3OamErrSymPeriodThreshold symbol errors occur within a
       window of dot3OamErrSymPeriodWindow symbols, an Event
       Notification OAMPDU should be generated with an Errored Symbol
       Period Event TLV indicating that the threshold has been
       crossed in this window.

       The default value for dot3OamErrSymPeriodThreshold is one
       symbol error.  If the threshold value is zero, then an Event
       Notification OAMPDU is sent periodically (at the end of every
       window).  This can be used as an asynchronous notification to
       the peer OAM entity of the statistics related to this
       threshold crossing alarm.
       " "[802.3ah], 30.3.6.1.34"                    �"If true, the OAM entity should send an Event Notification
       OAMPDU when an Errored Symbol Period Event occurs.




       By default, this object should have the value true for
       Ethernet-like interfaces that support OAM.  If the OAM layer
       does not support Event Notifications (as indicated via the
       dot3OamFunctionsSupported attribute), this value is ignored.
       "                      	"The number of frames over which the threshold is defined.
       The default value of the window is the number of minimum size
       Ethernet frames that can be received over the physical layer
       in one second.

       If dot3OamErrFramePeriodThreshold frame errors occur within a
       window of dot3OamErrFramePeriodWindow frames, an Event
       Notification OAMPDU should be generated with an Errored Frame
       Period Event TLV indicating that the threshold has been
       crossed in this window.
       " "[802.3ah], 30.3.6.1.38"                    �"The number of frame errors that must occur for this event to
       be triggered.  The default value is one frame error.  If the
       threshold value is zero, then an Event Notification OAMPDU is
       sent periodically (at the end of every window).  This can be
       used as an asynchronous notification to the peer OAM entity of
       the statistics related to this threshold crossing alarm.

       If dot3OamErrFramePeriodThreshold frame errors occur within a
       window of dot3OamErrFramePeriodWindow frames, an Event
       Notification OAMPDU should be generated with an Errored Frame
       Period Event TLV indicating that the threshold has been
       crossed in this window.
       " "[802.3ah], 30.3.6.1.38"                    �"If true, the OAM entity should send an Event Notification
       OAMPDU when an Errored Frame Period Event occurs.

       By default, this object should have the value true for
       Ethernet-like interfaces that support OAM.  If the OAM layer
       does not support Event Notifications (as indicated via the
       dot3OamFunctionsSupported attribute), this value is ignored.
       "                      �"The amount of time (in 100ms increments) over which the
       threshold is defined.  The default value is 10 (1 second).

       If dot3OamErrFrameThreshold frame errors occur within a window
       of dot3OamErrFrameWindow seconds (measured in tenths of
       seconds), an Event Notification OAMPDU should be generated
       with an Errored Frame Event TLV indicating that the threshold
       has been crossed in this window.
       " "[802.3ah], 30.3.6.1.36"                    �"The number of frame errors that must occur for this event to
       be triggered.  The default value is one frame error.  If the
       threshold value is zero, then an Event Notification OAMPDU is
       sent periodically (at the end of every window).  This can be
       used as an asynchronous notification to the peer OAM entity of
       the statistics related to this threshold crossing alarm.




       If dot3OamErrFrameThreshold frame errors occur within a window
       of dot3OamErrFrameWindow (in tenths of seconds), an Event
       Notification OAMPDU should be generated with an Errored Frame
       Event TLV indicating the threshold has been crossed in this
       window.
       " "[802.3ah], 30.3.6.1.36"                    ~"If true, the OAM entity should send an Event Notification
       OAMPDU when an Errored Frame Event occurs.

       By default, this object should have the value true for
       Ethernet-like interfaces that support OAM.  If the OAM layer
       does not support Event Notifications (as indicated via the
       dot3OamFunctionsSupported attribute), this value is ignored.
       "                      �"The amount of time (in 100 ms intervals) over which the
       threshold is defined.  The default value is 100 (10 seconds).

       If dot3OamErrFrameSecsSummaryThreshold frame errors occur
       within a window of dot3OamErrFrameSecsSummaryWindow (in tenths
       of seconds), an Event Notification OAMPDU should be generated
       with an Errored Frame Seconds Summary Event TLV indicating
       that the threshold has been crossed in this window.
       " "[802.3ah], 30.3.6.1.40"                    �"The number of errored frame seconds that must occur for this
       event to be triggered.  The default value is one errored frame
       second.  If the threshold value is zero, then an Event
       Notification OAMPDU is sent periodically (at the end of every
       window).  This can be used as an asynchronous notification to
       the peer OAM entity of the statistics related to this
       threshold crossing alarm.

       If dot3OamErrFrameSecsSummaryThreshold frame errors occur
       within a window of dot3OamErrFrameSecsSummaryWindow (in tenths
       of seconds), an Event Notification OAMPDU should be generated
       with an Errored Frame Seconds Summary Event TLV indicating
       that the threshold has been crossed in this window.
       " "[802.3ah], 30.3.6.1.40"                    �"If true, the local OAM entity should send an Event
       Notification OAMPDU when an Errored Frame Seconds Event
       occurs.

       By default, this object should have the value true for
       Ethernet-like interfaces that support OAM.  If the OAM layer
       does not support Event Notifications (as indicated via the
       dot3OamFunctionsSupported attribute), this value is ignored.
       "                      �"If true, the local OAM entity should attempt to indicate a
       dying gasp via the OAMPDU flags field to its peer OAM entity
       when a dying gasp event occurs.  The exact definition of a
       dying gasp event is implementation dependent.  If the system



       does not support dying gasp capability, setting this object
       has no effect, and reading the object should always result in
       'false'.

       By default, this object should have the value true for
       Ethernet-like interfaces that support OAM.  If the OAM layer
       does not support Event Notifications (as indicated via the
       dot3OamFunctionsSupported attribute), this value is ignored.
       "                      �"If true, the local OAM entity should attempt to indicate a
       critical event via the OAMPDU flags to its peer OAM entity
       when a critical event occurs.  The exact definition of a
       critical event is implementation dependent.  If the system
       does not support critical event capability, setting this
       object has no effect, and reading the object should always
       result in 'false'.

       By default, this object should have the value true for
       Ethernet-like interfaces that support OAM.  If the OAM layer
       does not support Event Notifications (as indicated via the
       dot3OamFunctionsSupported attribute), this value is ignored.
       "                      �"This table records a history of the events that have occurred
       at the Ethernet OAM level.  These events can include locally
       detected events, which may result in locally generated
       OAMPDUs, and remotely detected events, which are detected by
       the OAM peer entity and signaled to the local entity via



       Ethernet OAM.  Ethernet OAM events can be signaled by Event
       Notification OAMPDUs or by the flags field in any OAMPDU.

       This table contains both threshold crossing events and
       non-threshold crossing events.  The parameters for the
       threshold window, threshold value, and actual value
       (dot3OamEventLogWindowXX, dot3OamEventLogThresholdXX,
       dot3OamEventLogValue) are only applicable to threshold
       crossing events, and are returned as all F's (2^32 - 1) for
       non-threshold crossing events.

       Entries in the table are automatically created when such
       events are detected.  The size of the table is implementation
       dependent.  When the table reaches its maximum size, older
       entries are automatically deleted to make room for newer
       entries.
       "                      x"An entry in the dot3OamEventLogTable.  Entries are
       automatically created whenever Ethernet OAM events occur at
       the local OAM entity, and when Event Notification OAMPDUs are
       received at the local OAM entity (indicating that events have
       occurred at the peer OAM entity).  The size of the table is
       implementation dependent, but when the table becomes full,
       older events are automatically deleted to make room for newer
       events.  The table index dot3OamEventLogIndex increments for
       each new entry, and when the maximum value is reached, the
       value restarts at zero.
       "                       W"An arbitrary integer for identifying individual events
       within the event log.  "                      �"The value of sysUpTime at the time of the logged event.  For
       locally generated events, the time of the event can be
       accurately retrieved from sysUpTime.  For remotely generated
       events, the time of the event is indicated by the reception of
       the Event Notification OAMPDU indicating that the event
       occurred on the peer.  A system may attempt to adjust the
       timestamp value to more accurately reflect the time of the
       event at the peer OAM entity by using other information, such
       as that found in the timestamp found of the Event Notification
       TLVs, which provides an indication of the relative time
       between events at the peer entity.  "                      k"The OUI of the entity defining the object type.  All IEEE
       802.3 defined events (as appearing in [802.3ah] except for the
       Organizationally Unique Event TLVs) use the IEEE 802.3 OUI of
       0x0180C2.  Organizations defining their own Event Notification
       TLVs include their OUI in the Event Notification TLV that
       gets reflected here.  "                      �"The type of event that generated this entry in the event log.
       When the OUI is the IEEE 802.3 OUI of 0x0180C2, the following
       event types are defined:
           erroredSymbolEvent(1),
           erroredFramePeriodEvent(2),
           erroredFrameEvent(3),
           erroredFrameSecondsEvent(4),
           linkFault(256),
           dyingGaspEvent(257),
           criticalLinkEvent(258)
       The first four are considered threshold crossing events, as
       they are generated when a metric exceeds a given value within
       a specified window.  The other three are not threshold
       crossing events.

       When the OUI is not 71874 (0x0180C2 in hex), then some other
       organization has defined the event space.  If event subtyping
       is known to the implementation, it may be reflected here.
       Otherwise, this value should return all F's (2^32 - 1).
       " $"[802.3ah], 30.3.6.1.10 and 57.5.3."                     �"Whether this event occurred locally (local(1)), or was
       received from the OAM peer via Ethernet OAM (remote(2)).
       "                      ~"If the event represents a threshold crossing event, the two
       objects dot3OamEventWindowHi and dot3OamEventWindowLo, form
       an unsigned 64-bit integer yielding the window over which the
       value was measured for the threshold crossing event (for
       example, 5, when 11 occurrences happened in 5 seconds while
       the threshold was 10).  The two objects are combined as:




       dot3OamEventLogWindow = ((2^32) * dot3OamEventLogWindowHi)
                                       + dot3OamEventLogWindowLo

       Otherwise, this value is returned as all F's (2^32 - 1) and
       adds no useful information.
       " &"[802.3ah], 30.3.6.1.37 and 57.5.3.2."                    z"If the event represents a threshold crossing event, the two
       objects dot3OamEventWindowHi and dot3OamEventWindowLo form an
       unsigned 64-bit integer yielding the window over which the
       value was measured for the threshold crossing event (for
       example, 5, when 11 occurrences happened in 5 seconds while
       the threshold was 10).  The two objects are combined as:

       dot3OamEventLogWindow = ((2^32) * dot3OamEventLogWindowHi)
                                       + dot3OamEventLogWindowLo

       Otherwise, this value is returned as all F's (2^32 - 1) and
       adds no useful information.
       " &"[802.3ah], 30.3.6.1.37 and 57.5.3.2."                    v"If the event represents a threshold crossing event, the two
       objects dot3OamEventThresholdHi and dot3OamEventThresholdLo
       form an unsigned 64-bit integer yielding the value that was
       crossed for the threshold crossing event (for example, 10,
       when 11 occurrences happened in 5 seconds while the threshold
       was 10).  The two objects are combined as:

     dot3OamEventLogThreshold = ((2^32) * dot3OamEventLogThresholdHi)
                                        + dot3OamEventLogThresholdLo

       Otherwise, this value is returned as all F's (2^32 -1) and
       adds no useful information.
       " &"[802.3ah], 30.3.6.1.37 and 57.5.3.2."                    w"If the event represents a threshold crossing event, the two
       objects dot3OamEventThresholdHi and dot3OamEventThresholdLo
       form an unsigned 64-bit integer yielding the value that was
       crossed for the threshold crossing event (for example, 10,
       when 11 occurrences happened in 5 seconds while the threshold
       was 10).  The two objects are combined as:

     dot3OamEventLogThreshold = ((2^32) * dot3OamEventLogThresholdHi)
                                        + dot3OamEventLogThresholdLo

       Otherwise, this value is returned as all F's (2^32 - 1) and
       adds no useful information.
       " &"[802.3ah], 30.3.6.1.37 and 57.5.3.2."                    t"If the event represents a threshold crossing event, this
       value indicates the value of the parameter within the given
       window that generated this event (for example, 11, when 11
       occurrences happened in 5 seconds while the threshold was 10).

       Otherwise, this value is returned as all F's
       (2^64 - 1) and adds no useful information.
       " &"[802.3ah], 30.3.6.1.37 and 57.5.3.2."                    \"Each Event Notification TLV contains a running total of the
       number of times an event has occurred, as well as the number
       of times an Event Notification for the event has been



       transmitted.  For non-threshold crossing events, the number of
       events (dot3OamLogRunningTotal) and the number of resultant
       Event Notifications (dot3OamLogEventTotal) should be
       identical.

       For threshold crossing events, since multiple occurrences may
       be required to cross the threshold, these values are likely
       different.  This value represents the total number of times
       this event has happened since the last reset (for example,
       3253, when 3253 symbol errors have occurred since the last
       reset, which has resulted in 51 symbol error threshold
       crossing events since the last reset).
       " &"[802.3ah], 30.3.6.1.37 and 57.5.3.2."                    q"Each Event Notification TLV contains a running total of the
       number of times an event has occurred, as well as the number
       of times an Event Notification for the event has been
       transmitted.  For non-threshold crossing events, the number of
       events (dot3OamLogRunningTotal) and the number of resultant
       Event Notifications (dot3OamLogEventTotal) should be
       identical.

       For threshold crossing events, since multiple occurrences may
       be required to cross the threshold, these values are likely
       different.  This value represents the total number of times
       one or more of these occurrences have resulted in an Event
       Notification (for example, 51 when 3253 symbol errors have
       occurred since the last reset, which has resulted in 51 symbol
       error threshold crossing events since the last reset).
       " &"[802.3ah], 30.3.6.1.37 and 57.5.3.2."                             p"A collection of objects providing the abilities,
       configuration, and status of an Ethernet OAM entity.  "                 t"A collection of objects providing the abilities,
       configuration, and status of a peer Ethernet OAM entity.  "                ;"A collection of objects providing the statistics for the
       number of various transmit and receive events for OAM on an
       Ethernet-like interface.  Note that all of these counters must
       be supported even if the related function (as described in
       dot3OamFunctionsSupported) is not supported.  "                 W"A collection of objects for controlling the OAM remote



       loopback function.  "                	"A collection of objects for configuring the thresholds for an
       Errored Symbol Period Event.

       Each [802.3ah] defined Event Notification TLV has its own
       conformance group because each event can be implemented
       independently of any other.  "                "A collection of objects for configuring the thresholds for an
       Errored Frame Period Event.

       Each [802.3ah] defined Event Notification TLV has its own
       conformance group because each event can be implemented
       independently of any other.  "                "A collection of objects for configuring the thresholds for an
       Errored Frame Event.

       Each [802.3ah] defined Event Notification TLV has its own
       conformance group because each event can be implemented
       independently of any other.  "                "A collection of objects for configuring the thresholds for an
       Errored Frame Seconds Summary Event.

       Each [802.3ah] defined Event Notification TLV has its own
       conformance group because each event can be implemented
       independently of any other.  "                 "A collection of objects for configuring the sending OAMPDUs
       with the critical event flag or dying gasp flag enabled.  "                 �"A collection of objects for configuring the thresholds for an
       Errored Frame Seconds Summary Event and maintaining the event
       information.  "                 �"A collection of notifications used by Ethernet OAM to signal
      to a management entity that local or remote events have
      occurred on a specified Ethernet link. "                         �"The compliance statement for managed entities
                  supporting OAM on Ethernet-like interfaces.
                  "   l"This group is mandatory for all IEEE 802.3 OA
       implementations that support loopback functionality. " i"This group is mandatory for all IEEE 802.3 OA
       implementations that support event functionality. " i"This group is mandatory for all IEEE 802.3 OA
       implementations that support event functionality. " i"This group is mandatory for all IEEE 802.3 OA
       implementations that support event functionality. " i"This group is mandatory for all IEEE 802.3 OA
       implementations that support event functionality. " �"This group is optional for all IEEE 802.3 OA
       implementations.  The ability to send critical events or dying
       gasp events is not required in any system.""This group is optional for all IEEE 802.3 OA
       implementations.  Entries in this table are dependent on what
       event functionality is supported in the local OA
       implementation.  At least one type of event must be supported
       for entries to appear in this table.  " �"This group is optional for all IEEE 802.3 OA
       implementations.  Since the information in the notifications
       is dependent on the dot3OamEventLogTable, that table must be
       implemented for notifications.  "                    