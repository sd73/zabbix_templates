    "Identifies the source of the data that the associated function
         is configured to analyze. This Textual Convention
         extends the DataSource Textual Convention defined by RMON 2
         to the following data source types:

         - ifIndex.<I>
         DataSources of this traditional form are called 'port-based',
         but only if ifType.<I> is not equal to 'propVirtual(53)'.

         - smonVlanDataSource.<V>
         A dataSource of this form refers to a 'Packet-based VLAN'
         and is called a 'VLAN-based' dataSource. <V> is the VLAN
         ID as defined by the IEEE 802.1Q standard [19]. The
         value is between 1 and 4094 inclusive, and it represents
         an 802.1Q VLAN-ID with global scope within a given
         bridged domain, as defined by [19].

        - entPhysicalEntry.<N>
         A dataSource of this form refers to a physical entity within
         the agent (e.g. entPhysicalClass = backplane(4)) and is called
         an 'entity-based' dataSource."                                 I"An indication of the SMON MIB groups supported
         by this agent."                               n"The MIB module for managing remote monitoring device
                 implementations for Switched Networks"�"IETF RMONMIB WG Mailing list: rmonmib@cisco.com

                Rich Waterman
                Allot Networks Inc.
                Tel:  +1-408-559-0253
                Email: rich@allot.com

                Bill Lahaye
                Xylan Corp.
                Tel: +1-800-995-2612
                Email:  lahaye@ctron.com

                Dan Romascanu
                Lucent Technologies
                Tel:  +972-3-645-8414
                Email: dromasca@lucent.com

                Steven Waldbusser
                International Network Services (INS)
                Tel: +1-650-318-1251
                Email: waldbusser@ins.com" "9812160000Z" )"Initial Version, published as RFC 2613."                      "This table describes RMON data sources and port copy
        capabilities. An NMS MAY use this table to discover the
        identity and attributes of the data sources on a given agent
        implementation. Similar to the probeCapabilities object,
        actual row-creation operations will succeed or fail based on
        the resources available and parameter values used in each
        row-creation operation.

        Upon restart of the RMON agent, the dataSourceTable, ifTable,
        and perhaps entPhysicalTable are initialized for the available
        dataSources.

        For each dataSourceCapsEntry representing a VLAN or
        entPhysicalEntry the agent MUST create an associated ifEntry
        with a ifType value of 'propVirtual(53)'. This ifEntry will be
        used as the actual value in RMON control table dataSource
        objects. The assigned ifIndex value is copied into the
        associated dataSourceCapsIfIndex object.

        It is understood that dataSources representing VLANs may not
        always be instantiated immediately upon restart, but rather as
        VLAN usage is detected by the agent. The agent SHOULD attempt
        to create dataSource and interface entries for all dataSources
        as soon as possible."                       �"Entries per data source containing descriptions of data
         source and port copy capabilities. This table is populated by
         the SMON agent with one entry for each supported data
         source."                       u"Defines an object that can be a SMON data source or a
          source or a destination for a port copy operation."                      	" General attributes of the specified dataSource. Note that
        these are static attributes, which SHOULD NOT be adjusted
        because of current resources or configuration.

      - countErrFrames(0)
          The agent sets this bit for the dataSource if errored frames
          received on this dataSource can actually be monitored by the
          agent The agent clears this bit if any errored frames are
          not visible to the RMON data collector.

      - countAllGoodFrames(1)
          The agent sets this bit for the dataSource if all good
          frames received on this dataSource can actually be monitored
          by the agent. The agent clears this bit if any good frames
          are not visible for RMON collection, e.g., the dataSource is
          a non-promiscuous interface or an internal switch interface
          which may not receive frames which were switched in hardware
          or dropped by the bridge forwarding function.

      - countAnyRmonTables(2)
          The agent sets this bit if this dataSource can actually be
          used in any of the implemented RMON tables, resources
          notwithstanding. The agent clears this bit if this
          dataSourceCapsEntry is present simply to identify a
          dataSource that may only be used as portCopySource and/or a
          portCopyDest, but not the source of an actual RMON data
          collection.

      - babyGiantsCountAsGood(3)
          The agent sets this bit if it can distinguish, for counting
          purposes, between true giant frames and frames that exceed
          Ethernet maximum frame size 1518 due to VLAN tagging ('baby
          giants'). Specifically, this BIT means that frames up to
          1522 octets are counted as good.

          Agents not capable of detecting 'baby giants' will clear
          this bit and will view all frames less than or equal to 1518
          octets as 'good frames' and all frames larger than 1518
          octets as 'bad frames' for the purpose of counting in the
          smonVlanIdStats and smonPrioStats tables.

          Agents capable of detecting 'baby giants' SHALL consider
          them as 'good frames' for the purpose of counting in the
          smonVlanIdStats and smonPrioStats tables."                      ="PortCopy function capabilities of the specified dataSource.
    Note that these are static capabilities, which SHOULD NOT be
    adjusted because of current resources or configuration.

      - copySourcePort(0)
          The agent sets this bit if this dataSource is capable of
          acting as a source of a portCopy operation. The agent clears
          this bit otherwise.

      - copyDestPort(1)
          The agent sets this bit if this dataSource is capable of
          acting as a destination of a portCopy operation. The agent
          clears this bit otherwise.

     - copySrcTxTraffic(2)
          If the copySourcePort bit is set:
                The agent sets this bit if this dataSource is capable of
              copying frames transmitted out this portCopy source. The
              agent clears this bit otherwise. This function is needed
              to support full-duplex ports.
           Else:
               this bit SHOULD be cleared.

      - copySrcRxTraffic(3)
          If the copySourcePort bit is set:
            The agent sets this bit if this dataSource is capable of
            copying frames received on this portCopy source. The agent
            clears this bit otherwise. This function is needed to
            support full-duplex ports.
          Else:
            this bit SHOULD be cleared.

      - countDestDropEvents(4)
          If the copyDestPort bit is set:
              The agent sets this bit if it is capable of incrementing
              portCopyDestDropEvents, when this dataSource is the
              target of a portCopy operation and a frame destined to
              this dataSource is dropped (for RMON counting purposes).
          Else:
              this BIT SHOULD be cleared.

      - copyErrFrames(5)
          If the copySourcePort bit is set:
              The agent sets this bit if it is capable of copying all
              errored frames from this portCopy source-port, for
              errored frames received on this dataSource.
          Else:
              this BIT SHOULD be cleared.

      - copyUnalteredFrames(6)
          If the copySourcePort bit is set:
              The agent sets the copyUnalteredFrames bit If it is
              capable of copying all frames from this portCopy
              source-port without alteration in any way;
          Else:
              this bit SHOULD be cleared.

      - copyAllGoodFrames(7)
          If the copySourcePort bit is set:
              The agent sets this bit for the dataSource if all good
              frames received on this dataSource are normally capable
              of being copied by the agent. The agent clears this bit
              if any good frames are not visible for the RMON portCopy
              operation, e.g., the dataSource is a non-promiscuous
              interface or an internal switch interface which may not
              receive frames which were switched in hardware or
              dropped by the bridge forwarding function.
           Else:
              this bit SHOULD be cleared."                       �"This object contains the ifIndex value of the ifEntry
         associated with this smonDataSource. The agent MUST create
         'propVirtual' ifEntries for each dataSourceCapsEntry of type
         VLAN or entPhysicalEntry."                           �"Controls the setup of VLAN statistics tables.

         The statistics collected represent a distribution based on
         the IEEE 802.1Q VLAN-ID (VID), for each good frame attributed
         to the data source for the collection."                       4"A conceptual row in the smonVlanStatsControlTable."                       >"A unique arbitrary index for this smonVlanStatsControlEntry."                       �"The source of data for this set of VLAN statistics.

        This object MAY NOT be modified if the associated
        smonVlanStatsControlStatus object is equal to active(1)."                       �"The value of sysUpTime when this control entry was last
        activated. This object allows to a management station to
        detect deletion and recreation cycles between polls."                      %"Administratively assigned named of the owner of this entry.
        It usually defines the entity that created this entry and is
        therefore using the resources assigned to it, though there is
        no enforcement mechanism, nor assurance that rows created are
        ever used."                      "The status of this row.
        An entry MAY NOT exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all associated
        entries in the smonVlanIdStatsTable SHALL be deleted."                      �"Contains the VLAN statistics data.
         The statistics collected represent a distribution based
         on the IEEE 802.1Q VLAN-ID (VID), for each good frame
         attributed to the data source for the collection.

         This function applies the same rules for attributing frames
         to VLAN-based collections. RMON VLAN statistics are collected
         after the Ingress Rules defined in section 3.13 of the VLAN
         Specification [20] are applied.

         It is possible that entries in this table will be
         garbage-collected, based on agent resources, and VLAN
         configuration. Agents are encouraged to support all 4094
         index values and not garbage collect this table."                       +"A conceptual row in smonVlanIdStatsTable."                      �"The unique identifier of the VLAN monitored for
         this specific statistics collection.

        Tagged packets match the VID for the range between 1 and 4094.
        An external RMON probe MAY detect VID=0 on an Inter Switch
        Link, in which case the packet belongs to a VLAN determined by
        the PVID of the ingress port. The VLAN to which such a packet
        belongs can be determined only by a RMON probe internal to the
        switch." ^"Draft Standard for Virtual Bridged Local Area Networks,
          P802.1Q/D10, chapter 3.13"                     3"The total number of packets counted on this VLAN."                       _"The number of times the associated smonVlanIdStatsTotalPkts
         counter has overflowed."                       3"The total number of packets counted on this VLAN."                       2"The total number of octets counted on this VLAN."                       a"The number of times the associated smonVlanIdStatsTotalOctets
         counter has overflowed."                       2"The total number of octets counted on this VLAN."                       I"The total number of non-unicast packets counted on this
         VLAN."                       `"The number of times the associated smonVlanIdStatsNUcastPkts
         counter has overflowed."                       I"The total number of non-unicast packets counted on
         this VLAN."                       H"The total number of non-unicast octets counted on
         this VLAN."                       b"The number of times the associated
         smonVlanIdStatsNUcastOctets counter has overflowed."                       H"The total number of Non-unicast octets counted on
         this VLAN."                       �"The value of sysUpTime when this entry was last
        activated. This object allows to a management station to
        detect deletion and recreation cycles between polls."                      �"Controls the setup of priority statistics tables.

         The smonPrioStatsControlTable allows configuration of
         collections based on the value of the 3-bit user priority
         field encoded in the Tag Control Information (TCI) field
         according to [19],[20].

         Note that this table merely reports priority as encoded in
         the VLAN headers, not the priority (if any) given to the
         frame for the actual switching purposes."                       4"A conceptual row in the smonPrioStatsControlTable."                       >"A unique arbitrary index for this smonPrioStatsControlEntry."                       �"The source of data for this set of VLAN statistics.

        This object MAY NOT be modified if the associated
        smonPrioStatsControlStatus object is equal to active(1)."                       �"The value of sysUpTime when this entry was created.
        This object allows to a management station to
        detect deletion and recreation cycles between polls."                      %"Administratively assigned named of the owner of this entry.
        It usually defines the entity that created this entry and is
        therefore using the resources assigned to it, though there is
        no enforcement mechanism, nor assurance that rows created are
        ever used."                      "The status of this row.
        An entry MAY NOT exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all associated
        entries in the smonPrioStatsTable SHALL be deleted."                      u"Contains the priority statistics. The collections are based
         on the value of the 3-bit user priority field encoded in the
         Tag Control Information (TCI) field according to [19], [20].
         Note that this table merely reports priority as encoded in
         the VLAN headers, not the priority (if any) given to the
         frame for the actual switching purposes.

         No garbage collection is designed for this table, as there
         always are at most eight rows per statistical set, and the
         low memory requirements do not justify the implementation of
         such a mechanism."                       )"A conceptual row in smonPrioStatsTable."                       j"The unique identifier of the priority level monitored for
         this specific statistics collection." b" Draft Standard for Virtual Bridged Local Area Networks,
          P802.1Q/D10, chapter 4.3.2.1"                     G"The total number of packets counted on
         this priority level."                       X"The number of times the associated smonPrioStatsPkts
         counter has overflowed."                       G"The total number of packets counted on
         this priority level."                       F"The total number of octets counted on
         this priority level."                       Z"The number of times the associated smonPrioStatsOctets
         counter has overflowed."                       F"The total number of octets counted on
         this priority level."                          	o" Port Copy provides the ability to copy all frames from a
         specified source to specified destination within a switch.
         Source and destinations MUST be ifEntries, as defined by [22].
         One to one, one to many, many to one and many to many source to
         destination relationships may be configured.

         Applicable counters on the destination will increment for all
         packets transiting the port, be it by normal bridging/switching
         or due to packet copy.
         Note that this table manages no RMON data collection by itself,
         and an agent may possibly implement no RMON objects except
         objects related to the port copy operation defined by the
         portCopyCompliance conformance macro. That allows for a switch
         with no other embedded RMON capability to perform port copy
         operations to a destination port at which a different external
         RMON probe is connected.

         One to one, many to one and one to many source to destination
         relationships may be configured.
         Each row that exists in this table defines such a
         relationship. By disabling a row in this table the port copy
         relationship no longer exists.

         The number of entries and the types of port copies (1-1,
         many-1, 1-many) are implementation specific and could
         possibly be dynamic due to changing resource availability.

         In order to configure a source to destination portCopy
         relationship, both source and destination interfaces MUST be
         present as an ifEntry in the ifTable and their respective
         ifAdminStatus and ifOperStatus values MUST be equal to
         'up(1)'. If the value of any of those two objects changes
         after the portCopyEntry is activated, portCopyStatus will
         transition to 'notReady(3)'.

         The capability of an interface to be source or destination of
         a port copy operation is described by the 'copySourcePort(0)'
         and 'copyDestPort(1)' bits in dataSourceCopyCaps. Those bits
         SHOULD be appropriately set by the agent, in order to allow
         for a portCopyEntry to be created.

         Applicable counters on the destination will increment for all
         packets transmitted, be it by normal bridging/switching or
         due to packet copy."                       )"Describes a particular port copy entry."                       {"The ifIndex of the source which will have all packets
         redirected to the destination as defined by portCopyDest."                       9"Defines the ifIndex destination for the copy operation."                      "The total number of events in which port copy packets were
         dropped by the switch at the destination port due to lack of
         resources.

         Note that this number is not necessarily the number of
         packets dropped; it is just the number of times this
         condition has been detected.

         A single dropped event counter is maintained for each
         portCopyDest. Thus all instances associated with a given
         portCopyDest will have the same portCopyDestDropEvents
         value."                      &"This object affects the way traffic is copied from a switch
          source port, for the indicated port copy operation.
         If this object has the value 'copyRxOnly(1)', then only
         traffic received on the indicated source port will be copied
         to the indicated destination port.

         If this object has the value 'copyTxOnly(2)', then only
         traffic transmitted out the indicated source port will be
         copied to the indicated destination port.

         If this object has the value 'copyBoth(3)', then all traffic
         received or transmitted on the indicated source port will be
         copied to the indicated destination port.

         The creation and deletion of instances of this object is
         controlled by the portCopyRowStatus object. Note that there
         is no guarantee that changes in the value of this object
         performed while the associated portCopyRowStatus object is
         equal to active will not cause traffic discontinuities in the
         packet stream."                      6"Defines the status of the port copy entry.

         In order to configure a source to destination portCopy
         relationship, both source and destination interfaces MUST be
         present as an ifEntry in the ifTable and their respective
         ifAdminStatus and ifOperStatus values MUST be equal to
         'up(1)'. If the value of any of those two objects changes
         after the portCopyEntry is activated, portCopyStatus will
         transition to 'notReady(3)'.

         The capability of an interface to be source or destination of
         a port copy operation is described by the 'copySourcePort(0)'
         and 'copyDestPort(1)' bits in dataSourceCopyCaps. Those bits
         SHOULD be appropriately set by the agent, in order to allow
         for a portCopyEntry to be created."                                       L"Describes the requirements for full conformance with the SMON
        MIB"   �"This group of VLAN statistics counter are mandatory only for
         those network interfaces for which the corresponding ifSpeed
         can be greater than 10MB/sec and less than or equal to
         100MB/sec."&"This group of VLAN statistics counters are mandatory only for
         those network interfaces for which the corresponding ifSpeed
         can be more than 100MB/sec. This group of VLAN statistics is
         also mandatory for smonDataSources of type VLAN or
         entPhysicalEntry."             �"Describes the requirements for conformance with the SMON MIB
         with support for VLAN Statistics. Mandatory for a SMON probe
         in environment where IEEE 802.1Q bridging is implemented."   �"This group of VLAN statistics counter are mandatory only
         for those network interfaces for which the corresponding
         ifSpeed can be up to and including 100MB/sec."%"This group of VLAN statistics counters are mandatory only for
         those network interfaces for which the corresponding ifSpeed
         is greater than 100MB/sec. This group of VLAN statistics is
         also mandatory for smonDataSources of type VLAN or
         entPhysicalEntry."             �"Describes the requirements for conformance with the SMON MIB
         with support for priority level Statistics. Mandatory for a
         SMON probe in a environment where IEEE 802.1p
         priority-switching is implemented."   �"This group of VLAN priority statistics counters are mandatory
         only for those network interfaces for which the corresponding
         ifSpeed can be up to and including 100MB/sec.""This group is mandatory only for those network
         interfaces for which the corresponding ifSpeed is greater
         than 100MB/sec. This group of VLAN priority
         statistics is also mandatory for smonDataSources of type
         VLAN or entPhysicalEntry"             o"Describes the requirements for conformance with the port copy
         functionality defined by the SMON MIB"                   T"Defines the objects that describe the capabilities of RMON
         data sources."                 j"Defines the switch monitoring specific statistics - per VLAN
         Id on interfaces of 10MB or less."                 Y"Defines the switch monitoring specific statistics - per VLAN
         Id on interface."                 �"Defines the additional high capacity statistics needed to be
         kept on interfaces with ifSpeed greater than 10MB/sec and
         less than or equal to 100MB/sec."                 �"Defines the additional high capacity statistics needed to be
         kept on interfaces with ifSpeed of more than 100MB/sec. These
         statistics MUST also be kept on smonDataSources of type VLAN
         or entPhysicalEntry."                 �"Defines the additional high capacity VLAN statistics
         needed to be kept on interfaces with ifSpeed greater than
         10MB/sec and less than or equal to 100MB/sec."                 �"Defines the additional high capacity VLAN statistics
         needed to be kept on interfaces with ifSpeed of more than
         100MB/sec.  These statistics MUST also be kept on
         smonDataSources of type VLAN or entPhysicalEntry."                 �"Defines the additional high capacity VLAN priority
         statistics needed to be kept on interfaces with
         ifSpeed of greater than 10MB/sec and less than or equal
         to 100MB/sec."                "Defines the additional high capacity VLAN priority
         statistics needed to be kept on interfaces with
         ifSpeed of greater than 100MB/sec. These statistics MUST
         also be kept on smonDataSources of type VLAN or
         entPhysicalEntry."                 �"Defines the switch monitoring specific statistics for systems
         capable of counting non-unicast octets for a given dataSource
         (as described in the dataSourceRmonCaps object)."                 J"An indication of the SMON capabilities supported by this
        agent."                 7"Defines the control objects for copy port operations."                        