    "Configure the port trust state
        none    - Do not classify ingress packets with the packet CoS/DSCP values.
        cos     - Classifies ingress packets with the packet CoS values.
                  For untagged packets, the port default CoS is used.
        dscp    - Classifies ingress packets with the packet DSCP values.
        cos-dscp- Classifies ingress packets with the packet DSCP values.
                  For non-ip tagged packets, classifies ingress packets with
                  the packet CoS values."                                                     L"The private MIB module definition generic traffic policy in Eltex devices." "www.eltex.nsk.ru"                   0"This table specifies The VPT to DSCP map table"                       �"Each entry in this table describes The DSCP assigned to a VPT value.
         The index is VPT represent by eltPolicyVptValue."                       "VPT value."                       "DSCP value."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       ?"Specifies The QoS trust mode for the interfaces in basic mode"                       >"Specifies The QoS trust mode for the interface in basic mode"                       M"Defines the interface qos trust operation mode relevant for qos basic mode."                           �"This table enables the network administrator to fine-tune
         the rate limit in pps given to each vlan.
         The values in this table will thus override those of the
         rlQosIfPolicyTable (THIS TABLE IS MANAGED FROM 3SW)."                       )"Configuration parameters for each vlan."                       �"The CIR for the port Rate limit in packets per second.
         CIR equal to 0 means that the rate limit does not apply
         to traffic in this vlan."                       -"The CBS for the port Rate Limit in packets."                           9"This table defines the Metering classes for the system."                       5"Each statement consists of the following parameters"                       �"The rate in packets per second of traffic considered within the
         bandwidth allocated for this policy entry. Rate equal to 0 means
         that the rate limit does not apply to traffic."                       J"The Burst Size parameter for the aggregate meter leaky bucket in packets"                           �"This table defines the Actions for packets that pass the meter table
         ie. the characteristics that are assigned to packets before they
         reach the scheduler."                       X"Each multifield classification statement consists of the following
         parameters"                       �"This paramer is used at non diffserv mode to attached the drop precedence
         for packet OutProfile (metering), only if there is a support for drop precedence
         and with what level."                       �"If true, the packet is re-marked with the value indicated by
         newDscp for non conforming packets.
         If false, the packet's DSCP value is not changed"                                              