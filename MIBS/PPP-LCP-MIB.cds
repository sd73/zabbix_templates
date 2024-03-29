                   g"A table containing PPP-link specific variables
                         for this PPP implementation."                       O"Management information about a particular PPP
                         Link."                      �"The value of ifIndex that identifies the
                         lower-level interface over which this PPP Link
                         is operating. This interface would usually be
                         an HDLC or RS-232 type of interface. If there
                         is no lower-layer interface element, or there
                         is no ifEntry for the element, or the element
                         can not be identified, then the value of this
                         object is 0.  For example, suppose that PPP is
                         operating over a serial port. This would use
                         two entries in the ifTable. The PPP could be
                         running over `interface' number 123 and the
                         serial port could be running over `interface'
                         number 987.  Therefore, ifSpecific.123 would
                         contain the OBJECT IDENTIFIER ppp
                         pppLinkStatusPhysicalIndex.123 would contain
                         987, and ifSpecific.987 would contain the
                         OBJECT IDENTIFIER for the serial-port's media-
                         specific MIB."                      %"The number of packets received with an
                         incorrect Address Field. This counter is a
                         component of the ifInErrors variable that is
                         associated with the interface that represents
                         this PPP Link." )"Section 3.1, Address Field, of RFC1331."                    2"The number of packets received on this link
                         with an incorrect Control Field. This counter
                         is a component of the ifInErrors variable that
                         is associated with the interface that
                         represents this PPP Link." )"Section 3.1, Control Field, of RFC1331."                    "The number of received packets that have been
                         discarded because their length exceeded the
                         MRU. This counter is a component of the
                         ifInErrors variable that is associated with the
                         interface that represents this PPP Link. NOTE,
                         packets which are longer than the MRU but which
                         are successfully received and processed are NOT
                         included in this count."                      ="The number of received packets that have been
                         discarded due to having an incorrect FCS. This
                         counter is a component of the ifInErrors
                         variable that is associated with the interface
                         that represents this PPP Link."                      �"The current value of the MRU for the local PPP
                         Entity. This value is the MRU that the remote
                         entity is using when sending packets to the
                         local PPP entity. The value of this object is
                         meaningful only when the link has reached the
                         open state (ifOperStatus is up)."                      �"The current value of the MRU for the remote
                         PPP Entity. This value is the MRU that the
                         local entity is using when sending packets to
                         the remote PPP entity. The value of this object
                         is meaningful only when the link has reached
                         the open state (ifOperStatus is up)."                      B"The current value of the ACC Map used for
                         sending packets from the local PPP entity to
                         the remote PPP entity. The value of this object
                         is meaningful only when the link has reached
                         the open state (ifOperStatus is up)."                      1"The ACC Map used by the remote PPP entity when
                         transmitting packets to the local PPP entity.
                         The value of this object is meaningful only
                         when the link has reached the open state
                         (ifOperStatus is up)."                      g"Indicates whether the local PPP entity will
                         use Protocol Compression when transmitting
                         packets to the remote PPP entity. The value of
                         this object is meaningful only when the link
                         has reached the open state (ifOperStatus is
                         up)."                      g"Indicates whether the remote PPP entity will
                         use Protocol Compression when transmitting
                         packets to the local PPP entity. The value of
                         this object is meaningful only when the link
                         has reached the open state (ifOperStatus is
                         up)."                      r"Indicates whether the local PPP entity will
                         use Address and Control Compression when
                         transmitting packets to the remote PPP entity.
                         The value of this object is meaningful only
                         when the link has reached the open state
                         (ifOperStatus is up)."                      r"Indicates whether the remote PPP entity will
                         use Address and Control Compression when
                         transmitting packets to the local PPP entity.
                         The value of this object is meaningful only
                         when the link has reached the open state
                         (ifOperStatus is up)."                      l"The size of the Frame Check Sequence (FCS) in
                         bits that the local node will generate when
                         sending packets to the remote node. The value
                         of this object is meaningful only when the link
                         has reached the open state (ifOperStatus is
                         up)."                      l"The size of the Frame Check Sequence (FCS) in
                         bits that the remote node will generate when
                         sending packets to the local node. The value of
                         this object is meaningful only when the link
                         has reached the open state (ifOperStatus is
                         up)."                      �"A table containing the LCP configuration
                         parameters for this PPP Link. These variables
                         represent the initial configuration of the PPP
                         Link. The actual values of the parameters may
                         be changed when the link is brought up via the
                         LCP options negotiation mechanism."                       R"Configuration information about a particular
                         PPP Link."                      �"The initial Maximum Receive Unit (MRU) that
                         the local PPP entity will advertise to the
                         remote entity. If the value of this variable is
                         0 then the local PPP entity will not advertise
                         any MRU to the remote entity and the default
                         MRU will be assumed. Changing this object will
                         have effect when the link is next restarted." /"Section 7.2, Maximum Receive Unit of RFC1331."                    "The Asynchronous-Control-Character-Map (ACC)
                         that the local PPP entity requires for use on
                         its receive side. In effect, this is the ACC
                         Map that is required in order to ensure that
                         the local modem will successfully receive all
                         characters. The actual ACC map used on the
                         receive side of the link will be a combination
                         of the local node's pppLinkConfigReceiveACCMap
                         and the remote node's
                         pppLinkConfigTransmitACCMap. Changing this
                         object will have effect when the link is next
                         restarted." Y"Section 7.3, page 4, Async-Control-Character-
                         Map of RFC1331."                    "The Asynchronous-Control-Character-Map (ACC)
                         that the local PPP entity requires for use on
                         its transmit side. In effect, this is the ACC
                         Map that is required in order to ensure that
                         all characters can be successfully transmitted
                         through the local modem.  The actual ACC map
                         used on the transmit side of the link will be a
                         combination of the local node's
                         pppLinkConfigTransmitACCMap and the remote
                         node's pppLinkConfigReceiveACCMap. Changing
                         this object will have effect when the link is
                         next restarted." Y"Section 7.3, page 4, Async-Control-Character-
                         Map of RFC1331."                    "If true(2) then the local node will attempt to
                         perform Magic Number negotiation with the
                         remote node. If false(1) then this negotiation
                         is not performed. In any event, the local node
                         will comply with any magic number negotiations
                         attempted by the remote node, per the PPP
                         specification. Changing this object will have
                         effect when the link is next restarted." ("Section 7.6, Magic Number, of RFC1331."                    �"The size of the FCS, in bits, the local node
                         will attempt to negotiate for use with the
                         remote node. Regardless of the value of this
                         object, the local node will comply with any FCS
                         size negotiations initiated by the remote node,
                         per the PPP specification. Changing this object
                         will have effect when the link is next
                         restarted."                           h"Table containing the LQR parameters and
                         statistics for the local PPP entity."                       �"LQR information for a particular PPP link. A
                         PPP link will have an entry in this table if
                         and only if LQR Quality Monitoring has been
                         successfully negotiated for said link."                      �"The current quality of the link as declared by
                         the local PPP entity's Link-Quality Management
                         modules. No effort is made to define good or
                         bad, nor the policy used to determine it. The
                         not-determined value indicates that the entity
                         does not actually evaluate the link's quality.
                         This value is used to disambiguate the
                         `determined to be good' case from the `no
                         determination made and presumed to be good'
                         case."                       -"The LQR InGoodOctets counter for this link." $"Section 2.2, Counters, of RFC1333."                     �"The LQR reporting period, in hundredths of a
                         second that is in effect for the local PPP
                         entity." Q"Section 2.5, Configuration Option Format, of
                         RFC1333."                     �"The LQR reporting period, in hundredths of a
                         second, that is in effect for the remote PPP
                         entity." Q"Section 2.5, Configuration Option Format, of
                         RFC1333."                     r"The value of the OutLQRs counter on the local
                         node for the link identified by ifIndex." $"Section 2.2, Counters, of RFC1333."                     q"The value of the InLQRs counter on the local
                         node for the link identified by ifIndex." $"Section 2.2, Counters, of RFC1333."                     g"Table containing the LQR Configuration
                         parameters for the local PPP entity."                       T"LQR configuration information for a particular
                         PPP link."                      9"The LQR Reporting Period that the local PPP
                         entity will attempt to negotiate with the
                         remote entity, in units of hundredths of a
                         second. Changing this object will have effect
                         when the link is next restarted." Q"Section 2.5, Configuration Option Format, of
                         RFC1333."                    �"If enabled(2) then the local node will attempt
                         to perform LQR negotiation with the remote
                         node. If disabled(1) then this negotiation is
                         not performed. In any event, the local node
                         will comply with any magic number negotiations
                         attempted by the remote node, per the PPP
                         specification. Changing this object will have
                         effect when the link is next restarted.
                         Setting this object to the value disabled(1)
                         has the effect of invalidating the
                         corresponding entry in the pppLqrConfigTable
                         object. It is an implementation-specific matter
                         as to whether the agent removes an invalidated
                         entry from the table. Accordingly, management
                         stations must be prepared to receive tabular
                         information from agents that corresponds to
                         entries not currently in use." ("Section 7.6, Magic Number, of RFC1331."                     a"Table containing additional LQR information
                         for the local PPP entity."                      h"Extended LQR information for a particular PPP
                         link. Assuming that this group has been
                         implemented, a PPP link will have an entry in
                         this table if and only if LQR Quality
                         Monitoring has been successfully negotiated for
                         said link."                      w"This object contains the most recently
                         received LQR packet.  The format of the packet
                         is as described in the LQM Protocol
                         specificiation. All fields of the packet,
                         including the `save' fields, are stored in this
                         object.

                         The LQR packet is stored in network byte order.
                         The LAP-B and PPP headers are not stored in
                         this object; the first four octets of this
                         variable contain the Magic-Number field, the
                         second four octets contain the LastOutLQRs
                         field and so on. The last four octets of this
                         object contain the SaveInOctets field of the
                         LQR packet." ("Section 2.6, Packet Format, of RFC1333"                                                