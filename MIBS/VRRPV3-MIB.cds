   !" RFC 5798 (Sections 3 and 5.2.3" �"The value of the virtual router identifier noted as
            (VRID) in RFC5798. This along with interface index
            (ifIndex)and IP version, serves to uniquely identify a
            virtual router on a given VRRP router."                                                                                                                        %"This MIB describes objects used for managing Virtual
             Router Redundancy Protocol version 3 (VRRPv3).

             Copyright (C) The Internet Society (2010).
             This version of MIB module is part of RFC YYYY.
             Please see the RFC for full legal notices.""WG E-Mail: vrrp@ietf.org

                Editor:    Kalyan Tata
                           Check Point Software
                           800 Bridge Park Way,
                           Redwood City, CA 94065
                           tata_kalyan@yahoo.com" "201006090000Z" +"Initial version as published in RFC YYYY."       -- June 9, 2010
     �-- EdNote: Please replace YYYY with actual RFC number for
-- this draft and remove this note.
--    ::= { mib-2 ZZZ }
-- EdNote: Please replace ZZZ with IANA assigned number
-- and remove this note.
-- Use currently radlan MIB
     m"The newMaster notification indicates that the sending
           agent has transitioned to 'Master' state."                 �"The notification indicates that the sending agent has
           encountered the protocol error indicated by
           vrrpv3ProtoErrorReason."                         �"Unified Operations table for a VRRP router which
             consists of a sequence (i.e., one or more conceptual
             rows) of 'vrrpv3OperationsEntry' items which describe
             the operational characteristics of a virtual router."                      $"An entry in the vrrpv3OperationsTable containing the
             operational characteristics of a virtual router.  On a
             VRRP router, a given virtual router is identified by a
             combination of ifIndex, VRID and the IP version.
             ifIndex represents a interface of the router.
             Note that rows in this table can be distinguished on a
             multi-stacked device running VRRP over IPvX on the
             same interface.

             Rows in the table cannot be modified unless the value
             of 'vrrpv3OperStatus' has transitioned to
             'initialize' state.

             The information in this table is persistent and when
             written the entity SHOULD save the change to non-
             volatile storage."                       J"This object contains the Virtual Router Identifier
             (VRID)." 
"RFC 4001"                     �"The IP address type of Vrrpv3OperationsEntry. This
             value determines the type for both
             vrrpv3OperationsMasterIpAddr and
             vrrpv3OperationsPrimaryIpAddr." 
"RFC 4001"                    N"The master router's real IP address. Master router
            would set this address to vrrpv3OperationsPrimaryIpAddr
            while transitioning to master state. For backup
            routers, this is the IP address listed as the source in
            VRRP advertisement last received by this virtual
            router." " RFC 5798"                    L"In the case where there are more than one IP
            Address (associated IP addresses) for a given
            `ifIndex', this object is used to specify the IP
            address that will become the
            vrrpv3OperationsMasterIpAddr', should the virtual
            router transition from backup state to master."                      2"The virtual MAC address of the virtual router.
            Although this object can be derived from the
            'vrrpv3OperationsVrId' object, it is defined so that it
            is easily obtainable by a management application and
            can be included in VRRP-related SNMP notifications." "STD 58 RFC 2578"                    "The current state of the virtual router. This object
            has three defined values:

              - `initialize', which indicates that the
                virtual router is waiting for a startup event.

              - `backup', which indicates the virtual router is
                monitoring the availability of the master router.

              - `master', which indicates that the virtual router
                is forwarding packets for IP addresses that are
                associated with this router." " RFC 5798"                    �"This object specifies the priority to be used for the
            virtual router master election process.  Higher values
            imply higher priority.

            A priority of '0', although not settable, is sent by
            the master router to indicate that this router has
            ceased to participate in VRRP and a backup virtual
            router should transition to become a new master.

            A priority of 255 is used for the router that owns the
            associated IP address(es) for VRRP over IPv4 and hence
            not settable.

            A 'badValue(3)' should be returned when a user tries to
            set 0 or 255 for this object. " " RFC 5798 section 6.1"                     �"The number of IP addresses that are associated with
            this virtual router.  This number is equal to the
            number of rows in the vrrpv3AssociatedAddrTable that
            correspond to a given ifIndex/VRID/IP version." "RFC 5798 Section 6.1"                     �"The time interval, in centiseconds, between sending
            advertisement messages. Only the master router sends
            VRRP advertisements." " RFC 5798 section 6.1"                     f"Controls whether a higher priority virtual router will
            preempt a lower priority master." " RFC 5798 section 6.1"                    V"Controls whether a virtual router in Master state
            will accept packets addressed to the address owner's
            IPv6 address as its own if it is not the IPv6 address
            owner.  Default is False.
            This object is not relevant for rows representing VRRP
            over IPv4 and should be set to false."                       �"This is the value of the `sysUpTime' object when this
            virtual router (i.e., the `vrrpv3OperStatus')
            transitioned out of `initialized'." " RFC 5798 section 6.1"                    `"The RowStatus variable should be used in accordance to
            installation and removal conventions for conceptual
            rows. When `vrrpv3OperationsRowStatus' is set to
            active(1), no other objects in the conceptual row can
            be modified.

            To create a row in this table, a manager sets this
            object to either createAndGo(4) or createAndWait(5).
            Until instances of all corresponding columns are
            appropriately configured, the value of the
            Corresponding instance of the
            `vrrpv3OperationsRowStatus' column will be read as
            notReady(3).
            In particular, a newly created row cannot be made
            active(1) until (minimally) the corresponding instance
            of vrrpv3OperationsInetAddrType, vrrpv3OperationsVrId
            and vrrpv3OperationsPrimaryIpAddr has been set and
            there is at least one active row in the
            `vrrpv3AssociatedIpAddrTable' defining an associated
            IP address.

            notInService(2) should be used to administratively
            bring the row down.

            A typical order of operation to add a row is:
            1. Create a row in vrrpv3OperationsTable with
            createAndWait(5).
            2. Create one or more corresponding rows in
            vrrpv3AssociatedIpAddrTable.
            3. Populate the vrrpv3OperationsEntry.
            4. set vrrpv3OperationsRowStatus to active(1).

            A typical order of operation to delete an entry is:
            1. Set vrrpv3OperationsRowStatus to notInService(2).
            2. Set the corresponding rows in
            vrrpv3AssociatedIpAddrTable to destroy(6) to delete the
            entry.
            3. set vrrpv3OperationsRowStatus to destroy(6) to
            delete the entry."                       K"The table of addresses associated with this virtual
             router."                      �"An entry in the table contains an IP address that is
            associated with a virtual router.  The number of rows
            for a given IP version, VrID and ifIndex will equal the
            number of IP addresses associated (e.g., backed up) by
            the virtual router (equivalent to
            'vrrpv3OperationsIpAddrCount').

            Rows in the table cannot be modified unless the value
            of `vrrpv3OperStatus' has transitioned to
            `initialize'.
            The information in this table is persistent and when
            written the entity SHOULD save the change to non-
            volatile storage."                       ]"The assigned IP addresses that a virtual router is
            responsible for backing up." " RFC 5798 "                    �"The row status variable, used according to
            installation and removal conventions for conceptual
            rows. To create a row in this table, a manager sets
            this object to either createAndGo(4) or
            createAndWait(5). Setting this object to active(1)
            results in the addition of an associated address for a
            virtual router. Setting this object to notInService(2)
            results in administratively bringing down the row.

            Destroying the entry or setting it to destroy(6)
            removes the associated address from the virtual router.
            The use of other values is implementation-dependent.

            Implementations should not allow deletion of the last
            row corresponding to an active row in
            vrrpv3OperationsTable.
            Refer to description of vrrpv3OperationsRowStatus for a
            typical row creation and deletion scenarios."                           ]"The total number of VRRP packets received with an
            invalid VRRP checksum value." " RFC 5798 Section 5.2.8"                     g"The total number of VRRP packets received with an
            unknown or unsupported version number." " RFC 5798 Section 5.2.1"                     f"The total number of VRRP packets received with an
            invalid VRID for this virtual router." " RFC 5798 Section 5.2.3"                     %"Table of virtual router statistics."                       e"An entry in the table, containing statistics
            information about a given virtual router."                      T"The total number of times that this virtual router's
            state has transitioned to MASTER.

            Discontinuities in the value of this counter can occur
            at re-initialization of the management system, and at
            other times as indicated by the value of
            vrrpv3StatisticsDiscontinuityTime."                      z"This indicates the reason for the virtual router to
            transition to MASTER state. If the virtual router never
            transitioned to master state, this SHOULD be set to
            notmaster(0). Otherwise this indicates the reason this
            virtual router transitioned to master state the last
            time. Used by vrrpv3NewMaster notification."                      F"The total number of VRRP advertisements received by
            this virtual router.

            Discontinuities in the value of this counter can occur
            at re-initialization of the management system, and at
            other times as indicated by the value of
            vrrpv3StatisticsDiscontinuityTime."                      �"The total number of VRRP advertisement packets
            received for which the advertisement interval is
            different than the one configured for the local virtual
            router.

            Discontinuities in the value of this counter can occur
            at re-initialization of the management system, and at
            other times as indicated by the value of
            vrrpv3StatisticsDiscontinuityTime."                      �"The total number of VRRP packets received by the
            Virtual router with IPv4 TTL (for VRRP over IPv4) or
            IPv6 Hop Limit (for VRRP over IPv6) not equal to 255.

            Discontinuities in the value of this counter can occur
            at re-initialization of the management system, and at
            other times as indicated by the value of
            vrrpv3StatisticsDiscontinuityTime." "RFC 5798 Section 5.1.1.3"                     �"This indicates the reason for the last protocol error.
             This SHOULD be set to noError(0) when no protocol
             errors are encountered. Used by vrrpv3ProtoError
             notification."                      U"The total number of VRRP packets received by the
            virtual router with a priority of '0'.

            Discontinuities in the value of this counter can occur
            at re-initialization of the management system, and at
            other times as indicated by the value of
            vrrpv3StatisticsDiscontinuityTime." "RFC 5798 Section 5.2.4"                    Q"The total number of VRRP packets sent by the virtual
            router with a priority of '0'.

            Discontinuities in the value of this counter can occur
            at re-initialization of the management system, and at
            other times as indicated by the value of
            vrrpv3StatisticsDiscontinuityTime." "RFC 5798 Section 5.3.4"                    b"The number of VRRP packets received by the virtual
            router with an invalid value in the 'type' field.

            Discontinuities in the value of this counter can occur
            at re-initialization of the management system, and at
            other times as indicated by the value of
            vrrpv3StatisticsDiscontinuityTime."                      �"The total number of packets received for which the
            address list does not match the locally configured list
            for the virtual router.

            Discontinuities in the value of this counter can occur
            at re-initialization of the management system, and at
            other times as indicated by the value of
            vrrpv3StatisticsDiscontinuityTime."                      `"The total number of packets received with a packet
            length less than the length of the VRRP header.

            Discontinuities in the value of this counter can occur
            at re-initialization of the management system, and at
            other times as indicated by the value of
            vrrpv3StatisticsDiscontinuityTime."                      X"The value of sysUpTime on the most recent occasion at
            which any one or more of this entry's counters suffered
            a discontinuity.

            If no such discontinuities have occurred since the last
            re-initialization of the local management subsystem,
            then this object contains a zero value."                       �"The minimum reasonable polling interval for this entry.
            This object provides an indication of the minimum
            Amount of time required to update the counters in this
            entry."                               "The compliance statement"   #"Setable values are from 1 to 254."            "When this MIB is implemented without support for read-
           create (i.e. in read-only mode), then such an
           implementation can claim read-only compliance. Such a
           device can then be monitored but can not be configured
           with this MIB."   "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required."                 *"Conformance group for VRRPv3 operations."                 *"Conformance group for VRRPv3 statistics."                 O"Conformance group for objects contained in VRRPv3
            notifications."                 ""The VRRP MIB Notification Group."                            