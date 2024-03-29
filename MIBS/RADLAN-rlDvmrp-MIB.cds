       U"The private MIB module definition for IP Multicast DVMRP support in Radlan devices." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200404190000Z" "Initial version of this MIB."               *"MIB's version, the current version is 1."                       -"The enabled status of Dvmrp on this router."                       V"The default interval at which periodic DVMRP Probe
         messages are to be sent."                       ["The default interval, if expired the Neighbor need to be
         deleted from Interface."                       Y"The min interval at which the DVMRP Fash (Report msg)
         messages are to be sent."                       N"The default interval at which periodic DVMRP Report messages are to be sent."                       ."The default interval at which route expired."                       :"The default value of prune interval to be send upstream."                       i"The (conceptual) table listing the designated forwarder
            for each source mask and interface."                       �"An entry (conceptual row) in the rlDvmrpRouteDesignatedForwarderExtTable.
            Specifies the designated forwarder for this source mask and interface."                       a"The address of the designated forwarder
            for the specific Source Mask and Interface."                           "A DVMRP Table overflows."                                