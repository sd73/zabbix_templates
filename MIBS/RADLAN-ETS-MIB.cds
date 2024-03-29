     "Priority group enumerator."               $"Administarative reason enumerator."                                                     �"Added:
                     EtsPriorityGroupType
                     rlEtsFeatureStatus
                     rlEtsPriorityGroupMappingTable
                     rlEtsPriorityGroupBwAllocTable." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com"               *"This scalar indicates ETS enable status."                       Z"This table describes Enhanced Transmission Selection Priority to Priority Group Mapping."                       �"Each entry in this table describes The
         priority to priority group mapping.
         The index is represented by rlEtsPriorityGroupMapping8021QPrio."                       "802.1Q Priority."                       ;"Administrative (desired) Priority group of this priority."                       8"Operational (current) priority group of this priority."                       Y"The status of a table entry.
        It is used to add/delete an entry from this table."                       X"Reason if priority to priority group, admin status is not equal to operational status."                       �"Index of problematic PG if rlEtsPriorityGroupMappingProblemReason = too-many-queues(2) or
         index of problematic queue if rlEtsPriorityGroupMappingProblemReason = too-many-groups(1)."                       �"Enhanced Transmission Selection Priority Group Bandwidth Allocation identifier.
         Each pair of octets represent priority group with corresponding bandwidth"                              