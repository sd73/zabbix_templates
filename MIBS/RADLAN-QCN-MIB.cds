                                          K"Added:
                    rlQcnFeatureStatus
                    rlQcnPriorityStateTable
                    rlQcnIfStateTable
                    rlQcnCmnPriority
                    rlQcnCpPfcSetPoint
                    rlQcnCpNonPfcSetPoint
                    rlQcnCpFeedbackWeight
                    rlQcnCpMinSampleBase." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com"               *"This scalar indicates QCN enable status."                       L"This table describes Quantized Congestion Notification per Priority state."                       u"Each entry in this table describes priority state.
         The index is represented by rlQcnPriorityStatePriority."                       "802.1Q Priority."                        "Admin status of this priority."                       &"Operational status of this priority."                       >"Reason for admin status (if admin status not equal to oper)."                       \"The status of a table entry.
        It is used to delete/Add an entry from/to this table."                       M"This table describes Quantized Congestion Notification per interface state."                       v"Each entry in this table describes state of the interface.
         The index is represented by rlQcnIfStateIfIndex."                       
"IfIndex."                      "Congestion point creation enable status.
        If CP creation is enabled for an interface,
        the system automatically creates a
        Congestion Point (CP) for a queue of that
        interface if at least one QCN priority
        (Oper state) is mapped to that queue."                       \"The status of a table entry.
        It is used to delete/Add an entry from/to this table."                       �"This scalar indicates priority which is used for all
        Congestion Notification Messages (CNMs) transmitted by the device."                       �"This scalar indicates QCN set-point of an
        egress queue on PFC enabled interface.
        Value of set-point is in bytes and in multiples of 512."                       �"This scalar indicates QCN set-point of an
        egress queue on PFC disabled interface.
        Value of set-point is in bytes and in multiples of 512."                       �"This scalar indicates Feedback Weight of a QCN egress queue.
         The weight is equal to two to the power of this object.
         Thus, if this number contains a -1, weight = 1/2."                       �"This scalar indicates minimum number of bytes to
         enqueue in a QCN egress queue between transmissions
         of Congestion Notification Messages.
         Value of min-sample-base is in bytes and in multiples of 16."                       y"This scalar indicates QCN set-point of an egress queue.
        Value of set-point is in bytes and in multiples of 512."                              