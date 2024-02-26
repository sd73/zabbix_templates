     �"Type code of the DCB Feature. Following is a list of defined types:

         2  Priority Groups
         3  Priority Flow Control
         4 - Application Protocol"               "IEEE 802.1p Priorities."               "LLDP DCBX Feature Sub Type."               4"Number of TCs that can simultaneously support PFC."               "Traffic Classes Supported."               3"Number of Application Protocols (TLVs) supported."               >"Private Extension: Number of TCs that supported on the peer."               "DCB Priority Groups."               9"Selector Field to specify Application Protocol ID Type."               "LLDP DCBX Version."               !"Priority Group Bandwidth Range."                                            �"The LLDP Management Information Base extension module for
            DCB Capability Exchage Protocol (DCBX).

            In order to assure the uniqueness of the LLDP-MIB,
            lldpXdcbxMIB is branched from lldpExtensions using OUI value
            as the node.  An OUI/'company_id' is a 24 bit globally unique
            assigned number referenced by various standards."M"WG-URL: ???
             WG-EMail: ???

             Contact: Robert Cowart
              Postal: IBM
                      6303 Barfield Road NE
                      Atlanta, GA 30328-4233
                      USA
                 Tel: +1-404-935-6841
              E-mail: rcowart@us.ibm.com

             Contact: Nagaraj Govindaiah
              Postal: EMULEX
                      2560 N First St. Ste.300
                      San Jose, CA 95131
                      USA
                 Tel: +1-408-904-4150
              E-mail: nagaraj.govindaiah@emulex.com"       -- November 20, 2008
     )-- OUI for IEEE DCBX is 6945 (00-1B-21)
     �"This trap is sent whenever an error occurs with DCBX control and there
         is no other trap defined for the specific error condition."                 �"This trap is sent whenever lldpXdcbxFeatError is true and there is no
         other trap defined for the specific error condition."                ."This trap is sent when multiple LLDP neighbors are detected on the
         same port.

         DCBX is expected to operate over a point to point link. If multiple
         LLDP neighbors are detected, then DCBX behaves as if the peer's DCBX
         TLVs are not present until the multiple LLDP neighbor condition is no
         longer present. An LLDP neighbor is identified by its logical MAC
         Service Access Identifier (MSAP). The logical MSAP is a concatenation
         of the chassis ID and port ID values transmitted in the LLDPDU."                �"This trap is sent when the LLDP transmit has been disabled.

         LLDP gives administrator control to enable/disable the protocol
         independently on the Rx side and Tx side. Since DCBX is an
         acknowledged protocol which uses LLDP, for the protocol to operate
         correctly both LLDP Rx and Tx must be enabled on the interface on
         which DCBX runs. The behavior of DCBX is as follows with respect to
         LLDP Rx/Tx admin state controls:

         - If either of Rx or Tx is in disable state, DCBX is disabled on the
           interface. Neither the control nor feature state machines should
           run. The LLDP PDU's that are generated from this interface do not
           have any DCBX TLVs. If the peer sends DCBX TLVs they should be
           ignored as far as the DCBX state machines are concerned.

         - When DCBX is currently running and LLDP TX is disabled, then
           according to the LLDP specification, a shutdown LLDPDU is sent. When
           the peer receives this PDU, DCBX is determined to be disabled on the
           peer. This is equivalent to DCBX TLV TTL expired in the Control
           State machine and Rx.Feature.present() = FALSE in the Feature state
           machine. If for some reason this frame is lost, then DCBX depends on
           standard rxInfoTTL expiry of the peer's LLDP TLV's.

         - When DCBX is currently running and LLDP Rx is disabled, then all
           DCBX TLV's including the control TLV should be withdrawn from the
           LLDP PDUs that the interface generates. The peer's behavior should
           be the same as discussed in the previous case."                �"This trap is sent when the LLDP receive has been disabled.

         LLDP gives administrator control to enable/disable the protocol
         independently on the Rx side and Tx side. Since DCBX is an
         acknowledged protocol which uses LLDP, for the protocol to operate
         correctly both LLDP Rx and Tx must be enabled on the interface on
         which DCBX runs. The behavior of DCBX is as follows with respect to
         LLDP Rx/Tx admin state controls:

         - If either of Rx or Tx is in disable state, DCBX is disabled on the
           interface. Neither the control nor feature state machines should
           run. The LLDP PDU's that are generated from this interface do not
           have any DCBX TLVs. If the peer sends DCBX TLVs they should be
           ignored as far as the DCBX state machines are concerned.

         - When DCBX is currently running and LLDP TX is disabled, then
           according to the LLDP specification, a shutdown LLDPDU is sent. When
           the peer receives this PDU, DCBX is determined to be disabled on the
           peer. This is equivalent to DCBX TLV TTL expired in the Control
           State machine and Rx.Feature.present() = FALSE in the Feature state
           machine. If for some reason this frame is lost, then DCBX depends on
           standard rxInfoTTL expiry of the peer's LLDP TLV's.

         - When DCBX is currently running and LLDP Rx is disabled, then all
           DCBX TLV's including the control TLV should be withdrawn from the
           LLDP PDUs that the interface generates. The peer's behavior should
           be the same as discussed in the previous case."                p"This trap is sent when a duplicate control Sub-TLV is detected.

         The DCBX Control Sub-TLV and the set of Feature Sub-TLVs can be
         arranged in any order within the DCBX TLV.  Duplicate Sub-TLVs (such
         as more than one Sub-TLV for the same feature) are not allowed.
         A duplicate DCBX Control TLV causes an error for all features."                r"This trap is sent when a duplicate feature Sub-TLV is detected.

         The DCBX Control Sub-TLV and the set of Feature Sub-TLVs can be
         arranged in any order within the DCBX TLV.  Duplicate Sub-TLV's (such
         as more than one Sub-TLV for the same feature) are not allowed.
         Duplicates are handled as a configuration error for the feature."                "This trap is sent when a feature is not supported on by a peer.

         This condition can occur when a device does not support a feature (not
         really an error) or if the feature's Advertise flag is off (possible
         configuration error)."                 i"This trap is sent when the peer has stopped responding as evidenced by
         an LLDP timeout event."                 r"This trap is sent when the configuration received from peer results
         into partial or complete mismatch."                     1"A list of all ports capable of supporting DCBX."                       D"An entry containing DCBX control parameters for a particular port."                      e"Each port contained in the chassis (that is known to the LLDP agent)
         is uniquely identified by a port number.

         A port number has no mandatory relationship to an InterfaceIndex
         object (of the interfaces MIB, IETF RFC 2863). If the LLDP agent is a
         IEEE 802.1D, IEEE 802.1Q bridge, the LldpPortNumber will have the same
         value as the dot1dBasePort object (defined in IETF RFC 1493)
         associated corresponding bridge port. If the system hosting LLDP agent
         is not an IEEE 802.1D or an IEEE 802.1Q bridge, the LldpPortNumber
         will have the same value as the corresponding interface's
         InterfaceIndex object.

         Port numbers should be in the range of 1 and 4096 since a particular
         port is also represented by the corresponding port number bit in
         LldpPortList."                       �"A device capable of any DCB feature must have DCBX enabled by default
         with an option for DCBX to be administratively disabled."                       �"Operating version of the DCBX protocol. The system adjusts as needed
         to operate at the highest version supported by both link partners."                       �"Highest DCBX protocol version supported by the system. Version numbers
         start at zero. The DCBX protocol must be backward compatible with all
         previous versions."                       r"A value that changes each time an exchanged parameter in one or more
         of the DCB feature TLVs changes."                       �"The SeqNo value from the most recent peer DCBX TLV that has been
         handled. This acknowledges to the peer that a specific SeqNo has
         been received."                           4"A list of DCBX features configured on this system."                       X"A entry containing DCBX feature parameters which are common to all
         features."                       �"Type code of the DCB Feature. Following is a list of defined types:

         2  Priority Groups
         3  Priority Flow Control
         4  Application Protocol"                      f"Some Feature TLVs may define subtypes that are specific to that
         feature. When subtypes are not defined by a specific  feature, subtype
         field should be set to zero.

         In general, the Type and SubType, taken together, identify a unique
         feature that is managed by an instance of the DCB Feature State
         Machine."                       �"Operating version of the feature. The system adjusts to operate at the
         highest version supported by both link partners."                       �"Highest feature version supported by the system. Version numbers start
         at zero. The feature must be backward compatible for all previous
         versions."                       d"Locally administered parameter that indicates whether the DCB feature
         is enabled or not."                      U"Locally administered parameter that indicates whether this feature
         accepts its configuration from the peer or not. When set to TRUE, the
         system uses the DesiredCfg supplied by a not Willing peer as the
         OperCfg. A system set to Willing must be capable of accepting any
         valid DesiredCfg for the feature from the peer.

         If both local and remote systems have the same value for the Willing
         flag, then the local DesiredCfg is used and the operational outcome of
         the exchange is determined by the Compatible method of the feature."                      "Indicates that an error has occurred during the configuration exchange
         with the peer. Error is set TRUE when the OperCfg and OperMode of a
         feature cannot be set as the protocol requires. Error is also set to
         TRUE when the Compatible method for the feature fails. The Feature
         turns OperMode to FALSE if either the local or remote Error flag is
         set to TRUE.

         Duplicate TLVs for the same Type/SubType or the DCBX Control TLV also
         causes Error to be set to TRUE."                       �"Locally administered parameter that indicates whether this feature is
         exchanged in the DCBX TLV. When Advertise is False, received TLVs for
         this feature are ignored."                       #"Operational state of the feature."                       S"Indicates whether the current DesiredCfg has been received by the
         peer."                       w"When Syncd is False, this indicates the value that SeqNo must
         become equal to before Syncd can become True."                       R"The Willing state of the peer as received in a DCBX TLV from the
         peer."                       x"Indicates that a configurable DCB Feature TLV field or state variable
         has been modified on the local system."                       l"Private Extension: The Feature Enable state of the peer as received in a DCBX TLV from the
         peer."                       k"Private Extension: The Feature Error state of the peer as received in a DCBX TLV from the
         peer."                       r"Private Extension: The Feature Advertisment state of the peer as received in a DCBX TLV from the
         peer."                       �"Private Extension: Number of TCs that supported on the peer.
         Relevan for PG and PFC features. If not relevant (as for App feat), will be set to 0."                           �"Number of TCs supported by device.
         Number of Priority Groups supported by a device can not be more than
         number of TCs supported."                       n"A list of priorities and the their priority group assignment or
         declaration of no bandwidth limit."                       �"An entry for a priority which allows the priority to be assigned to a
         priority group, or declared with no bandwidth limit."                       i"The priority which is to be assigned to a priority group, or defined
         with no bandwidth limit."                       R"The locally configured priority group value assigned to this
         priority."                      �"The operating priority group value assigned to this priority.

         NOTE: This value may be different than the locally desired value
         depending on whether or not this feature is 'willing' to accept the
         peer's desired configuration. The operating configuration MUST match
         either the locally desired configuration or the peer's desired
         configuration if the feature is operational."                       V"The priority group value that the peer desires to assign to this
         priority."                       1"A list of priority group bandwidth allocations."                       5"An entry for a priority group bandwidth allocation."                       D"The priority group for which bandwidth is allocated in this table."                       D"The locally configured bandwidth allocated to this priority group."                      �"The operating bandwidth allocated to this priority group.

         NOTE: This value may be different than the locally desired value
         depending on whether or not this feature is 'willing' to accept the
         peer's desired configuration. The operating configuration MUST match
         either the locally desired configuration or the peer's desired
         configuration if the feature is operational."                       \"The bandwidth allocation that the peer desires to assign to this
         priority group."                           4"Number of TCs that can simultaneously support PFC."                       C"A list of priority flow control configurations for each priority."                       C"An entry for configuring priority flow control for each priority."                       C"The priority for which priority flow control is being configured."                       �"The locally configured status of priority flow control for this
         priority.

         0: Disabled
         1: Enabled

         PFC Enabled means that flow control in both directions (Rx and Tx) is
         enabled."                      �"The operating status of priority flow control for this priority.

         NOTE: This value may be different than the locally desired value
         depending on whether or not this feature is 'willing' to accept the
         peer's desired configuration. The operating configuration MUST match
         either the locally desired configuration or the peer's desired
         configuration if the feature is operational."                       ^"The priority flow control status that the peer desires to assign to
         this priority."                           0"A list of Application Protocol configurations."                       3"An entry for configuring Application Protocol ID."                       f"The index of the Application Protocol being configured in a list of
         Application Protocols."                       @"The value of the Selector Field for this application protocol."                       T"The value of the Application Protocol OUI for this application
         protocol."                       S"The value of the Application Protocol ID for this application
         protocol."                       B"A list of priority configurations for each application protocol."                       A"An entry for selecting priorities for the Application Protocol."                       B"The priority for which Application Protocol is being configured."                       �"The locally configured status of Application Protocol for this
         priority.

         0: Disabled
         1: Enabled"                      �"The operating status of Application Protocol for this priority.

         NOTE: This value may be different than the locally desired value
         depending on whether or not this feature is 'willing' to accept the
         peer's desired configuration. The operating configuration MUST match
         either the locally desired configuration or the peer's desired
         configuration if the feature is operational."                       ]"The Application Protocol status that the peer desires to assign to
         this priority."                      