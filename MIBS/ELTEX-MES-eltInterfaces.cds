           Y"Switch media specific information and configuration of the device
         interfaces."                       >"Defines the contents of each line in the eltSwIfTable table."                       �"Index to the eltSwIfTable. The interface defined by a
         particular value of this index is the same interface as
         identified by the same value of ifIndex (MIB II)."                       D"This variable indicates plugged in SFP transceiver operation mode."                       �"When enabled the link can be established by bypassing the Auto-Negotiation procedure
        if the link partner doesn't respond to the Auto-Negotiation process."                       W"This variable controls the Forward Error Correction (FEC) mode 
        on the port."                       u"This variable indicates the actual Forward Error Correction (FEC) mode 
        that currently in use on the port."                       ="This variable controls the Unidirectional mode on the port."                       9"Switch ports utilization configuration and information."                       I"Defines the contents of each line in the eltSwIfUtilizationTable table."                      3"A unique value for each interface.  Its value
          ranges between 1 and the value of ifNumber.  The
          value for each interface must remain constant at
          least from one re-initialization of the entity's
          network management system to the next re-
          initialization."                       ["An average load time in seconds for which interface
          utilization is calculated."                       m"The total number of all (UC, MC and BC) packets
          received on the interface during last 5 seconds."                       Q"The inbound rate in kbit/sec
          on the interface during last 5 seconds."                       m"The total number of all (UC, MC and BC) packets
          sent out of the interface during last 5 seconds."                       R"The outbound rate in kbit/sec
          on the interface during last 5 seconds."                       �"The total number of all (UC, MC and BC) packets
          received on the interface during configured
          load average time for this interface."                       r"The inbound rate in kbit/sec on the interface
          during configured load average time for this interface."                       �"The total number of all (UC, MC and BC) packets
          sent out of the interface during configured
          load average time for this interface."                       s"The outbound rate in kbit/sec on the interface
          during configured load average time for this interface."                              