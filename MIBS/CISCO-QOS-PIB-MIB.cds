    ;"An integer that is limited to the number of threshold sets
        per queue supported by the PIB. A threshold set is a
        collection of parameters describing queue threshold.  The
        parameters of a threshold set depend on the drop mechanism the
        queue implements.  For example, the threshold set for
        tail-drop  comprises a single parameter, the percentage of
        queue size at which dropping occurs.  The threshold set for
        WRED comprises two parameters; within the range of the two
        parameters packets are randomly dropped."               V"An unsigned 64 bit integer. We use SYNTAX Counter64 for the
        enconding rules."               5"An integer that is in the range of a percent value."               �"An integer that is limited to the number of queues per
        interface supported by the PIB.  Limited to 64 which is the
        number of codepoints."               }"An enumeration of interface capabilities.  Used by the PDP to
        select policies and configuration to push to the PEP."               �"A Display string consisting of a set of roles concatenated
        with a '+' character where the roles are in lexicographic
        order from minimum to maximum."              "An enumerated type for all the known interface types.  The
        interface types are currently limited to a predefined
        combination of queues and thresholds such that the product of
        queues and thresholds does not exceed 64 (i.e., the total
        number of DSCPs."               "A textual convention for an attribute that is an an
        unsigned integer index attribute of class.  It is used for
        attributes that exist for the purpose of providing an integer
        index of an instance.

        For any integer index that refers to another policy instance,
        that other policy instance must exist. Furthermore, it is an
        error to try to delete a policy instance that is referred to by
        another instance without first deleting the referring
        instance."               K"An integer that is in the range of the DiffServ codepoint
        values."               w"An integer that is in the range of the layer 2 CoS values.
        This corresponds to the 802.1p and ISL CoS values."                                                                 7"The Cisco QOS Policy PIB for provisioning QOS policy." �"Cisco Systems
        Customer Service

        Postal: 170 W Tasman Drive
            San Jose, CA 95134
            USA

        Tel: +1 800 553-NETS

        E-mail: cs-wbu@cisco.com" "200708290000Z" "200405030000Z" "200302210000Z" "200205020000Z" "200006160000Z" "200005110000Z" f"Add new enum values in QosInterfaceQueueType
             textual convention for various queue type." d"Add new enum value in QosInterfaceQueueType
             textual convention for 1p3q8t queue type." �"Add new enum values in QosInterfaceQueueType
             textual convention to indicate queue types
             containing priority queue. Add new enum value
             in ThresholdSetRange textual convention for
             zero threshold." -"Fix the SYNTAX of Role and RoleCombination." 8"Added QosInterfaceTypeCapabilities textual convention." %"Initial version of this PIB module."                       :"The compliance statement for the QOS Policy Derived MIB."                   ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                    A"This class contains a single policy instance that identifies
        the current incarnation of the PIB and the PDP that installed
        this incarnation.  The instance of this class is reported to
        the PDP at client connect time so that the PDP can (attempt
        to) ascertain the current state of the PIB."                       �"The single policy instance of this class identifies the
        current incarnation of the PIB and the PDP that installed
        this incarnation."                       @"An integer index to identify the instance of the policy class."                       �"The name of the PDP that installed the current incarnation of
        the PIB into the device.  By default it is the zero length
        string."                       �"An octet string to identify the current incarnation.  It has
        meaning to the PDP that installed the PIB and perhaps its
        standby PDPs. By default the empty string."                      "The number of seconds after a client close or TCP timeout for
        which the PEP continues to enforce the policy in the PIB.
        After this interval, the PIB is consired expired and the
        device no longer enforces the policy installed in the PIB."                      �"The single instance of this class indicates specific
        attributes of the device.  These include configuration values
        such as the configured PDP addresses, the maximum message
        size, and specific device capabilities.  The latter include
        input port-based and output port-based classification and/or
        policing, support for flow based policing, aggregate based
        policing, traffic shaping capabilities, etc."                       X"The single instance of this class indicates specific
        attributes of the device."                       @"An integer index to identify the instance of the policy class."                       �"The QoS domain that this device belongs to.  This is
        configured locally on the device (perhaps by some management
        protocol such as SNMP).  By default, it is the zero-length
        string."                       Q"The address of the PDP configured to be the primary PDP for
        the device."                       �"The address of the PDP configured to be the secondary PDP for
        the device.  An address of zero indicates no secondary is
        configured."                      /"The maximum size message that this PEP is capable of
        receiving in bytes.  A value of zero means that the maximum
        message size is unspecified (but does not mean it is
        unlimited).  A message greater than this maximum results in a
        MessageTooBig error on a 'no commit' REP."                       z"An enumeration of device capabilities.  Used by the PDP to
        select policies and configuration to push to the PEP."                      "This class describes the interface types of the interfaces
        that exist on the device.  It includes the queue type, role
        combination and capabilities of interfaces.  The PEP does not
        report which specific interfaces have which characteristics."                       �"An instance of this class describes a role combination for
        an interface type of an interface that exists on the device."                       @"An integer index to identify the instance of the policy class."                       I"The interface type in terms of number of queues and
        thresholds."                       T"A combination of roles on at least one interface of type
        qosInterfaceType."                       }"An enumeration of interface capabilities.  Used by the PDP to
        select policies and configuration to push to the PEP."                          g"Maps each DSCP to a marked-down DSCP.  Also maps each DSCP to
        an IP precedence and QosLayer2Cos.  When configured for the
        first time, all 64 entries of the table must be
        specified. Thereafter, instances may be modified (with a
        delete and install in a single decision) but not deleted
        unless all instances are deleted."                       <"An instance of this class represents mappings from a DSCP."                       0"A DSCP for which this entry contains mappings."                       l"The DSCP to use instead of the qosDscp when the packet is out
        of profile and hence marked as such."                       H"The L2 CoS value to use when mapping this DSCP to layer 2
        CoS."                      &"Maps each of eight CoS values to a DSCP.  When configured for
        the first time, all 8 entries of the table must be
        specified. Thereafter, instances may be modified (with a
        delete and install in a single decision) but not deleted
        unless all instances are deleted."                       7"An instance of this class maps a CoS value to a DSCP."                       ("The L2 CoS value that is being mapped."                       :"The DSCP value to use when mapping the L2 CoS to a DSCP."                           �"A policy class that specifies what QoS to apply to a packet
        that does not match any other policy configured for this role
        combination for a particular direction of traffic."                       �"An instance of this class specifies the unmatched policy
        for a particular role combination for incoming or outgoing
        traffic."                       @"An integer index to identify the instance of the policy class."                       3"Role combination for which this instance applies."                       c"The direction of packet flow at the interface in question to
        which this instance applies."                       �"The DSCP to classify the unmatched packet with.  This must be
        specified even if qosUnmatchedPolicyDscpTrusted is true."                      ""If this attribute is true, then the Dscp associated with the
        packet is trusted, i.e., it is assumed to have already been
        set.  In this case, the Dscp is not rewritten with
        qosUnmatchedPolicyDscp (qosUnmatchedPolicyDscp is ignored)
        unless this is a non-IP packet and arrives untagged.  The
        packet is still policed as part of its micro flow and its
        aggregate flow.

        When a trusted action is applied to an input interface, the
        Dscp (for an IP packet) or CoS (for a non-IP packet)
        associated with the packet is the one contained in the packet.
        When a trusted action is applied to an output interface, the
        Dscp associated with the packet is the one that is the result
        of the input classification and policing."                       �"An index identifying the instance of policer to apply to
        unmatched packets.  It must correspond to the integer index of
        an instance of class qosPolicerTable or be zero.  If zero, the
        microflow is not policed."                      %"An index identifying the aggregate that the packet belongs
        to.  It must correspond to the integer index of an instance of
        class qosAggregateTable or be zero.  If zero, the microflow
        does not belong to any aggregate and is not policed as part of
        any aggregate."                           �"A class specifying policing parameters for both microflows
        and aggregate flows.  This table is designed for policing
        according to a token bucket scheme where an average rate and
        burst size is specified."                       K"An instance of this class specifies a set of policing
        parameters."                       @"An integer index to identify the instance of the policy class."                       "The token rate.  It is specified in units of bit/s. A rate of
        zero means that all packets will be out of profile.  If the
        qosPolicerAction is set to drop then this effectively
        denies any service to packets policed by this policer."                       ."The normal size of a burst in terms of bits."                       ."The excess size of a burst in terms of bits."                       �"An indication of how to handle out of profile packets.  When
        the shape action is chosen then traffic is shaped to the rate
        specified by qosPolicerRate."                       \"Instances of this class identify aggregate flows and the
        policer to apply to each."                       X"An instance of this class specifies the policer to apply to
        an aggregate flow."                       @"An integer index to identify the instance of the policy class."                       �"An index identifying the instance of policer to apply to the
        aggregate.  It must correspond to the integer index of an
        instance of class qosPolicerTable."                           ="A class of MAC/Vlan tuples and their associated CoS values."                       e"An instance of this class specifies the mapping of a VLAN
        and a MAC address to a CoS value."                       @"An integer index to identify the instance of the policy class."                       :"The VLAN of the destination MAC address of the L2 frame."                       ."The destination MAC address of the L2 frame."                       �"The CoS to assign the packet with the associated MAC/VLAN
        tuple.  Note that this CoS is overridden by the policies to
        classify the frame at layer 3 if there are any."                           "ACE definitions."                       -"An instance of this class specifies an ACE."                       @"An integer index to identify the instance of the policy class."                       N"The IP address to match against the packet's destination IP
        address."                       8"A mask for the matching of the destination IP address."                       I"The IP address to match against the packet's source IP
        address."                       3"A mask for the matching of the source IP address."                       T"The minimum value that the DSCP in the packet can have and
        match this ACE."                       T"The maximum value that the DSCP in the packet can have and
        match this ACE."                       b"The IP protocol to match against the packet's protocol.
        A value of zero means match all."                       c"The minimum value that the packet's layer 4 dest port number
        can have and match this ACE."                       c"The maximum value that the packet's layer 4 dest port number
        can have and match this ACE."                       e"The minimum value that the packet's layer 4 source port
        number can have and match this ACE."                       e"The maximum value that the packet's layer 4 source port
        number can have and match this ACE."                      �"If the packet matches this ACE and the value of this attribute
        is true, then the matching process terminates and the QoS
        associated with this ACE (indirectly through the ACL) is
        applied to the packet.  If the value of this attribute is false,
        then no more ACEs in this ACL are compared to this packet and
        matching continues with the first ACE of the next ACL."                       Q"A class that defines a set of ACLs each being an ordered list
         of ACEs."                       x"An instance of this class specifies an ACE in an ACL and its
        order with respect to other ACEs in the same ACL."                       @"An integer index to identify the instance of the policy class."                       �"An index for this ACL.  There will be one instance of
        policy class qosIpAclDefinition with this integer index for
        each ACE in the ACL per role combination."                       �"An integer that determines the position of this ACE in the ACL.
        An ACE with a given order is positioned in the access contol
        list before one with a higher order."                       �"This attribute specifies the ACE in the qosIpAceTable that is
        in the ACL specified by qosIpAclId at the position specified
        by qosIpAceOrder."                      n"A class that applies a set of ACLs to interfaces specifying,
        for each interface the order of the ACL with respect to other
        ACLs applied to the same interface and, for each ACL the
        action to take for a packet that matches a permit ACE in that
        ACL.  Interfaces are specified abstractly in terms of
        interface role combinations."                       �"An instance of this class applies an ACL to traffic in a
        particular direction on an interface with a particular role
        combination, and specifies the action for packets which match
        the ACL."                       @"An integer index to identify the instance of the policy class."                       &"The ACL associated with this action."                       X"The interfaces to which this ACL applies specified in terms
        of a set of roles."                       ^"The direction of packet flow at the interface in question to
        which this ACL applies."                       �"An integer that determines the order of this ACL in the list
        of ACLs applied to interfaces of the specified role
        combination. An ACL with a given order is positioned in the
        list before one with a higher order."                       "The DSCP to classify the packet with in the event that the
        packet matches an ACE in this ACL and the ACE is a permit."                      �"If this attribute is true, then the Dscp associated with
        the packet is trusted, i.e., it is assumed to have already
        been set.  In this case, the Dscp is not rewritten with
        qosIpAclDscp (qosIpAclDscp is ignored).  The packet is still
        policed as part of its micro flow and its aggregate flow.

        When a trusted action is applied to an input interface, the
        Dscp associated with the packet is the one contained in the
        packet.  When a trusted action is applied to an output
        interface, the Dscp associated with the packet is the one that
        is the result of the input classification and policing."                       �"An index identifying the instance of policer to apply to the
        microflow.  It must correspond to the integer index of an
        instance of class qosPolicerTableor be zero.  If zero, the
        microflow is not policed."                      %"An index identifying the aggregate that the packet belongs
        to.  It must correspond to the integer index of an instance of
        class qosAggregateTable or be zero.  If zero, the microflow
        does not belong to any aggregate and is not policed as part of
        any aggregate."                           �"This class specifies the scheduling preference an interface
        chooses if it supports multiple scheduling types.  Higher
        values are preferred over lower values."                       �"An instance of this class specifies a scheduling preference
        for a queue-type on an interface with a particular role
        combination."                       @"An integer index to identify the instance of the policy class."                       o"The combination of roles the interface must have for this
        policy instance to apply to that interface."                       �"The preference to use this scheduling discipline and queue
        type.  A higher value means a higher preference.  If two
        disciplines have the same preference the choice is a local
        decision."                       ="An enumerate type for all the known scheduling disciplines."                       $"The queue type of this preference."                       �"This class specifies the preference of the drop mechanism an
        interface chooses if it supports multiple drop mechanisms.
        Higher values are preferred over lower values."                       �"An instance of this class specifies a drop preference for
        a drop mechanism on an interface with a particular role
        combination."                       @"An integer index to identify the instance of the policy class."                       o"The combination of roles the interface must have for this
        policy instance to apply to that interface."                       �"The preference to use this drop mechanism.  A higher value
        means a higher preference.  If two mechanisms have the same
        preference the choice is a local decision."                       6"An enumerate type for all the known drop mechanisms."                       ]"The assignment of each DSCP to a queue and threshold for each
        interface queue type."                       �"An instance of this class specifies the queue and threshold
        set for a packet with a particular DSCP on an interface of
        a particular type with a particular role combination."                       @"An integer index to identify the instance of the policy class."                       ="The role combination the interface must be configured with."                       5"The interface queue type to which this row applies."                       %"The DSCP to which this row applies."                       K"The queue to which the DSCP applies for the given interface
        type."                       j"The threshold set of the specified queue to which the DSCP
        applies for the given interface type."                      �"A class of lower and upper values for each threshold set in a
        queue supporting WRED.  If the size of the queue for a given
        threshold is below the lower value then packets assigned to
        that threshold are always accepted into the queue.  If the
        size of the queue is above upper value then packets are always
        dropped.  If the size of the queue is between the lower and
        the upper then packets are randomly dropped."                       �"An instance of this class specifies threshold limits for a
        particular RED threshold of a given threshold set on an
        interface and with a particular role combination."                       @"An integer index to identify the instance of the policy class."                       ="The role combination the interface must be configured with."                       r"The values in this entry apply only to queues with the number
        of thresholds specified by this attribute."                       �"The threshold set to which the lower and upper values apply.
        It must be in the range 1 through qosIfRedNumThresholdSets.
        There must be exactly one PRI for each value in this range."                       9"The threshold value below which no packets are dropped."                       :"The threshold value above which all packets are dropped."                      c"A class for threshold sets in a queue supporting tail drop.
        If the size of the queue for a given threshold set is at or
        below the specified value then packets assigned to that
        threshold set are always accepted into the queue.  If the size
        of the queue is above the specified value then packets are
        always dropped."                       �"An instance of this class specifies the queue depth for a
        particular tail-drop threshold set on an interface with a
        particular role combination."                       @"An integer index to identify the instance of the policy class."                       ="The role combination the interface must be configured with."                       s"The value in this entry applies only to queues with the
        number of thresholds specified by this attribute."                       8"The threshold set to which the threshold value applies"                       6"The threshold value above which packets are dropped."                      �"A class of scheduling weights for each queue of an interface
        that supports weighted round robin scheduling or a mix of
        priority queueing and weighted round robin.  For a queue with
        N priority queues, the N highest queue numbers are the
        priority queues with the highest queue number having the
        highest priority.  WRR is applied to the non-priority queues."                       �"An instance of this class specifies the scheduling weight for
        a particular queue of an interface with a particular number
        of queues and with a particular role combination."                       @"An integer index to identify the instance of the policy class."                       ="The role combination the interface must be configured with."                       �"The value of the weight in this instance applies only to
        interfaces with the number of queues specified by this
        attribute."                       ("The queue to which the weight applies."                      "The maximum number of bytes that may be drained from the
        queue in one cycle.  The percentage of the bandwith allocated
        to this queue can be calculated from this attribute and the
        sum of the drain sizes of all the non-priority queues of the
        interface."                      
"The size of the queue in bytes.  Some devices set queue size
        in terms of packets.  These devices must calculate the queue
        size in packets by assuming an average packet size suitable
        for the particular interface.

        Some devices have a fixed size buffer to be shared among all
        queues.  These devices must allocate a fraction of the
        total buffer space to this queue calculated as the the ratio
        of the queue size to the sum of the queue sizes for the
        interface."                                  