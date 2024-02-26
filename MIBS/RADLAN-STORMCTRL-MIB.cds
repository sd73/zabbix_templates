                                     0"traffic type for storm-control and rate-limit."               ""Storm control traffic type bits."                                                                                     ="This private MIB module defines storm control private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               7"Identify if the strom control protection is supported"                       *"MIB's version, the current version is 3."                       9"the supported rate unit type for the storm rate control"       �--    SYNTAX      BITS {
--            packetsPerSecond(0),
--            bytesPerSecond(1),
--            framesPerBuffer(2),
--            percentages(3),
--            kiloBytesPerSecond(4),
--            kiloBitsPerSecond(5)
--    }
               ;"the supported frame type for the storm control protection"       �--    SYNTAX      BITS {
--            unknownUnicast(0),
--            unknownMulticast(1),
--            broadcast(2),
--            multicast(3),
--    }
               ;"identify if rate control is supported for each frame type"       �--    SYNTAX      BITS {
--            unknownUnicast(0),
--            unknownMulticast(1),
--            broadcast(2),
--            multicast(3),
--    }
               �"indicate enable limitation of dependency between frame types,
         such as enabling of multicast should be with the enabling of
         broadcast type (bcm 5632)"       �--    SYNTAX      BITS {
--            unknownUnicast(0),
--            unknownMulticast(1),
--            broadcast(2),
--            multicast(3),
--    }
              J"indicate limitation of dependency between frame types for
         rate assignment, for example: assigning of rate limit for unicast
         frame must assigning the same rate for multicast and bradcast
         frame (bcm 5615), in case the device support enbale per each frame
         type but with the same rate limitation."       �--    SYNTAX      BITS {
--            unknownUnicast(0),
--            unknownMulticast(1),
--            broadcast(2),
--            multicast(3),
--    }
               :"The table contains the storm control protection per port"                       @"storm control protection, defined per port,frame type and rate"                       "indicate the rate unit type"                       @"enable or disable the storm control for unknown unicast frames"                       x"set the storm control rate limit for the unknown unicast frames,
        0 indicate blocking of frames from this type."                       B"enable or disable the storm control for unknown multicast frames"                       z"set the storm control rate limit for the unknown multicast frames,
        0 indicate blocking of frames from this type."                       :"enable or disable the storm control for Broadcast frames"                       r"set the storm control rate limit for the Broadcast frames,
        0 indicate blocking of frames from this type."                       :"enable or disable the storm control for multicast frames"                       r"set the storm control rate limit for the multicast frames,
        0 indicate blocking of frames from this type."                       7"indicate if return the rate unit type to its default."                       a"indicate if return the storm control enable for unknown unicast frames
         to its default."                       i"indicate if return the storm control rate limit for the unknown unicast frames
         to its default."                       c"indicate if return the storm control enable for unknown multicast frames
         to its default."                       k"indicate if return the storm control rate limit for the unknown multicast frames
         to its default."                       ["indicate if return the storm control enable for Broadcast frames
         to its default."                       c"indicate if return the storm control rate limit for the Broadcast frames
         to its default."                       T"indicate if return the storm control for multicast frames
         to its default."                       c"indicate if return the storm control rate limit for the multicast frames
         to its default."                       �"Operative storm control rate limit for the Broadcast frames.
         The value will be 0 if rlStormCtrlRateType is not from type precentages."                       ^"The table contains per port for each supported frame type
        to which group it belongs."                       :"group id for each supported frame type defined per port."                       �"Indicates the id of the group for unknown unicast frame type that
        the port belongs to,
        0 indicates that unknown unicast frame type is not supported."                       �"Indicates the id of the group for unknown multicast frame type that
        the port belongs to,
        0 indicates that unknown multicast frame type is not supported."                       �"Indicates the id of the group for broadcast frame type that
        the port belongs to,
        0 indicates that broadcast frame type is not supported."                       �"Indicates the id of the group for multicast frame type that
        the port belongs to,
        0 indicates that multicast frame type is not supported."                       ;"Identify if the strom-control and rate-limit is supported"                       *"MIB's version, the current version is 1."                       L"The table contains the storm-control and rate-limit configuration per port"                       >"storm-control and rate-limit configuration, defined per port"                       0"traffic type for storm-control and rate-limit."                       D"block the flooding of packets when the value specified is reached."                       U"suppression level in percentage (for storm-control only) or in kilobits per second."                       d"send a trap when a storm occurs on a port or/and shut down a port when a storm occurs on the port."                       )"committed burst in bytes for rate-limit"                       C"indicates who is the owner for broadcast type that is configured."                       C"indicates who is the owner for multicast type that is configured."                       A"indicates who is the owner for unicast type that is configured."                       S"The table contains the operative values for storm-control and rate-limit per port"                       8"storm-control and rate-limit operative values per port"                       $"number of passed counter in bytes."                       %"number of dropped counter in bytes."                       *"last Drop time in format ddmmyyyyhhmmss."                       ("The table clear storm-control counters"                       "clear storm-control counters"                       -"Index of the table that equals to 1 always."                       )"Traffic type for storm-control counter."                       "The Port number or all ports."                       0"global traffic types configured on the device."                                  