 i-- MIB created 4/24/97 17:58:32, by
--   SMIC (the next generation) version 1.6.29, November 22, 1994.
                                                                                                �"In a system containing multiple managed
        repeaters, the rptrInfoResetEvent notification
        conveys information related to the operational
        status of a repeater. This notification is sent
        on completion of a repeater reset action.  A
        repeater reset action is defined as a transition
        to the START state of Fig 9-2 in section 9 of
        [IEEE 802.3 Std], when triggered by a management
        command (e.g., an SNMP Set on the rptrInfoReset
        object).

        The agent must throttle the generation of
        consecutive rptrInfoResetEvent notifications for
        a single repeater so that there is at least
        a five-second gap between notifications of
        this type.  When notifications are throttled,
        they are dropped, not queued for sending at
        a future time.  (Note that 'generating' a
        notification means sending to all configured
        recipients.)

        The rptrInfoResetEvent is not sent when the
        agent restarts and sends an SNMP coldStart or
        warmStart trap.  However, it is recommended that
        a repeater agent send the rptrInfoOperStatus
        object as an optional object with its coldStart
        and warmStart trap PDUs." E"[IEEE 802.3 Mgt], 30.4.1.3.2, nRepeaterReset
        notification."     --  Status
--    mandatory
    ?"********* THIS OBJECT IS DEPRECATED **********

        In a system containing a single managed repeater,
        this notification is sent when a change occurs in the
        group structure of the repeater.  This occurs only
        when a group is logically or physically removed
        from or added to a repeater.  The varBind list
        contains the identifier of the group that was
        removed or added.

        The agent must throttle the generation of
        consecutive rptrGroupChange traps for the same
        group so that there is at least a five-second gap
        between traps of this type.  When traps are
        throttled, they are dropped, not queued for
        sending at a future time.  (Note that 'generating'
        a trap means sending to all configured
        recipients.)" F"[IEEE 802.3 Mgt], 30.4.1.3.3, nGroupMapChange
        notification."     --  Status
--    deprecated
    �"********* THIS OBJECT IS DEPRECATED **********

        In a system containing a single managed repeater-unit,
        the rptrResetEvent notification conveys information
        related to the operational status of the repeater.
        This trap is sent on completion of a repeater
        reset action.  A repeater reset action is defined
        as an a transition to the START state of Fig 9-2
        in section 9 [IEEE 802.3 Std], when triggered by a
        management command (e.g., an SNMP Set on the


        rptrReset object).

        The agent must throttle the generation of
        consecutive rptrResetEvent traps so that there is
        at least a five-second gap between traps of this
        type.  When traps are throttled, they are dropped,
        not queued for sending at a future time.  (Note
        that 'generating' a trap means sending to all
        configured recipients.)

        The rptrResetEvent trap is not sent when the agent
        restarts and sends an SNMP coldStart or warmStart
        trap.  However, it is recommended that a repeater
        agent send the rptrOperStatus object as an
        optional object with its coldStart and warmStart
        trap PDUs.

        The rptrOperStatus object must be included in the
        varbind list sent with this trap.  The agent may
        optionally include the rptrHealthText object as
        well." E"[IEEE 802.3 Mgt], 30.4.1.3.2, nRepeaterReset
        notification."     --  Status
--    deprecated
    "********* THIS OBJECT IS DEPRECATED **********

        In a system containing a single managed repeater,
        the rptrHealth notification conveys information
        related to the operational status of the repeater.
        It is sent either when the value of
        rptrOperStatus changes, or upon completion of a
        non-disruptive test.

        The rptrHealth notification must contain the
        rptrOperStatus object.  The agent may optionally
        include the rptrHealthText object in the varBind
        list.  See the rptrOperStatus and rptrHealthText
        objects for descriptions of the information that
        is sent.

        The agent must throttle the generation of
        consecutive rptrHealth traps so that there is at
        least a five-second gap between traps of this
        type.  When traps are throttled, they are dropped,
        not queued for sending at a future time.  (Note


        that 'generating' a trap means sending to all
        configured recipients.)" F"[IEEE 802.3 Mgt], 30.4.1.3.1, nRepeaterHealth
        notification."     --  Status
--    deprecated
    �"In a system containing multiple managed repeaters,
        the rptrInfoHealth notification conveys information
        related to the operational status of a repeater.
        It is sent either when the value of rptrInfoOperStatus
        changes, or upon completion of a non-disruptive test.

        The agent must throttle the generation of
        consecutive rptrInfoHealth notifications for
        the same repeater so that there is at least
        a five-second gap between notifications of this type.
        When notifications are throttled, they are dropped,
        not queued for sending at a future time.  (Note


        that 'generating' a notification means sending
        to all configured recipients.)" F"[IEEE 802.3 Mgt], 30.4.1.3.1, nRepeaterHealth
        notification."     --  Status
--    mandatory
                                                                                                                            J"********* THIS OBJECT IS DEPRECATED **********

        The rptrGroupCapacity is the number of groups
        that can be contained within the repeater.  Within
        each managed repeater, the groups are uniquely
        numbered in the range from 1 to rptrGroupCapacity.

        Some groups may not be present in the repeater, in
        which case the actual number of groups present
        will be less than rptrGroupCapacity.  The number
        of groups present will never be greater than
        rptrGroupCapacity.

        Note:  In practice, this will generally be the
        number of field-replaceable units (i.e., modules,
        cards, or boards) that can fit in the physical
        repeater enclosure, and the group numbers will
        correspond to numbers marked on the physical
        enclosure." @"[IEEE 802.3 Mgt], 30.4.1.1.3,
        aRepeaterGroupCapacity."                    �"********* THIS OBJECT IS DEPRECATED **********

        The rptrOperStatus object indicates the
        operational state of the repeater.  The
        rptrHealthText object may be consulted for more
        specific information about the state of the
        repeater's health.

        In the case of multiple kinds of failures (e.g.,
        repeater failure and port failure), the value of
        this attribute shall reflect the highest priority
        failure in the following order, listed highest
        priority first:

            rptrFailure(3)
            groupFailure(4)
            portFailure(5)
            generalFailure(6)." 5"[IEEE 802.3 Mgt], 30.4.1.1.5, aRepeaterHealthState."                    �"********* THIS OBJECT IS DEPRECATED **********

        The health text object is a text string that
        provides information relevant to the operational
        state of the repeater.  Agents may use this string
        to provide detailed information on current
        failures, including how they were detected, and/or
        instructions for problem resolution.  The contents
        are agent-specific." 4"[IEEE 802.3 Mgt], 30.4.1.1.6, aRepeaterHealthText."         *--    Rsyntax OCTET STRING(SIZE(0..255))
          �"********* THIS OBJECT IS DEPRECATED **********

        Setting this object to reset(2) causes a
        transition to the START state of Fig 9-2 in
        section 9 [IEEE 802.3 Std] for a 10Mb/s repeater,
        and the START state of Fig 27-2 in section 27
        of that standard for a 100Mb/s repeater.

        Setting this object to noReset(1) has no effect.
        The agent will always return the value noReset(1)
        when this object is read.

        After receiving a request to set this variable to
        reset(2), the agent is allowed to delay the reset
        for a short period.  For example, the implementor
        may choose to delay the reset long enough to allow
        the SNMP response to be transmitted.  In any
        event, the SNMP response must be transmitted.

        This action does not reset the management counters
        defined in this document nor does it affect the
        portAdminStatus parameters.  Included in this
        action is the execution of a disruptive Self-Test
        with the following characteristics:  a) The nature
        of the tests is not specified.  b) The test resets
        the repeater but without affecting management
        information about the repeater.  c) The test does
        not inject packets onto any segment.  d) Packets
        received during the test may or may not be
        transferred.  e) The test does not interfere with
        management functions.

        After performing this self-test, the agent will
        update the repeater health information (including
        rptrOperStatus and rptrHealthText), and send a
        rptrHealth trap." 0"[IEEE 802.3 Mgt], 30.4.1.2.1, acResetRepeater."                    ."********* THIS OBJECT IS DEPRECATED **********

        Setting this object to selfTest(2) causes the
        repeater to perform a agent-specific, non-
        disruptive self-test that has the following
        characteristics:  a) The nature of the tests is
        not specified.  b) The test does not change the
        state of the repeater or management information
        about the repeater.  c) The test does not inject
        packets onto any segment.  d) The test does not
        prevent the relay of any packets.  e) The test
        does not interfere with management functions.

        After performing this test, the agent will update
        the repeater health information (including
        rptrOperStatus and rptrHealthText) and send a
        rptrHealth trap.

        Note that this definition allows returning an
        'okay' result after doing a trivial test.

        Setting this object to noSelfTest(1) has no
        effect.  The agent will always return the value
        noSelfTest(1) when this object is read." H"[IEEE 802.3 Mgt], 30.4.1.2.2,
        acExecuteNonDisruptiveSelfTest."                    y"********* THIS OBJECT IS DEPRECATED **********

        This object returns the total number of ports in
        the repeater whose current state meets all three
        of the following criteria:  rptrPortOperStatus
        does not have the value notPresent(3),
        rptrPortAdminStatus is enabled(1), and
        rptrPortAutoPartitionState is autoPartitioned(2)."                           Q"Table of descriptive and status information about
        the groups of ports."                       W"An entry in the table, containing information
        about a single group of ports."                       u"This object identifies the group within the


        system for which this entry contains
        information." )"[IEEE 802.3 Mgt], 30.4.2.1.1, aGroupID."                    ,"********* THIS OBJECT IS DEPRECATED **********

        A textual description of the group.  This value
        should include the full name and version
        identification of the group's hardware type and
        indicate how the group is differentiated from
        other types of groups in the repeater.  Plug-in
        Module, Rev A' or 'Barney Rubble 10BASE-T 4-port
        SIMM socket Version 2.1' are examples of valid
        group descriptions.

        It is mandatory that this only contain printable
        ASCII characters."           *--    Rsyntax OCTET STRING(SIZE(0..255))
          L"The vendor's authoritative identification of the
        group.  This value may be allocated within the SMI
        enterprises subtree (1.3.6.1.4.1) and provides a
        straight-forward and unambiguous means for
        determining what kind of group is being managed.

        For example, this object could take the value
        1.3.6.1.4.1.4242.1.2.14 if vendor 'Flintstones,
        Inc.' was assigned the subtree 1.3.6.1.4.1.4242,
        and had assigned the identifier
        1.3.6.1.4.1.4242.1.2.14 to its 'Wilma Flintstone
        6-Port FOIRL Plug-in Module.'"                      E"An object that indicates the operational status
        of the group.

        A status of notPresent(4) indicates that the group
        is temporarily or permanently physically and/or
        logically not a part of the repeater.  It is an
        implementation-specific matter as to whether the
        agent effectively removes notPresent entries from
        the table.

        A status of operational(2) indicates that the
        group is functioning, and a status of
        malfunctioning(3) indicates that the group is
        malfunctioning in some way."                      )"********* THIS OBJECT IS DEPRECATED **********

        An object that contains the value of sysUpTime at
        the time when the last of the following occurred:
          1) the agent cold- or warm-started;
          2) the row for the group was created (such
             as when the group was added to the system); or
          3) the value of rptrGroupOperStatus for the
             group changed.

        A value of zero indicates that the group's
        operational status has not changed since the agent
        last restarted."                      �"The rptrGroupPortCapacity is the number of ports
        that can be contained within the group.  Valid
        range is 1-2147483647.  Within each group, the
        ports are uniquely numbered in the range from 1 to
        rptrGroupPortCapacity.

        Some ports may not be present in the system, in
        which case the actual number of ports present
        will be less than the value of rptrGroupPortCapacity.
        The number of ports present in the group will never
        be greater than the value of rptrGroupPortCapacity.

        Note:  In practice, this will generally be the
        number of ports on a module, card, or board, and
        the port numbers will correspond to numbers marked
        on the physical embodiment." 1"IEEE 802.3 Mgt, 30.4.2.1.2, aGroupPortCapacity."                         �"Table of descriptive and status information about
        the repeater ports in the system.  The number of
        entries is independent of the number of repeaters
        in the managed system."                       M"An entry in the table, containing information
        about a single port."                       j"This object identifies the group containing the
        port for which this entry contains information."                      ~"This object identifies the port within the group
        for which this entry contains information.  This
        identifies the port independently from the repeater
        it may be attached to.  The numbering scheme for
        ports is implementation specific; however, this
        value can never be greater than
        rptrGroupPortCapacity for the associated group." ("[IEEE 802.3 Mgt], 30.4.3.1.1, aPortID."                    �"Setting this object to disabled(2) disables the
        port.  A disabled port neither transmits nor
        receives.  Once disabled, a port must be
        explicitly enabled to restore operation.  A port
        which is disabled when power is lost or when a
        reset is exerted shall remain disabled when normal
        operation resumes.

        The admin status takes precedence over auto-
        partition and functionally operates between the
        auto-partition mechanism and the AUI/PMA.

        Setting this object to enabled(1) enables the port
        and exerts a BEGIN on the port's auto-partition
        state machine.

        (In effect, when a port is disabled, the value of
        rptrPortAutoPartitionState for that port is frozen
        until the port is next enabled.  When the port
        becomes enabled, the rptrPortAutoPartitionState
        becomes notAutoPartitioned(1), regardless of its
        pre-disabling state.)" \"[IEEE 802.3 Mgt], 30.4.3.1.2, aPortAdminState
        and 30.4.3.2.1, acPortAdminControl."                    X"The autoPartitionState flag indicates whether the
        port is currently partitioned by the repeater's
        auto-partition protection.

        The conditions that cause port partitioning are
        specified in partition state machine in Sections
        9 and 27 of [IEEE 802.3 Std].  They are not
        differentiated here." 4"[IEEE 802.3 Mgt], 30.4.3.1.3, aAutoPartitionState."                    }"This object indicates the port's operational
        status.  The notPresent(3) status indicates the
        port is physically removed (note this may or may
        not be possible depending on the type of port.)
        The operational(1) status indicates that the port
        is enabled (see rptrPortAdminStatus) and working,
        even though it might be auto-partitioned (see
        rptrPortAutoPartitionState).

        If this object has the value operational(1) and
        rptrPortAdminStatus is set to disabled(2), it is
        expected that this object's value will soon change
        to notOperational(2)."                      J"This object identifies the repeater to
        which this port belongs.  The repeater
        identified by a particular value of this object
        is the same as that identified by the same
        value of rptrInfoId.  A value of zero
        indicates that this port currently is not
        a member of any repeater."                           �"A table of information about each
        non-trivial repeater. The number of entries
        depends on the physical configuration of the
        managed system."                       ]"An entry in the table, containing information
        about a single non-trivial repeater."                       Y"This object identifies the repeater for which
        this entry contains information."                       Z"The rptrInfoRptrType returns a value that identifies
        the CSMA/CD repeater type." ."[IEEE 802.3 Mgt], 30.4.1.1.2, aRepeaterType."                     Y"The rptrInfoOperStatus object indicates the
        operational state of the repeater." 5"[IEEE 802.3 Mgt], 30.4.1.1.5, aRepeaterHealthState."                    d"Setting this object to reset(2) causes a
        transition to the START state of Fig 9-2 in
        section 9 [IEEE 802.3 Std] for a 10Mb/s repeater,
        and to the START state of Fig 27-2 in section 27
        of that standard for a 100Mb/s repeater.

        Setting this object to noReset(1) has no effect.
        The agent will always return the value noReset(1)
        when this object is read.

        After receiving a request to set this variable to
        reset(2), the agent is allowed to delay the reset


        for a short period.  For example, the implementor
        may choose to delay the reset long enough to allow
        the SNMP response to be transmitted.  In any
        event, the SNMP response must be transmitted.

        This action does not reset the management counters
        defined in this document nor does it affect the
        portAdminStatus parameters.  Included in this
        action is the execution of a disruptive Self-Test
        with the following characteristics:  a) The nature
        of the tests is not specified.  b) The test resets
        the repeater but without affecting management
        information about the repeater.  c) The test does
        not inject packets onto any segment.  d) Packets
        received during the test may or may not be
        transferred.  e) The test does not interfere with
        management functions.

        After performing this self-test, the agent will
        update the repeater health information (including
        rptrInfoOperStatus), and send a rptrInfoResetEvent
        notification." 0"[IEEE 802.3 Mgt], 30.4.1.2.1, acResetRepeater."                    ?"This object returns the total number of ports in
        the repeater whose current state meets all three
        of the following criteria:  rptrPortOperStatus
        does not have the value notPresent(3),
        rptrPortAdminStatus is enabled(1), and
        rptrPortAutoPartitionState is autoPartitioned(2)."                      �"The value of sysUpTime when any of the following
        conditions occurred:
          1) agent cold- or warm-started;
          2) this instance of repeater was created


             (such as when a device or module was
             added to the system);
          3) a change in the value of rptrInfoOperStatus;
          4) ports were added or removed as members of
             the repeater; or
          5) any of the counters associated with this
             repeater had a discontinuity."           --    Rsyntax TimeTicks
                  �"********* THIS OBJECT IS DEPRECATED **********

        For a clause 9 (10Mb/s) repeater, this counter
        is incremented every time the repeater state
        machine enters the TRANSMIT COLLISION state
        from any state other than ONE PORT LEFT
        (Ref: Fig 9-2 [IEEE 802.3 Std]).

        For a clause 27 repeater, this counter is
        incremented every time the repeater core state
        diagram enters the Jam state as a result of
        Activity(ALL) > 1 (fig 27-2 [IEEE 802.3 Std]).


        The approximate minimum time for rollover of this
        counter is 16 hours in a 10Mb/s repeater and 1.6
        hours in a 100Mb/s repeater." 4"[IEEE 802.3 Mgt], 30.4.1.1.8, aTransmitCollisions."                         �"********* THIS OBJECT IS DEPRECATED **********

        Table of performance and error statistics for the
        groups within the repeater.  The number of entries
        is the same as that in the rptrGroupTable."                      �"********* THIS OBJECT IS DEPRECATED **********

        An entry in the table, containing total
        performance and error statistics for a single
        group.  Regular retrieval of the information in
        this table provides a means of tracking the
        performance and health of the networked devices
        attached to this group's ports.

        The counters in this table are redundant in the
        sense that they are the summations of information
        already available through other objects.  However,
        these sums provide a considerable optimization of
        network management traffic over the otherwise
        necessary retrieval of the individual counters
        included in each sum.

        Note:  Group-level counters are


        deprecated in this MIB.  It is recommended
        that management applications instead use
        the repeater-level counters contained in
        the rptrMonTable."                       �"********* THIS OBJECT IS DEPRECATED **********

        This object identifies the group within the
        repeater for which this entry contains
        information."                      "********* THIS OBJECT IS DEPRECATED **********

        The total number of frames of valid frame length
        that have been received on the ports in this group
        and for which the FCSError and CollisionEvent
        signals were not asserted.  This counter is the
        summation of the values of the
        rptrMonitorPortReadableFrames counters for all of
        the ports in the group.

        This statistic provides one of the parameters
        necessary for obtaining the packet error rate.


        The approximate minimum time for rollover of this
        counter is 80 hours in a 10Mb/s repeater."                      "********* THIS OBJECT IS DEPRECATED **********

        The total number of octets contained in the valid
        frames that have been received on the ports in
        this group.  This counter is the summation of the
        values of the rptrMonitorPortReadableOctets
        counters for all of the ports in the group.

        This statistic provides an indicator of the total
        data transferred.  The approximate minimum time
        for rollover of this counter is 58 minutes in a
        10Mb/s repeater."                      ,"********* THIS OBJECT IS DEPRECATED **********

        The total number of errors which have occurred on
        all of the ports in this group.  This counter is
        the summation of the values of the
        rptrMonitorPortTotalErrors counters for all of the
        ports in the group."                          8"Table of performance and error statistics for the
        ports.  The number of entries is the same as that


        in the rptrPortTable.

        The columnar object rptrMonitorPortLastChange
        is used to indicate possible discontinuities
        of counter type columnar objects in the table."                       `"An entry in the table, containing performance and
        error statistics for a single port."                       j"This object identifies the group containing the
        port for which this entry contains information."                       f"This object identifies the port within the group
        for which this entry contains information." ("[IEEE 802.3 Mgt], 30.4.3.1.1, aPortID."                    "This object is the number of frames of valid
        frame length that have been received on this port.
        This counter is incremented by one for each frame
        received on this port whose OctetCount is greater
        than or equal to minFrameSize and less than or
        equal to maxFrameSize (Ref: IEEE 802.3 Std,
        4.4.2.1) and for which the FCSError and
        CollisionEvent signals are not asserted.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        This statistic provides one of the parameters
        necessary for obtaining the packet error rate.
        The approximate minimum time for rollover of this
        counter is 80 hours at 10Mb/s." 0"[IEEE 802.3 Mgt], 30.4.3.1.4, aReadableFrames."                    �"This object is the number of octets contained in
        valid frames that have been received on this port.
        This counter is incremented by OctetCount for each
        frame received on this port which has been
        determined to be a readable frame (i.e., including
        FCS octets but excluding framing bits and dribble
        bits).

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        This statistic provides an indicator of the total
        data transferred.  The approximate minimum time
        for rollover of this counter in a 10Mb/s repeater
        is 58 minutes.

        For ports receiving traffic at a maximum rate in
        a 100Mb/s repeater, this counter can roll over
        in less than 6 minutes.  Since that amount of time
        could be less than a management station's poll cycle
        time, in order to avoid a loss of information a
        management station is advised to also poll the
        rptrMonitorPortUpper32Octets object, or to use the
        64-bit counter defined by
        rptrMonitorPortHCReadableOctets instead of the
        two 32-bit counters." 0"[IEEE 802.3 Mgt], 30.4.3.1.5, aReadableOctets."                    J"This counter is incremented by one for each frame
        received on this port with the FCSError signal
        asserted and the FramingError and CollisionEvent
        signals deasserted and whose OctetCount is greater


        than or equal to minFrameSize and less than or
        equal to maxFrameSize (Ref: 4.4.2.1, IEEE 802.3
        Std).

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        The approximate minimum time for rollover of this
        counter is 80 hours at 10Mb/s." C"[IEEE 802.3 Mgt], 30.4.3.1.6,
        aFrameCheckSequenceErrors."                    �"This counter is incremented by one for each frame
        received on this port with the FCSError and
        FramingError signals asserted and CollisionEvent
        signal deasserted and whose OctetCount is greater
        than or equal to minFrameSize and less than or
        equal to maxFrameSize (Ref: IEEE 802.3 Std,
        4.4.2.1).  If rptrMonitorPortAlignmentErrors is
        incremented then the rptrMonitorPortFCSErrors
        Counter shall not be incremented for the same
        frame.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        The approximate minimum time for rollover of this
        counter is 80 hours at 10Mb/s." 1"[IEEE 802.3 Mgt], 30.4.3.1.7, aAlignmentErrors."                    l"This counter is incremented by one for each frame
        received on this port whose OctetCount is greater


        than maxFrameSize (Ref: 4.4.2.1, IEEE 802.3 Std).
        If rptrMonitorPortFrameTooLongs is incremented
        then neither the rptrMonitorPortAlignmentErrors
        nor the rptrMonitorPortFCSErrors counter shall be
        incremented for the frame.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        The approximate minimum time for rollover of this
        counter is 61 days in a 10Mb/s repeater." /"[IEEE 802.3 Mgt], 30.4.3.1.8, aFramesTooLong."                    F"This counter is incremented by one for each
        CarrierEvent on this port with ActivityDuration
        less than ShortEventMaxTime.  ShortEventMaxTime is
        greater than 74 bit times and less than 82 bit
        times.  ShortEventMaxTime has tolerances included
        to provide for circuit losses between a
        conformance test point at the AUI and the
        measurement point within the state machine.

        Notes:

        ShortEvents may indicate externally
        generated noise hits which will cause the repeater
        to transmit Runts to its other ports, or propagate
        a collision (which may be late) back to the
        transmitting DTE and damaged frames to the rest of
        the network.

        Implementors may wish to consider selecting the
        ShortEventMaxTime towards the lower end of the
        allowed tolerance range to accommodate bit losses
        suffered through physical channel devices not
        budgeted for within this standard.

        The significance of this attribute is different
        in 10 and 100 Mb/s collision domains.  Clause 9
        repeaters perform fragment extension of short


        events which would be counted as runts on the
        interconnect ports of other repeaters.  Clause
        27 repeaters do not perform fragment extension.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        The approximate minimum time for rollover of this
        counter is 16 hours in a 10Mb/s repeater." -"[IEEE 802.3 Mgt], 30.4.3.1.9, aShortEvents."                    _"This counter is incremented by one for each
        CarrierEvent on this port that meets one of the
        following two conditions.  Only one test need be
        made.  a) The ActivityDuration is greater than
        ShortEventMaxTime and less than ValidPacketMinTime
        and the CollisionEvent signal is deasserted.  b)
        The OctetCount is less than 64, the
        ActivityDuration is greater than ShortEventMaxTime
        and the CollisionEvent signal is deasserted.
        ValidPacketMinTime is greater than or equal to 552
        bit times and less than 565 bit times.

        An event whose length is greater than 74 bit times
        but less than 82 bit times shall increment either
        the shortEvents counter or the runts counter but
        not both.  A CarrierEvent greater than or equal to
        552 bit times but less than 565 bit times may or
        may not be counted as a runt.

        ValidPacketMinTime has tolerances included to
        provide for circuit losses between a conformance
        test point at the AUI and the measurement point
        within the state machine.

        Runts usually indicate collision fragments, a
        normal network event.  In certain situations
        associated with large diameter networks a
        percentage of collision fragments may exceed
        ValidPacketMinTime.


        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        The approximate minimum time for rollover of this
        counter is 16 hours in a 10Mb/s repeater." ("[IEEE 802.3 Mgt], 30.4.3.1.10, aRunts."                    w"For a clause 9 repeater, this counter is
        incremented by one for any CarrierEvent signal
        on any port for which the CollisionEvent signal
        on this port is asserted.  For a clause 27
        repeater port the counter increments on entering
        the Collision Count Increment state of the
        partition state diagram (fig 27-8 of
        [IEEE 802.3 Std]).

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        The approximate minimum time for rollover of this
        counter is 16 hours in a 10Mb/s repeater." -"[IEEE 802.3 Mgt], 30.4.3.1.11, aCollisions."                    �"For a clause 9 repeater port, this counter is
        incremented by one for each CarrierEvent
        on this port in which the CollIn(X)
        variable transitions to the value SQE (Ref:
        9.6.6.2, IEEE 802.3 Std) while the
        ActivityDuration is greater than the
        LateEventThreshold.  For a clause 27 repeater
        port, this counter is incremented by one on
        entering the Collision Count Increment state


        of the  partition state diagram (fig 27-8)
        while the  ActivityDuration is greater than
        the LateEvent- Threshold.  Such a CarrierEvent
        is counted twice, as both a collision and as a
        lateEvent.

        The LateEventThreshold is greater than 480 bit
        times and less than 565 bit times.
        LateEventThreshold has tolerances included to
        permit an implementation to build a single
        threshold to serve as both the LateEventThreshold
        and ValidPacketMinTime threshold.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        The approximate minimum time for rollover of this
        counter is 81 hours in a 10Mb/s repeater." -"[IEEE 802.3 Mgt], 30.4.3.1.12, aLateEvents."                    h"For a clause 9 repeater port, this counter
        is incremented by one for each CarrierEvent
        whose ActivityDuration is greater than the
        MAU Jabber Lockup Protection timer TW3
        (Ref: 9.6.1 & 9.6.5, IEEE 802.3 Std).

        For a clause 27 repeater port, this counter
        is incremented by one on entry to the
        Rx Jabber state of the receiver timer state
        diagram (fig 27-7).  Other counters may
        be incremented as appropriate.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes." 1"[IEEE 802.3 Mgt], 30.4.3.1.13, aVeryLongEvents."                    �"This counter is incremented by one for each
        frame received by this port that meets all
        of the conditions required by only one of the
        following two measurement methods:

        Measurement method A:  1) The CollisionEvent
        signal is not asserted (10Mb/s operation) or
        the Collision Count Increment state of the
        partition state diagram (fig 27-8 of
        [IEEE 802.3 Std]) has not been entered
        (100Mb/s operation).  2) The ActivityDuration
        is greater than ValidPacketMinTime.  3) The
        frequency (data rate) is detectably mismatched
        from the local transmit frequency.

        Measurement method B:  1) The CollisionEvent
        signal is not asserted (10Mb/s operation)
        or the Collision Count Increment state of the
        partition state diagram (fig 27-8 of
        [IEEE 802.3 Std]) has not been entered
        (100Mb/s operation).  2) The OctetCount is
        greater than 63.  3) The frequency (data
        rate) is detectably mismatched from the local
        transmit frequency.  The exact degree of
        mismatch is vendor specific and is to be
        defined by the vendor for conformance testing.

        When this event occurs, other counters whose
        increment conditions were satisfied may or may not
        also be incremented, at the implementor's
        discretion.  Whether or not the repeater was able
        to maintain data integrity is beyond the scope of
        this standard.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes." 5"[IEEE 802.3 Mgt], 30.4.3.1.14, aDataRateMismatches."                    "This counter is incremented by one for
        each time the repeater has automatically
        partitioned this port.

        The conditions that cause a clause 9
        repeater port to partition are specified in
        the partition state diagram in clause 9 of
        [IEEE 802.3 Std].  They are not differentiated
        here.  A clause 27 repeater port partitions
        on entry to the Partition Wait state of the
        partition state diagram (fig 27-8 in
        [IEEE 802.3 Std]).

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes." 1"[IEEE 802.3 Mgt], 30.4.3.1.15, aAutoPartitions."                    "The total number of errors which have occurred on
        this port.  This counter is the summation of the
        values of other error counters (for the same
        port), namely:

            rptrMonitorPortFCSErrors,
            rptrMonitorPortAlignmentErrors,
            rptrMonitorPortFrameTooLongs,
            rptrMonitorPortShortEvents,
            rptrMonitorPortLateEvents,
            rptrMonitorPortVeryLongEvents,
            rptrMonitorPortDataRateMismatches, and
            rptrMonitorPortSymbolErrors.

        This counter is redundant in the sense that it is
        the summation of information already available
        through other objects.  However, it is included
        specifically because the regular retrieval of this
        object as a means of tracking the health of a port
        provides a considerable optimization of network
        management traffic over the otherwise necessary


        retrieval of the summed counters.

        Note that rptrMonitorPortRunts is not included
        in this total; this is because runts usually
        indicate collision fragments, a normal network
        event.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes."                      �"The value of sysUpTime when the last of
        the following occurred:
          1) the agent cold- or warm-started;
          2) the row for the port was created
             (such as when a device or module was added
              to the system); or
          3) any condition that would cause one of
             the counters for the row to experience
             a discontinuity."           --    Rsyntax TimeTicks
          �"Table of additional performance and error
        statistics for 100Mb/s ports, above and
        beyond those parameters that apply to both
        10 and 100Mbps ports.  Entries exist only for
        ports attached to 100Mbps repeaters.

        The columnar object rptrMonitorPortLastChange
        is used to indicate possible discontinuities
        of counter type columnar objects in this table."                       h"An entry in the table, containing performance
        and error statistics for a single 100Mb/s port."                      }"This counter is incremented by one each time that
        the repeater port automatically isolates as a
        consequence of false carrier events.  The conditions
        which cause a port to automatically isolate are
        defined by the transition from the False Carrier
        state to the Link Unstable state of the carrier
        integrity state diagram (figure 27-9)
        [IEEE 802.3 Standard].

        Note:  Isolates do not affect the value of
        the PortOperStatus object.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes." +"[IEEE 802.3 Mgt], 30.4.3.1.16, aIsolates."                    h"This counter is incremented by one each time when


        valid length packet was received at the port and
        there was at least one occurrence of an invalid
        data symbol. This can increment only once per valid
        carrier event. A collision presence at any port of
        the repeater containing port N, will not cause this
        attribute to increment.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes.

        The approximate minimum time for rollover of this
        counter is 7.4 hours at 100Mb/s." C"[IEEE 802.3 Mgt], 30.4.3.1.17,
        aSymbolErrorDuringPacket."                    �"This object is the number of octets contained in
        valid frames that have been received on this port,
        modulo 2**32.  That is, it contains the upper 32
        bits of a 64-bit octets counter, of which the
        lower 32 bits are contained in the
        rptrMonitorPortReadableOctets object.

        This two-counter mechanism is provided for those
        network management protocols that do not support
        64-bit counters (e.g. SNMP V1) and are used to
        manage a repeater type of 100Mb/s.

        Conformance clauses for this MIB are defined such
        that implementation of this object is not required
        in a system which does not support 100Mb/s.
        However, systems with mixed 10 and 100Mb/s ports
        may implement this object across all ports,
        including 10Mb/s.  If this object is implemented,
        it must be according to the definition in the first
        paragraph of this description; that is, the value
        of this object MUST be a valid count.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes."                      "This object is the number of octets contained in
        valid frames that have been received on this port.
        This counter is incremented by OctetCount for each
        frame received on this port which has been
        determined to be a readable frame (i.e., including
        FCS octets but excluding framing bits and dribble
        bits).

        This statistic provides an indicator of the total
        data transferred.

        This counter is a 64-bit version of rptrMonitor-
        PortReadableOctets. It should be used by network
        management protocols which suppport 64-bit counters
        (e.g. SNMPv2).

        Conformance clauses for this MIB are defined such
        that implementation of this object is not required
        in a system which does not support 100Mb/s.
        However, systems with mixed 10 and 100Mb/s ports
        may implement this object across all ports,
        including 10Mb/s.  If this object is implemented,
        it must be according to the definition in the first
        paragraph of this description; that is, the value
        of this object MUST be a valid count.

        A discontinuity may occur in the value
        when the value of object
        rptrMonitorPortLastChange changes." 0"[IEEE 802.3 Mgt], 30.4.3.1.5, aReadableOctets."                        U"A table of information about each
        non-trivial repeater.  The number of entries
        in this table is the same as the number of
        entries in the rptrInfoTable.

        The columnar object rptrInfoLastChange is
        used to indicate possible discontinuities of
        counter type columnar objects in this table."                       ]"An entry in the table, containing information
        about a single non-trivial repeater."                      q"For a clause 9 (10Mb/s) repeater, this counter
        is incremented every time the repeater state
        machine enters the TRANSMIT COLLISION state
        from any state other than ONE PORT LEFT
        (Ref: Fig 9-2 [IEEE 802.3 Std]).

        For a clause 27 repeater, this counter is
        incremented every time the repeater core state


        diagram enters the Jam state as a result of
        Activity(ALL) > 1 (fig 27-2 [IEEE 802.3 Std]).

        The approximate minimum time for rollover of this
        counter is 16 hours in a 10Mb/s repeater and 1.6
        hours in a 100Mb/s repeater." 3"[IEEE 802.3 Mgt], 30.4.1.1.8, aTransmitCollisions"                    �"The number of frames of valid frame length
        that have been received on the ports in this repeater
        and for which the FCSError and CollisionEvent
        signals were not asserted.  If an implementation
        can not obtain a count of frames as seen by
        the repeater itself, this counter may be
        implemented as the summation of the values of the
        rptrMonitorPortReadableFrames counters for all of
        the ports in the repeater.

        This statistic provides one of the parameters
        necessary for obtaining the packet error rate.
        The approximate minimum time for rollover of this
        counter is 80 hours in a 10Mb/s repeater."                      �"The total number of errors which have occurred on
        all of the ports in this repeater.  The errors
        included in this count are the same as those listed
        for the rptrMonitorPortTotalErrors counter.  If an
        implementation can not obtain a count of these
        errors as seen by the repeater itself, this counter
        may be implemented as the summation of the values of
        the rptrMonitorPortTotalErrors counters for all of
        the ports in the repeater."                      �"The total number of octets contained in the valid
        frames that have been received on the ports in
        this group.  If an implementation can not obtain
        a count of octets as seen by the repeater itself,
        this counter may be the summation of the
        values of the rptrMonitorPortReadableOctets
        counters for all of the ports in the group.

        This statistic provides an indicator of the total
        data transferred.  The approximate minimum time
        for rollover of this counter in a 10Mb/s repeater
        is 58 minutes divided by the number of ports in
        the repeater.

        For 100Mb/s repeaters processing traffic at a
        maximum rate, this counter can roll over in less
        than 6 minutes divided by the number of ports in
        the repeater.  Since that amount of time could
        be less than a management station's poll cycle
        time, in order to avoid a loss of information a
        management station is advised to also poll the
        rptrMonUpper32TotalOctets object, or to use the
        64-bit counter defined by rptrMonHCTotalOctets
        instead of the two 32-bit counters."                      a"A table of additional information about each
        100Mb/s repeater, augmenting the entries in
        the rptrMonTable.  Entries exist in this table
        only for 100Mb/s repeaters.

        The columnar object rptrInfoLastChange is
        used to indicate possible discontinuities of
        counter type columnar objects in this table."                       Y"An entry in the table, containing information
        about a single 100Mbps repeater."                      �"The total number of octets contained in the valid
        frames that have been received on the ports in
        this repeater, modulo 2**32.  That is, it contains
        the upper 32 bits of a 64-bit counter, of which
        the lower 32 bits are contained in the
        rptrMonTotalOctets object.  If an implementation
        can not obtain a count of octets as seen
        by the repeater itself, the 64-bit value
        may be the summation of the values of the
        rptrMonitorPortReadableOctets counters combined
        with the corresponding rptrMonitorPortUpper32Octets
        counters for all of the ports in the repeater.

        This statistic provides an indicator of the total
        data transferred within the repeater.

        This two-counter mechanism is provided for those
        network management protocols that do not support
        64-bit counters (e.g. SNMP V1) and are used to
        manage a repeater type of 100Mb/s.

        Conformance clauses for this MIB are defined such
        that implementation of this object is not required
        in a system which does not support 100Mb/s.
        However, systems with mixed 10 and 100Mb/s ports
        may implement this object across all ports,
        including 10Mb/s.  If this object is implemented,
        it must be according to the definition in the first


        paragraph of this description; that is, the value
        of this object MUST be a valid count."                      �"The total number of octets contained in the valid
        frames that have been received on the ports in
        this group.  If a implementation can not obtain
        a count of octets as seen by the repeater itself,
        this counter may be the summation of the
        values of the rptrMonitorPortReadableOctets
        counters for all of the ports in the group.

        This statistic provides an indicator of the total
        data transferred.

        This counter is a 64-bit (high-capacity) version
        of rptrMonUpper32TotalOctets and rptrMonTotalOctets.
        It should be used by network management protocols
        which support 64-bit counters (e.g. SNMPv2).

        Conformance clauses for this MIB are defined such
        that implementation of this object is not required
        in a system which does not support 100Mb/s.
        However, systems with mixed 10 and 100Mb/s ports
        may implement this object across all ports,
        including 10Mb/s.  If this object is implemented,
        it must be according to the definition in the first
        paragraph of this description; that is, the value
        of this object MUST be a valid count."                              �"This table contains one entry per repeater in the
        system.  It defines objects which allow a network
        management application to instruct an agent to watch
        for a given MAC address and report which port it
        was seen on.  Only one address search can be in
        progress on each repeater at any one time.  Before
        starting an address search, a management application
        should obtain 'ownership' of the entry in
        rptrAddrSearchTable for the repeater that is to
        perform the search.  This is accomplished with the
        rptrAddrSearchLock and rptrAddrSearchStatus as
        follows:

        try_again:
            get(rptrAddrSearchLock, rptrAddrSearchStatus)
            while (rptrAddrSearchStatus != notInUse)
            {
                /* Loop waiting for objects to be available*/
                short delay
                get(rptrAddrSearchLock, rptrAddrSearchStatus)
            }

            /* Try to claim map objects */
            lock_value = rptrAddrSearchLock
            if ( set(rptrAddrSearchLock = lock_value,
                     rptrAddrSearchStatus = inUse,
                     rptrAddrSearchOwner = 'my-IP-address)
                  == FAILURE)
                /* Another manager got the lock */
                goto try_again

            /* I have the lock */
            set (rptrAddrSearchAddress = <search target>)

            wait for rptrAddrSearchState to change from none

            if (rptrAddrSearchState == single)
                get (rptrAddrSearchGroup, rptrAddrSearchPort)


            /* release the lock, making sure not to overwrite
               anyone else's lock */
            set (rptrAddrSearchLock = lock_value+1,
                 rptrAddrSearchStatus = notInUse,
                 rptrAddrSearchOwner = '')

        A management station first retrieves the values of
        the appropriate instances of the rptrAddrSearchLock
        and rptrAddrSearchStatus objects, periodically
        repeating the retrieval if necessary, until the value
        of rptrAddrSearchStatus is 'notInUse'.  The
        management station then tries to set the same
        instance of the rptrAddrSearchLock object to the
        value it just retrieved, the same instance of the
        rptrAddrSearchStatus object to 'inUse', and the
        corresponding instance of rptrAddrSearchOwner to a
        value indicating itself.  If the set operation
        succeeds, then the management station has obtained
        ownership of the rptrAddrSearchEntry, and the value
        of rptrAddrSearchLock is incremented by the agent (as
        per the semantics of TestAndIncr).  Failure of the
        set operation indicates that some other manager has
        obtained ownership of the rptrAddrSearchEntry.

        Once ownership is obtained, the management station
        can proceed with the search operation.  Note that the
        agent will reset rptrAddrSearchStatus to 'notInUse'
        if it has been in the 'inUse' state for an abnormally
        long period of time, to prevent a misbehaving manager
        from permanently locking the entry.  It is suggested
        that this timeout period be between one and five
        minutes.

        When the management station has completed its search
        operation, it should free the entry by setting
        the instance of the rptrAddrSearchLock object to the
        previous value + 1, the instance of the
        rptrAddrSearchStatus to 'notInUse', and the instance
        of rptrAddrSearchOwner to a zero length string.  This
        is done to prevent overwriting another station's
        lock."                       T"An entry containing objects for invoking an address
        search on a repeater."                       h"This object is used by a management station as an
        advisory lock for this rptrAddrSearchEntry."           &--    Rsyntax INTEGER(0..2147483647)
          �"This object is used to indicate that some management
        station is currently using this rptrAddrSearchEntry.
        Cooperating managers should set this object to
        'notInUse' when they are finished using this entry.
        The agent will automatically set the value of this
        object to 'notInUse' if it has been set to 'inUse'
        for an unusually long period of time."                      "This object is used to search for a specified MAC
        address.  When this object is set, an address search
        begins.  This automatically sets the corresponding
        instance of the rptrAddrSearchState object  to 'none'
        and the corresponding instances of the
        rptrAddrSearchGroup and rptrAddrSearchPort objects to
        0.

        When a valid frame is received by this repeater with
        a source MAC address which matches the current value
        of rptrAddrSearchAddress, the agent will update the
        corresponding instances of rptrAddrSearchState,
        rptrAddrSearchGroup and rptrAddrSearchPort to reflect
        the current status of the search, and the group and
        port on which the frame was seen."           %--    Rsyntax OCTET STRING(SIZE(6))
          B"The current state of the MAC address search on this
        repeater.  This object is initialized to 'none' when
        the corresponding instance of rptrAddrSearchAddress
        is set.  If the agent detects the address on exactly
        one port, it will set this object to 'single', and
        set the corresponding instances of
        rptrAddrSearchGroup and rptrAddrSearchPort to reflect
        the group and port on which the address was heard.
        If the agent detects the address on more than one
        port, it will set this object to 'multiple'."                      C"The group from which an error-free frame whose
        source address is equal to the corresponding instance
        of rptrAddrSearchAddress has been received.  The
        value of this object is undefined when the
        corresponding instance of rptrAddrSearchState is


        equal to 'none' or 'multiple'."                      ="The port rom which an error-free frame whose
        source address is equal to the corresponding instance
        of rptrAddrSearchAddress has been received.  The
        value of this object is undefined when the
        corresponding instance of rptrAddrSearchState is
        equal to 'none' or 'multiple'."                       R"The entity which currently has 'ownership' of this
        rptrAddrSearchEntry."           *--    Rsyntax OCTET STRING(SIZE(0..255))
                   @"Table of address mapping information about the
        ports."                       ]"An entry in the table, containing address mapping
        information about a single port."                       j"This object identifies the group containing the
        port for which this entry contains information."                       f"This object identifies the port within the group
        for which this entry contains information." ("[IEEE 802.3 Mgt], 30.4.3.1.1, aPortID."                    �"********* THIS OBJECT IS DEPRECATED **********


        This object is the SourceAddress of the last
        readable frame (i.e., counted by
        rptrMonitorPortReadableFrames) received by this
        port.

        This object has been deprecated because its value
        is undefined when no frames have been observed on
        this port.  The replacement object is
        rptrAddrTrackNewLastSrcAddress." 4"[IEEE 802.3 Mgt], 30.4.3.1.18, aLastSourceAddress."         %--    Rsyntax OCTET STRING(SIZE(6))
          �"This counter is incremented by one for each time
        that the rptrAddrTrackLastSourceAddress attribute
        for this port has changed.

        This may indicate whether a link is connected to a
        single DTE or another multi-user segment.

        A discontinuity may occur in the value when the
        value of object rptrMonitorPortLastChange changes.

        The approximate minimum time for rollover of this
        counter is 81 hours in a 10Mb/s repeater." 7"[IEEE 802.3 Mgt], 30.4.3.1.19, aSourceAddressChanges."                    M"This object is the SourceAddress of the last
        readable frame (i.e., counted by
        rptrMonitorPortReadableFrames) received by this
        port.  If no frames have been received by this
        port since the agent began monitoring the port
        activity, the agent shall return a string of
        length zero." 4"[IEEE 802.3 Mgt], 30.4.3.1.18, aLastSourceAddress."         )--    Rsyntax OCTET STRING(SIZE(0 | 6))
          g"The maximum number of addresses that can be
        detected on this port. This value indicates
        to the maximum  number of entries in the
        rptrExtAddrTrackTable relative to this port.

        If this object has the value of 1, the agent
        implements only the LastSourceAddress mechanism
        described by RFC 1368 or RFC 1516."                      L"A table to extend the address tracking table (i.e.,
        rptrAddrTrackTable) with a list of source MAC
        addresses that were recently received on each port.
        The number of ports is the same as the number
        of entries in table rptrPortTable. The number of
        entries in this table depends on the agent/repeater
        implementation and the number of different
        addresses received on each port.

        The first entry for each port contains
        the same MAC address that is given by the
        rptrAddrTrackNewLastSrcAddress for that port.

        Entries in this table for a particular port are
        retained when that port is switched from one
        repeater to another.

        The ordering of MAC addresses listed for a
        particular port is implementation dependent."                       �"A row in the table of extended address tracking
        information for ports. Entries can not be directly
        created or deleted via SNMP operations."                      m"The index of a source MAC address seen on
        the port.

        The ordering of MAC addresses listed for a
        particular port is implementation dependent.

        There is no implied relationship between a
        particular index and a particular MAC
        address.  The index for a particular MAC
        address may change without notice."                       �"The source MAC address from a readable frame
        (i.e., counted by rptrMonitorPortReadableFrames)
        recently received by the port." 4"[IEEE 802.3 Mgt], 30.4.3.1.18, aLastSourceAddress."         %--    Rsyntax OCTET STRING(SIZE(6))
                          "A table of control records for reports on the top `N'
        ports for the rate of a selected counter. The number
        of entries depends on the configuration of the agent.
        The maximum number of entries is implementation
        dependent."                       u"A set of parameters that control the creation of a
        report of the top N ports according to several metrics."                       �"An index that uniquely identifies an entry in the
        rptrTopNPortControl table.  Each such entry defines
        one top N report prepared for a repeater or system."                      �"Identifies the repeater for which a top N report will
        be prepared (see rptrInfoId).  If the value of this
        object is positive, only ports assigned to this repeater
        will be used to form the list in which to order the
        Top N table.  If this value is zero, all ports will be
        eligible for inclusion on the list.

        The value of this object may not be modified if the
        associated rptrTopNPortRowStatus object is equal to
        active(1).


        If, for a particular row in this table, the repeater
        specified by the value of this object goes away (is
        removed from the rptrInfoTable) while the associated
        rptrTopNPortRowStatus object is equal to active(1),
        the row in this table is preserved by the agent but
        the value of rptrTopNPortRowStatus is changed to
        notInService(2), and the agent may time out the row
        if appropriate.  If the specified repeater comes
        back (reappears in the rptrInfoTable) before the row
        has been timed out, the management station must set
        the value of the rptrTopNPortRowStatus object back
        to active(1) if desired (the agent doesn't do this
        automatically)."                       �"The monitored variable, which the rptrTopNPortRate
        variable is based upon.

        The value of this object may not be modified if
        the associated rptrTopNPortRowStatus object has
        a value of active(1)."                      �"The number of seconds left in the report
        currently being collected.  When this object
        is modified by the management station, a new
        collection is started, possibly aborting a
        currently running report.  The new value is
        used as the requested duration of this report,
        which is loaded into the associated
        rptrTopNPortDuration object.

        When this object is set to a non-zero value,
        any associated rptrTopNPortEntries shall be
        made inaccessible by the agent.  While the value
        of this object is non-zero, it decrements by one
        per second until it reaches zero.  During this
        time, all associated rptrTopNPortEntries shall
        remain inaccessible.  At the time that this object
        decrements to zero, the report is made accessible
        in the rptrTopNPortTable.  Thus, the rptrTopNPort
        table needs to be created only at the end of the
        collection interval.

        If the value of this object is set to zero
        while the associated report is running, the
        running report is aborted and no associated
        rptrTopNPortEntries are created."                      p"The number of seconds that this report has
        collected during the last sampling interval,
        or if this report is currently being collected,
        the number of seconds that this report is being
        collected during this sampling interval.

        When the associated rptrTopNPortTimeRemaining
        object is set, this object shall be set by the
        agent to the same value and shall not be modified
        until the next time the rptrTopNPortTimeRemaining
        is set.

        This value shall be zero if no reports have been
        requested for this rptrTopNPortControlEntry."                      ,"The maximum number of repeater ports requested
        for the Top N Table.

        When this object is created or modified, the
        agent should set rptrTopNPortGrantedSize as close
        to this object as is possible for the particular
        implementation and available resources."                      �"The maximum number of repeater ports in the
        top N table.

        When the associated rptrTopNPortRequestedSize object is
        created or modified, the agent should set this object as
        closely to the requested value as is possible for the
        particular implementation and available resources.  The
        agent must not lower this value except as a result of a
        set to the associated rptrTopNPortRequestedSize object."                      ="The value of sysUpTime when this top N report was
        last started.  In other words, this is the time that
        the associated rptrTopNPortTimeRemaining object was
        modified to start the requested report.

        If the report has not yet been started, the value
        of this object is zero."           --    Rsyntax TimeTicks
           ["The entity that configured this entry and is
        using the resources assigned to it."           *--    Rsyntax OCTET STRING(SIZE(0..255))
           �"The status of this row.

        If the value of this object is not equal to
        active(1), all associated entries in the
        rptrTopNPortTable shall be deleted by the
        agent."           �--    Rsyntax INTEGER {
--        active(1),
--        notInService(2),
--        notReady(3),
--        createAndGo(4),
--        createAndWait(5),
--        destroy(6)
--        }
          D"A table of reports for the top `N' ports based on
        setting of associated control table entries. The
        maximum number of entries depends on the number
        of entries in table rptrTopNPortControlTable and
        the value of object rptrTopNPortGrantedSize for
        each entry.

        For each entry in the rptrTopNPortControlTable,
        repeater ports with the highest value of
        rptrTopNPortRate shall be placed in this table
        in decreasing order of that rate until there is
        no more room or until there are no more ports."                       R"A set of statistics for a repeater port that is
        part of a top N report."                      U"An index that uniquely identifies an entry in
        the rptrTopNPort table among those in the same
        report.  This index is between 1 and N, where N
        is the number of entries in this report.  Increasing
        values of rptrTopNPortIndex shall be assigned to
        entries with decreasing values of rptrTopNPortRate
        until index N is assigned to the entry with the
        lowest value of rptrTopNPortRate or there are no
        more rptrTopNPortEntries.

        No ports are included in a report where their
        value of rptrTopNPortRate would be zero."                       ~"This object identifes the group containing
        the port for this entry. (See also object
        type rptrGroupIndex.)"                       K"The index of the repeater port.
        (See object type rptrPortIndex.)"                       �"The amount of change in the selected variable
        during this sampling interval for the identified
        port.  The selected variable is that port's
        instance of the object selected by
        rptrTopNPortRateBase."                          