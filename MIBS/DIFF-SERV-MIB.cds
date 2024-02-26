     D"The code point used for discriminating a traffic
         stream."               5"A value indicating a Layer-4 protocol  port number."                                                                         �"This MIB defines the objects necessary to manage a
         device that uses the Differentiated Services
         Architecture described in RFC 2475."l"    Fred Baker
        Postal: 519 Lado Drive
                Santa Barbara,  California 93111
           Tel: +1 (408)526-4257
           FAX: +1 (805)681-0115
        E-mail: fred@cisco.com
             Kwok Ho Chan
        Postal: 600 Technology  Park Drive
                Billerica, Massachusetts 01821, USA
           Tel: +1 (978)288-8175
        E-mail: khchan@nortelnetworks.com
             Andrew Smith
        Postal: 3585 Monroe St.
                Santa Clara, California 95051
           Tel: +1 (408) 579 2821
           FAX: +1 (408) 579 3000
        E-mail: andrew@extremenetworks.com" "9907190100Z" *"Initial version, published as  RFC xxxx."       #-- Mon   Jul 19 01:00:00 PDT 1999
     �--    ::= { mib-2 12345   }  ## anybody who uses this
--                           ## unassigned number
--                           ## deserves the wrath of IANA
     �"The diffServMFClassifierUnique object  yields a
         unique new value for diffServMFClassifierIndex when read and
         subsequently set. This value must be tested for
         uniqueness."                       �"The diffServClassifierUnique object yields a unique
         new value for diffServClassifierNumber when read and
         subsequently set. This value must be tested for
         uniqueness."                       �"The diffServTBMeterUnique object yieldiffServ  a unique
         new value for diffServTBMeterNumber when read and
         subsequently set. This value must be tested for
         uniqueness."                       �"The diffServActionUnique object yields a unique new
         value for diffServActionNumber when read and
         subsequently set. This value must be tested for
         uniqueness."                       �"The diffServQueueUnique object yields  a unique new
         value for diffServQueueNumber when read and
         subsequently set. This value must be tested for
         uniqueness."                           �"The 'Aggregate' Table  enumerates Behavior Aggregate
         classifiers (DSCPs) that a system may identify traffic
         using."                       B"An 'aggregate' entry describes a single BA
         classifier."                      "This is the Differentiated Services Code Point (DSCP)
         for the classifier. This object is only meant to be
         pointed to by a RowPointer from other tables, such as
         the diffServClassifierMatchObject, and is not actually
         configured or changed."                       q"A table of MF  (IP 6-tuple multi-field) classifier
         entries that a system may use to identify traffic."                       M"A multi-field  classifier entry describes a single MF
         classifier."                       �"This is a unique index for the classifier. This object
         is meant to be pointed to by a RowPointer from other
         tables, such as the diffServClassifierMatchObject."            --  MAX-ACCESS  not-accessible
           7"The type of IP address used by this classifier entry."                       P"The IP address to match against the packet's
         destination IP address."                       �"A mask for the matching of the destination IP  address.
         A zero bit in the mask means that the corresponding bit
         in the address always matches."                       R"The IP address to match against the source IP  address
         of each packet."                       4"A mask for the matching of the source  IP address."                       �"The value that the DSCP in the packet  must have to
         match this entry. A value of -1 indicates that a
         specific DSCP value has not been defined and thus all
         DSCP values are considered a match."                       u"The IP protocol to match against the IPv4 protocol
         number in the packet. A value of zero means match all."                       �"The minimum value that the layer-4 destination port
         number in the packet must have in order to match this
         classifier entry."                      "The maximum value that the layer-4 destination port
         number in the packet must have in order to match this
         classifier entry. This value must be equal to or
         greater that the value specified for this entry in
         diffServMFClassifierDstL4PortMin."                       �"The minimum value that the layer-4 source port number
         in the packet must have in order to match this
         classifier entry."                      "The maximum value that the layer-4 source port number
         in the packet must have in oder to match this
         classifier entry. This value must be equal to or
         greater that the value specified for this entry in
         dsSixTupleIpSrcL4PortMin."                       5"This indicates the status of this classifier entry."                      G"The classifier table enumerates specific classifiers
         that a system may apply, including Differentiated
         Services Code Points (DSCPs) and Multi-field
         discriminators such as {Source IP Address, Destination
         IP Address, IP Protocol, Source TCP/UDP Port,
         Destination TCP/UDP Port)."                       K"An entry in the classifier table describes a single
         classifier."                       �"Specifies the  direction for this entry on the
         interface. 'inbound' traffic is operated on during
         receipt, while 'outbound' traffic is operated on prior
         to transmission."            --  MAX-ACCESS  not-accessible
           E"diffServClassifierNumber enumerates the classifier
         entry."            --  MAX-ACCESS  not-accessible
          �"A pointer to the row that describes the applicable
         classifier. An obvious choice would be the
         diffServAggregateEntry for a given DSCP, but other
         choices include tables describing any classifier that
         may be of interest. If the row pointed to does not
         exist, the classifier is ignored.
         The NULL OID zeroDotZero is interpreted to match
         anything not matched by another classifier."                       j"The 'next' variable selects the appropriate meter or
         action to apply to this class of traffic."                      U"The sequence in which  classifiers are applied, in
         ascending order. Classifiers with the same sequence
         number must be unambiguous.  Classifiers with different
         sequence numbers may overlap in their ranges, with the
         understanding that the first applied classifier to
         match a packet is taken."                       4"Used to indicate how the classifer is  configured."                       T"Additional information associated with how the
         classifier is configured."                       �"The RowStatus  variable controls the activation,
         deactivation, or deletion of a classifier. Any writable
         variable may be modified whether the row is active or
         notInService."                      �"The Meter Table enumerates specific token bucket
         meters that a system may use to police a stream of
         classified traffic. Such a stream may include a single
         micro-flow, all traffic from a given source to a given
         destination, all traffic conforming to a single
         classifier, or any other cut of the traffic, including
         all of it.
         Note that the conceptual model requires all traffic to
         pass through one or more meters, and that the last
         meter configured in such a sequence must always
         conform.
         Counters in this table start counting on creation of
         the meter that specifies their existence."                      U"An entry in the meter  table describes a single token
         bucket meter. Note that a meter has exactly one rate,
         defined as the burst size each time interval. Multiple
         meters may be cascaded should a multi-rate token bucket
         be needed in a given Per-Hop Behavior. An example of
         such a PHB is AF."                       i"The number of  the meter, for reference from the
         classifier or in cascade from another meter."                      "The number of  microseconds in the token bucket
         interval for this meter. Note that implementations
         frequently do not keep time in microseconds internally,
         so in implementation the effect of this value must be
         approximated."                      h"The number of  bytes in a single transmission burst.
         The rate at which the metered traffic may run is one
         burst per interval. Note that if multiple meters are
         cascaded onto one PHB, such as in AF, their intervals
         must be equal, and the peak rate of the data stream is
         the sum of their intervals per interval."                       b"If the traffic does not conform to the meter,  the next
         meter or action to enquire of."                      �"The 'Succeed Next' pointer selects which action or
         queue on the interface that to be used with the
         message. Incoming traffic may use the value zeroDotZero
         in this variable to indicate that no queuing on receipt
         occurs. Incoming interfaces generally use queuing
         either to divert routing traffic for speedier
         processing during a flap, or for shaping purposes."                       �"The RowStatus  variable controls the activation,
         deactivation, or deletion of a meter. Any writable
         variable may be modified whether the row is active or
         notInService."                      �"The Action Table enumerates specific apply to  a stream
         of classified traffic. Such a stream may include a
         single micro-flow, all traffic from a given source to a
         given destination, all traffic conforming to a single
         classifier, or any other cut of the traffic, including
         all of it.
         Counters in this table start counting on creation of
         the action that specifies their existence."                       n"An entry in the action table describes the actions
         applied to traffic conforming to a given meter."                       i"The number of  the meter, for reference from the
         classifier or in cascade from another meter."            --  MAX-ACCESS  not-accessible
          �"The 'Next' pointer selects which queue or Traffic
         Control Block on the interface. Incoming traffic may
         use the value zeroDotZero in this variable to indicate
         that no queuing on receipt occurs. Incoming interfaces
         generally use queuing either to divert routing traffic
         for speedier processing during a flap, or for shaping
         purposes."                      �"The DSCP that  traffic conforming to this classifier
         and this meter is remarked with. Note that if the
         classifier is working from the same DSCP value, no
         effective change in the DSCP results.
         Differentiated Services may result in packet remarking
         both on ingress to a network and on egress, and it is
         quite possible that ingress and egress would occur in
         the same router."                      �"The min-threshold is the queue depth that a random
         drop process will seek to manage the queue's depth to.
         This object is in the action table rather than the
         queue table because Differentiated Services PHBs, such
         as the Assured Service, permit differently classified
         traffic to have different drop parameters even though
         they occupy the same queue."                      �"The max-threshold is the maximum permissible queue
         depth. In tail drop scenarios, the queue will drop if a
         packet is presented to it and it is instantaneously
         full by this measure. In random drop scenarios, the
         queue will drop if a packet is presented to it and the
         average queue depth exceeds the max-threshold.
         This object is in the action table rather than the
         queue table because Differentiated Services PHBs, such
         as the Assured Service, permit differently classified
         traffic to have different drop parameters even though
         they occupy the same queue."                       %"The drop policy applied to traffic."                      D"The number of  Packets conforming to this meter. This
         object is used on high speed interfaces.
         Discontinuities in the value of this counter can occur
         at re-initialization of the management system, and at
         other times as indicated by the value of
         ifCounterDiscontinuityTime."                      �"The number of  Packets conforming to this meter.  This
         object may be used on low speed interfaces, and
         represents the least significant 32 bits of
         diffServActionHCConformingPackets.
         Discontinuities in the value of this counter can occur
         at re-initialization of the management system, and at
         other times as indicated by the value of
         ifCounterDiscontinuityTime."                      C"The number of  octets conforming to this meter. This
         object is used on high speed interfaces.
         Discontinuities in the value of this counter can occur
         at re-initialization of the management system, and at
         other times as indicated by the value of
         ifCounterDiscontinuityTime."                      �"The number of  octets conforming to this meter.  This
         object may be used on low speed interfaces, and
         represents the least significant 32 bits of
         diffServActionHCConformingOctets.
         Discontinuities in the value of this counter can occur
         at re-initialization of the management system, and at
         other times as indicated by the value of
         ifCounterDiscontinuityTime."                      ,"The number of  packets conforming to this classifier
         and meter that have been dropped because either the
         meter always drops, or the queue's depth exceeds the
         max-threshold value.  On high speed devices, this
         object implements the least significant 32 bits of
         diffServActionHCTailDrops .
         Discontinuities in the value of this counter can occur
         at re-initialization of the management system, and at
         other times as indicated by the value of
         ifCounterDiscontinuityTime."                      �"The number of  packets conforming to this classifier
         and meter that have been dropped because either the
         meter always drops, or the queue's depth exceeds the
         max-threshold value.  This object should be used on
         high speed interfaces.
         Discontinuities in the value of this counter can occur
         at re-initialization of the management system, and at
         other times as indicated by the value of
         ifCounterDiscontinuityTime."                      �"The number of  packets conforming to this classifier
         and meter that have been dropped by a random drop
         process because the queue is over-full.  On high speed
         lines, this object reflects the least significant 32
         bits of diffServActionHCRandomDrops.
         Discontinuities in the value of this counter can occur
         at re-initialization of the management system, and at
         other times as indicated by the value of
         ifCounterDiscontinuityTime."                      �"The number of  packets conforming to this classifier
         and meter that have been dropped by a random drop
         process because the queue is over-full.  This object is
         used on high speed lines.
         Discontinuities in the value of this counter can occur
         at re-initialization of the management system, and at
         other times as indicated by the value of
         ifCounterDiscontinuityTime."                       �"The RowStatus  variable controls the activation,
         deactivation, or deletion of a meter. Any writable
         variable may be modified whether the row is active or
         notInService."                      e"The Queue Table enumerates the queues  on an interface.
         Queues are used to store traffic during intervals when
         the arrival rate exceeds the departure rate for a class
         of traffic. Because some PHBs indicate that the use of
         a priority queue may be advisable, each queue in this
         system is seen as having a priority. Those queues that
         share the same priority operate in what may externally
         appear to be a Weighted Round Robin manner, and preempt
         the traffic belonging to any lower priority. For this
         reason, it is strongly urged that traffic placed into
         prioritized queues be strongly policed to avoid traffic
         lockout.
         Queues in this table also have a minimum and a maximum
         rate.  When a maximum rate is specified, the queue acts
         as a shaper if it has sufficient traffic and capacity
         is available.  If it is a minimum rate, then the weight
         in the WRR is effectively set to this rate divided by
         the sum of the rates of queues on the interface,
         guaranteeing it at least that throughput rate. If it is
         a maximum rate, the queue operates as a shaper. A
         shaper potentially reduces the rate of traffic through
         it to the indicated rate, and minimizes variations in
         rate."                       G"An entry in the Queue  Table describes a single FIFO
         queue."                       "The number of  the queue."            --  MAX-ACCESS  not-accessible
          �"The rate of the queue, in kilobits per second  (KBPS).
         This unit is chosen because interfaces exist at the
         time of this writing which exceed the number of bits
         per second which may be represented in a 32 bit number.
         If the value is zero, then there is effectively no
         minimum rate. If the value is non-zero, the queue set
         will seek to assure this class of traffic at least this
         rate."                      �"The rate of the queue, in kilobits per second  (KBPS).
         This unit is chosen because interfaces exist at the
         time of this writing which exceed the number of bits
         per second which may be represented in a 32 bit number.
         If the value is zero, then there is effectively no
         maximum rate. If the value is non-zero, the queue set
         will seek to assure this class of traffic at most this
         rate."                      �"The priority of the queue. If  multiple queues exist on
         the same interface at the same priority, they are
         effectively given Weighted Round Robin service. If
         multiple priorities are configured on an interface,
         traffic with a numerically higher priority number is
         deemed to have higher priority than other traffic, and
         is preemptively serviced."                      �"The 'Next' pointer selects the successor TCB on the
         interface.  Incoming traffic may use the value
         zeroDotZero in this variable to indicate that the
         packet is now to be routed; outbound traffic may use
         the same value to indicate that no subsequent queuing
         applies.  Ingress interfaces generally use queuing
         either to divert routing traffic for speedier
         processing during a flap, or for shaping purposes."                      �"The amount, in the form of a factor, that the  current,
         actual queue occupancy should influence the averaged
         queue occupancy.  The averaged queue occupancy can be
         used for comparison to configured drop thresholds in
         RED or RED-like dropper implementations.  Larger the
         weight, the greater the instantaneous queue occupancy
         influences the averaged queue occupancy.  Usually,
         dramatic changes in the instantaneous queue occupancy
         is the result of bursty input streams.  Notice this
         numeric attribute is divided by 10,000 to get the
         effective fractional factor used in the actual
         calculations."                       �"The RowStatus  variable controls the activation,
         deactivation, or deletion of a queue. Any writable
         variable may be modified whether the row is active or
         notInService."                                                          