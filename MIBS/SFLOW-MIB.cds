    �"If more than one sFlow sampler is available for this
                 SFlowDataSource then individual samplers are distinguished
                 using the SFlowInstance variable. The value of
                 SFlowInstance ranges from 1..n where n is the number of
                 samplers associated with this SFlowDataSource.
                Note: Each sFlow sampler instance must operate
                       independently of all other instances. Setting
                       an attribute of one sampler must not alter the
                       the behavior and settings of other sampler
                       instances."              	�"Identifies a source of sFlow data.
                The following data source types are currently defined:

                - ifIndex.<I>
                SFlowDataSources of this traditional form are called
                'port-based'. Ideally the sampling entity will perform
                sampling on all flows originating from or destined to
                the specified interface. However, if the switch architecture
                only allows input or output sampling then the sampling agent
                is permitted to only sample input flows input or output flows.
                Each packet must only be considered once for sampling,
                irrespective of the number of ports it will be forwarded to.
                Note: Port 0 is used to indicate that all ports on the device
                      are represented by a single data source.
                      - sFlowFsPacketSamplingRate applies to all ports on the
                        device capable of packet sampling.

                - smonVlanDataSource.<V>
                An SFlowDataSource of this form refers to a 'Packet-based VLAN'
                and is called a 'VLAN-based' dataSource. <V> is the VLAN
                ID as defined by the IEEE 802.1Q standard. The
                value is between 1 and 4094 inclusive, and it represents
                an 802.1Q VLAN-ID with global scope within a given
                bridged domain.
                Sampling is performed on all packets received that are part
                of the specified VLAN (no matter which port they arrived on).
                Each packet will only be considered once for sampling,
                irrespective of the number of ports it will be forwarded to.

                - entPhysicalEntry.<N>
                An SFlowDataSource of this form refers to a physical entity
                within the agent (e.g. entPhysicalClass = backplane(4)) and
                is called an 'entity-based' dataSource. Sampling is performed
                on all packets entering the resource (e.g. If the backplane
                is being sampled, all packets transmitted onto the backplane
                will be considered as single candidates for sampling
                irrespective of the number of ports they ultimately reach).

                Note: Since each SFlowDataSource operates independently a
                      packet that crosses multiple DataSources may generate
                      multiple flow records."              <"Identify the sFlow receiver associated with this resource.

                 A value of zero indicates that this resource is available.
                 If non-zero the value must correspond to a valid, active
                 sFlowRcvrIndex.

                 If the value is currently zero it may be set to any
                 active entry in the sFlowRcvrTable. If the value is
                 not zero then a set to anything other than zero or
                 its current value will result in an SNMP error (bad value).

                 Setting to zero frees the resource and returns all the
                 values in this entry to their default values.

                 If an entry in the sFlowRcvrTable expires, either
                 because the sFlowRcvrOwner is set to the empty
                 string or because the sFlowRcvrTimeout reaches zero, then
                 the agent must mark all associated resources as available
                 (by setting the associated SFlowReceiver entry to zero)
                 and all values in these records must be restored to their
                 default values.

                 This mechanism provides no enforcement and relies on the
                 cooperation of management entities in order to ensure that
                 competition for a resource is fairly resolved. A management
                 entity should not make any changes to a resource
                 without first aquiring it by successfully writing its
                 sFlowRcvrIndex value as the SFlowReceiver for the resource."                                             h"The MIB module for managing the generation and transportation
                 of sFlow data records." �"Peter Phaal
                sFlow.org
                http://www.sflow.org/

                Tel:  +1-415-283-3260
                Email: peter.phaal@sflow.org" "200310180000Z" "200309240000Z" "200304080000Z" "200209170000Z" "200107310000Z" "200105010000Z" r"Version 1.3 (draft 5)
                 Allow set to SFlowReceiver if it doesn't change
                 value." �"Version 1.3 (draft 4)

                 Default value of sFlowRcvrAddress should be '00000000' h.
                 Default value of sFlowCpReceiver should be 0." }"Version 1.3 (draft 3)

                 Clarify semantics of counter polling interval,
                 sFlowCpInterval.""Version 1.3 (draft 2)
                 Adds support for multiple sFlow samplers per sFlowDataSource.
                 Moved to sflow.org enterprise number.
                 Splits flow sampling, counter polling and receiver
                 specification into separate tables." B"Version 1.2
                 Brings MIB into SMI v2 compliance." 8"Version 1.1
                  Adds sfDatagramVersion."       -- September 24, 2003
          q"Uniquely identifies the version and implementation of this MIB.
                 The version string must have the following structure:
                    <MIB Version>;<Organization>;<Software Revision>
                where:
                    <MIB Version>  must be '1.3', the version of this MIB.
                    <Organization> the name of the organization responsible
                                     for the agent implementation.
                    <Revision>     the specific software build of this agent.

                 As an example, the string '1.3;InMon Corp.;2.1.1' indicates
                 that this agent implements version '1.2' of the SFLOW MIB, that
                 it was developed by 'InMon Corp.' and that the software build
                 is '2.1.1'.

                 The MIB Version will change with each revision of the SFLOW
                 MIB.

                 Management entities must check the MIB Version and not attempt
                 to manage agents with MIB Versions greater than that for which
                 they were designed.

                 Note: The sFlow Datagram Format has an independent version
                       number which may change independently from <MIB Version>.
                       <MIB Version> applies to the structure and semantics of
                       the SFLOW MIB only."                       w"The address type of the address associated with this agent.
                 Only ipv4 and ipv6 types are supported."                      z"The IP address associated with this agent. In the case of a
                 multi-homed agent, this should be the loopback address of the
                 agent. The sFlowAgent address must provide SNMP connectivity
                 to the agent. The address should be an invariant that does not
                 change as interfaces are reconfigured, enabled, disabled,
                 added or removed. A manager should be able to use the
                 sFlowAgentAddress as a unique key that will identify this
                 agent over extended periods of time so that a history can
                 be maintained."                       0"A table of the receivers of sFlow information."                       ""Attributes of an sFlow Receiver."                        "Index into sFlowReceiverTable."                      >"The entity making use of this sFlowRcvrTable entry. The empty
                 string indicates that the entry is currently unclaimed.
                 An entity wishing to claim an sFlowRcvrTable entry must ensure
                 that the entry is unclaimed before trying to claim it.
                 The entry is claimed by setting the owner string. The entry
                 must be claimed before any changes can be made to other sampler
                 objects.

                 In order to avoid a race condition, the entity taking control
                 of the sampler must set both the owner and a value for
                 sFlowRcvrTimeout in the same SNMP set request.

                 When a management entity is finished using the sampler,
                 it should set the value of sFlowRcvrOwner back to unclaimed.
                 The agent must restore all other entities this row to their
                 default values when the owner is set to unclaimed. It must
                 also free all other resources associated with this
                 sFlowRcvrTable entry.

                 This mechanism provides no enforcement and relies on the
                 cooperation of management entities in order to ensure that
                 competition for a receiver entry is fairly resolved."                      �"The time (in seconds) remaining before the sampler is released
                 and stops sampling. When set, the owner establishes control
                 for the specified period. When read, the remaining time in the
                 interval is returned.

                 A management entity wanting to maintain control of the sampler
                 is responsible for setting a new value before the old one
                 expires.

                 When the interval expires, the agent is responsible for
                 restoring all other entities in this row to their default
                 values. It must also free all other resources associated with
                 this sFlowRcvrTable entry."                       �"The maximum number of data bytes that can be sent in a single
                  sample datagram. The manager should set this value to avoid
                  fragmentation of the sFlow datagrams."                       ("The type of sFlowRcvrCollectorAddress."                       n"The IP address of the sFlow collector.
                 If set to 0.0.0.0 not sFlow datagrams will be sent."                     -- 0.0.0.0
 +"The destination port for sFlow datagrams."                      F"The version of sFlow datagrams that should be sent.
                 When set to a value not support by the agent, the agent should
                 adjust the value to the highest supported value less than the
                 requested value, or return an SNMP bad value error if no
                 such value exists."                       /"A table of the flow samplers within a device."                       "Attributes of a flow sampler."                       ("sFlowDataSource for this flow sampler."                       +"The sFlow instance for this flow sampler."                       *"The SFlowReceiver for this flow sampler."                      8"The statistical sampling rate for packet sampling from this
                 source.
                 Set to N to sample 1/Nth of the packets in the monitored flows.
                 An agent should choose its own algorithm to introduce variance
                 into the sampling so that exactly every Nth packet is not
                 counted. A sampling rate of 1 counts all packets. A sampling
                 rate of 0 disables sampling.

                 The agent is permitted to have minimum and maximum allowable
                 values for the sampling rate. A minimum rate lets the agent
                 designer set an upper bound on the overhead associated with
                 sampling, and a maximum rate may be the result of hardware
                 restrictions (such as counter size). In addition not all values
                 between the maximum and minimum may be realizable as the
                 sampling rate (again because of implementation considerations).

                 When the sampling rate is set the agent is free to adjust the
                 value so that it lies between the maximum and minimum values
                 and has the closest achievable value.

                 When read, the agent must return the actual sampling rate it
                 will be using (after the adjustments previously described). The
                 sampling algorithm must converge so that over time the number
                 of packets sampled approaches 1/Nth of the total number of
                 packets in the monitored flows."                      {"The maximum number of bytes that should be copied from a
                 sampled packet. The agent may have an internal maximum  
                 and minimum permissible sizes. If an attempt is made to
                 set this value outside the permissible range then
                 the agent should adjust the value to the closest
                 permissible value."                       1"A table of the counter pollers within a device."                       !"Attributes of a counter poller."                       ;"Identifies the source of the data for the counter poller."                       ,"The sFlowInstance for this counter poller."                       8"The SFlowReciever associated with this counter poller."                      j"The maximum number of seconds between successive samples of the
                 counters associated with this data source. A sampling interval
                 of 0 disables counter sampling.

                 The agent is permitted to have minimum and maximum allowable
                 values for the counter polling interval. A minimum interval
                 lets the agent designer set an upper bound on the overhead
                 associated with polling, and a maximum interval may be the
                 result of implementation restrictions (such as counter size).
                 In addition not all values between the maximum and minimum may
                 be realizable as the sampling interval (again because of
                 implementation considerations).

                 When the sampling rate is set the agent is free to adjust the
                 value so that it lies between the maximum and minimum values
                 and has the closest achievable value.

                 When read, the agent must return the actual sampling interval
                 it will be using (after the adjustments previously described).
                 The sampling algorithm must converge so that over time the
                 number of packets sampled approaches 1/Nth of the total number
                 of packets in the monitored flows."                               r"A collection of objects for managing the generation and
                  transportation of sFlow data records."                     ,"Compliance statements for the sFlow Agent."    "Agents need only support ipv4."  "Agents need only support ipv4."                