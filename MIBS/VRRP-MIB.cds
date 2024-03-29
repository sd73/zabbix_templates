     �"A number which, along with an interface index (ifIndex),
         serves to uniquely identify a virtual router on a given VRRP
         router. A set of one or more associated addresses is assigned
         to a VRID."                                                                                                         l"This MIB describes objects used for managing Virtual Router
          Redundancy Protocol (VRRP) routers." �"Brian R. Jewell
     Postal: Copper Mountain Networks, Inc.
             2470 Embarcadero Way
             Palo Alto, California 94303
     Tel:    +1 650 687 3367
     E-Mail: bjewell@coppermountain.com" "200003030000Z" +"Initial version as published in RFC 2787."                   \"This value identifies the particular version of the VRRP
         supported by this node."                       �"Indicates whether the VRRP-enabled router will generate
         SNMP traps for events defined in this MIB. 'Enabled'
         results in SNMP traps; 'disabled', no traps are sent."                       �"Operations table for a VRRP router which consists of a
          sequence (i.e., one or more conceptual rows) of
          'vrrpOperEntry' items."                      �"An entry in the vrrpOperTable containing the operational
          characteristics of a virtual router. On a VRRP router,
          a given virtual router is identified by a combination
          of the IF index and VRID.

          Rows in the table cannot be modified unless the value
          of `vrrpOperAdminState' is `disabled' and the
          `vrrpOperState' has transitioned to `initialize'."                       <"This object contains the Virtual Router Identifier (VRID)."                      "The virtual MAC address of the virtual router. Although this
         object can be derived from the 'vrrpOperVrId' object, it is
         defined so that it is easily obtainable by a management
         application and can be included in VRRP-related SNMP traps."                      v"The current state of the virtual router. This object has
         three defined values:

           - `initialize', which indicates that all the
             virtual router is waiting for a startup event.

           - `backup', which indicates the virtual router is
             monitoring the availability of the master router.

           - `master', which indicates that the virtual router
             is forwarding packets for IP addresses that are
             associated with this router.

         Setting the `vrrpOperAdminState' object (below) initiates
         transitions in the value of this object."                      "This object will enable/disable the virtual router
         function. Setting the value to `up', will transition
         the state of the virtual router from `initialize' to `backup'
         or `master', depending on the value of `vrrpOperPriority'.
         Setting the value to `down', will transition  the
         router from `master' or `backup' to `initialize'. State
         transitions may not be immediate; they sometimes depend on
         other factors, such as the interface (IF) state.

         The `vrrpOperAdminState' object must be set to `down' prior
         to modifying the other read-create objects in the conceptual
         row. The value of the `vrrpOperRowStatus' object (below)
         must be `active', signifying that the conceptual row
         is valid (i.e., the objects are correctly set),
         in order for this object to be set to `up'."                      �"This object specifies the priority to be used for the
         virtual router master election process. Higher values imply
         higher priority.

         A priority of '0', although not settable, is sent by
         the master router to indicate that this router has ceased
         to participate in VRRP and a backup virtual router should
         transition  to become a new master.

         A priority of 255 is used for the router that owns the
         associated IP address(es)."                       �"The number of IP addresses that are associated with this
         virtual router. This number is equal to the number of rows
         in the vrrpAssoIpAddrTable that correspond to a given IF
         index/VRID pair."                       �"The master router's real (primary) IP address. This is
         the IP address listed as the source in VRRP advertisement
         last received by this virtual router."                      t"In the case where there is more than one IP address for
         a given `ifIndex', this object is used to specify the IP
         address that will become the `vrrpOperMasterIpAddr', should
         the virtual router transition from backup to master. If
         this object is set to 0.0.0.0, the IP address which is
         numerically lowest will be selected."                     -- 0.0.0.0

"Authentication type used for VRRP protocol exchanges between
         virtual routers. This value of this object is the same for a
         given ifIndex.

         New enumerations to this list can only be added via a new
         RFC on the standards track."                      �"The Authentication Key. This object is set according to
         the value of the 'vrrpOperAuthType' object
         ('simpleTextPassword' or 'ipAuthenticationHeader'). If the
         length of the value is less than 16 octets, the agent will
         left adjust and zero fill to 16 octets. The value of this
         object is the same for a given ifIndex.

         When read, vrrpOperAuthKey always returns an Octet String
         of length zero."                       �"The time interval, in seconds, between sending
         advertisement messages. Only the master router sends
         VRRP advertisements."                       c"Controls whether a higher priority virtual router will
         preempt a lower priority master."                       �"This is the value of the `sysUpTime' object when this
         virtual router (i.e., the `vrrpOperState') transitioned
         out of `initialized'."                       �"The particular protocol being controlled by this Virtual
         Router.

         New enumerations to this list can only be added via a new
         RFC on the standards track."                      1"The row status variable, used in accordance to installation
         and removal conventions for conceptual rows. The rowstatus of
         a currently active row in the vrrpOperTable is constrained
         by the operational state of the corresponding virtual router.
         When `vrrpOperRowStatus' is set to active(1), no other
         objects in the conceptual row, with the exception of
         `vrrpOperAdminState', can be modified. Prior to setting the
         `vrrpOperRowStatus' object from `active' to a different value,
         the `vrrpOperAdminState' object must be set to `down' and the
         `vrrpOperState' object be transitioned to `initialize'.

         To create a row in this table, a manager sets this object
         to either createAndGo(4) or createAndWait(5). Until instances
         of all corresponding columns are appropriately configured,
         the value of the corresponding instance of the `vrrpOperRowStatus'
         column will be read as notReady(3).

         In particular, a newly created row cannot be made active(1)
         until (minimally) the corresponding instance of
         `vrrpOperVrId' has been set and there is at least one active
         row in the `vrrpAssoIpAddrTable' defining an associated
         IP address for the virtual router."                       ="The table of addresses associated with this virtual router."                      �"An entry in the table contains an IP address that is
         associated with a virtual router. The number of rows for
         a given ifIndex and VrId will equal the number of IP
         addresses associated (e.g., backed up) by the virtual
         router (equivalent to 'vrrpOperIpAddrCount').

         Rows in the table cannot be modified unless the value
         of `vrrpOperAdminState' is `disabled' and the
         `vrrpOperState' has transitioned to `initialize'."                       Z"The assigned IP addresses that a virtual router is
         responsible for backing up."                      �"The row status variable, used according to installation
         and removal conventions for conceptual rows. Setting this
         object to active(1) or createAndGo(4) results in the
         addition of an associated address for a virtual router.
         Destroying the entry or setting it to notInService(2)
         removes the associated address from the virtual router.
         The use of other values is implementation-dependent."                       W"The IP address of an inbound VRRP packet. Used by
         vrrpTrapAuthFailure trap."                       U"Potential types of configuration conflicts.
         Used by vrrpAuthFailure trap."                           Z"The total number of VRRP packets received with an invalid
         VRRP checksum value."                       d"The total number of VRRP packets received with an unknown
         or unsupported version number."                       c"The total number of VRRP packets received with an invalid
         VRID for this virtual router."                       %"Table of virtual router statistics."                       b"An entry in the table, containing statistics information
         about a given virtual router."                       b"The total number of times that this virtual router's state
         has transitioned to MASTER."                       T"The total number of VRRP advertisements received by this
         virtual router."                       �"The total number of VRRP advertisement packets received
         for which the advertisement interval is different than the
         one configured for the local virtual router."                       `"The total number of VRRP packets received that do not pass
         the authentication check."                       x"The total number of VRRP packets received by the virtual
         router with IP TTL (Time-To-Live) not equal to 255."                       c"The total number of VRRP packets received by the virtual
         router with a priority of '0'."                       _"The total number of VRRP packets sent by the virtual router
         with a priority of '0'."                       p"The number of VRRP packets received by the virtual router
         with an invalid value in the 'type' field."                       �"The total number of packets received for which the address
         list does not match the locally configured list for the
         virtual router."                       U"The total number of packets received with an unknown
         authentication type."                       �"The total number of packets received with 'Auth Type' not
         equal to the locally configured authentication method
         (`vrrpOperAuthType')."                       n"The total number of packets received with a packet length
         less than the length of the VRRP header."                               ="The core compliance statement for all VRRP implementations."   #"SETable values are from 1 to 255."                 ("Conformance group for VRRP operations."                 ("Conformance group for VRRP statistics."                 @"Conformance group for objects contained in VRRP notifications."                 ""The VRRP MIB Notification Group."                         c"The newMaster trap indicates that the sending agent
         has transitioned to 'Master' state."                "A vrrpAuthFailure trap signifies that a packet has
         been received from a router whose authentication key
         or authentication type conflicts with this router's
         authentication key or authentication type. Implementation
         of this trap is optional."                        