     a"copy destination mode type:
                    1- monitor-only
                    2- network."                                     4"This private MIB module defines SMON private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               *"MIB's version, the current version is 1."                       �"supported - The standard portCopy is supported.
        notSupported - the standard portCopy is not supported.
                       only basic portCopy operation is supported. "                       n"A supplementing table for portCopyTable.
         For every portCopyDest a vlan-tagging option is available."                      "Each entry specify how  mirrored packets will transmit from
         the portCopyDest:   Tagged or unTagged.
         The values in this entry will be valid only when the
         dot1dBasePort will be configured as a portCopyDest
         in the portCopyTable."                       �"TRUE  - Mirrored packets will transmit from portCopyDest - Tagged
         FALSE - Mirrored packets will transmit from portCopyDest - unTagged"                       L"This scalar defines a mode of the copy
                   destination port"                       8"This scalar enables globaly  port monitoring sessions "                                  