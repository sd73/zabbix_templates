     ."Types of traffic measurement in kbps or pps."              "Specifies one of 4 QoS trust mode for port:
        none    - Do not classify ingress packets with the packet CoS/DSCP values.
        cos     - Classifies ingress packets with the packet CoS values.
                  For untagged packets, the port default CoS is used.
        dscp    - Classifies ingress packets with the packet DSCP values.
        cos-dscp- Classifies ingress packets with the packet DSCP values.
                  For non-ip tagged packets, classifies ingress packets with
                  the packet CoS values."               �"Specifies available mapping type:
         cos-dscp - convert ingress packets the CoS values to the DSCP values
         dscp-cos - convert ingress packets the DSCP values to the CoS values"               �"Specifies one of 3 Policer Action:
         1- No Action
         2- Drop out of profile packets.
         3- Remark out of profile packets."                                                             4"This table specifies Offset List Table information"                       �"Each entry in this table describes one Offset List.
        The information includes: Offset List name and the offsets pointers.
        The index is an octet string name"                       M"An arbitrary incremental Index
         for the ACL offset list connection."                       "Offset list name."                       7"Offset pointer is an index of table rlQosOffsetTable."                       7"Offset pointer is an index of table rlQosOffsetTable."                       7"Offset pointer is an index of table rlQosOffsetTable."                       7"Offset pointer is an index of table rlQosOffsetTable."                       7"Offset pointer is an index of table rlQosOffsetTable."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       8"Offset pointer is an index of table eltQosOffsetTable."                       8"Offset pointer is an index of table eltQosOffsetTable."                       8"Offset pointer is an index of table eltQosOffsetTable."                       8"Offset pointer is an index of table eltQosOffsetTable."                       8"Offset pointer is an index of table eltQosOffsetTable."                       8"Offset pointer is an index of table eltQosOffsetTable."                       8"Offset pointer is an index of table eltQosOffsetTable."                       8"Offset pointer is an index of table eltQosOffsetTable."                       <"This table specifies ACE table with two index information."                       0"Augments rlQosAceTidxEntry to add more tuples."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       "ACE Tuple pointer."                       T"This table specifes list of actions for each class in
         rlQosClassMapTable."                       �"Each entry in this table describes configuration information about
         actions for one class.
         This table is a sub-table for rlQosClassMapTable."                       8"Action to be taken when packet matches classification."                       B"Value for the action described in eltQosClassMapActionCfgAction."                       Y"The status of a table entry. It is used to add/delete an entry from this
        table."                       7"This table specifies The DSCP
         To CoS mapping"                       }"Each entry in this table describes the new
         CoS for the packet.
         The index is DSCP represent by eltQosDscp."                       "DSCP value."                       "Re-mark CoS."                       7"This table specifies The CoS
         to DSCP mapping"                       �"Each entry in this table describes the new
         DSCP value for the packet.
         The index is CoS represent by eltQosDscp."                       "CoS value."                       "Re-mark DSCP."                       ?"Specifies The QoS trust mode for the interfaces in basic mode"                       >"Specifies The QoS trust mode for the interface in basic mode"                       M"Defines the interface qos trust operation mode relevant for qos basic mode."                       �"Block the flooding of packets when the value in pps specified is reached.
         Rate equal to 0 means that the rate limit does not apply to traffic."                       "Committed burst in packets."                       E"This table responsible to set the global QoS mapping configuration."                       E"This table responsible to set the global QoS mapping configuration."                       ;"Entry index - this field indicates type of configured map"                       -"This field indicates if mapping is enabled."                       �"The scalar indicates in which units of measurement
         the traffic speed and bucket size will be measured in
         storm-control and rate-limit."                       D"This table specifies additional the policers to rlQosPolicerTable."                       D"This entry specifies additional the policers to rlQosPolicerTable."                       �"Committed rate value in packets per second.
         Rate equal to 0 means that the rate limit does not apply
         to traffic."                       "Committed burst in packets."                       "Out of profile in pps Action."                       �"Peak rate value in packets per second.
         When both this and eltQosPolicerConfigPbsPakets
         are 0 this means the mode is Single Rate and 
         when they are both non 0 this means the mode is
         Two Rate."                       �"Peak burst value in packets.
         When both this and eltQosPolicerConfigPirPps are
         0 this means the mode is Single Rate and when 
         they are both non 0 this means the mode is Two Rate."                       $"Out of profile in pps peak action."                                      