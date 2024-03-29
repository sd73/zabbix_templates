                           k"A list of the interfaces that support
                        the 802.1q custom egress ethertype feature."                       �"An entry containing the custom egress EtherType
                        information for the interface.
                        Only interfaces with custom 802.1q
                        ethertype control are listed in the
                        table."                      �"The Dot1qEtherType allow administrator
                        to select a non-standard (other than 0x8100)
                        2-byte ethertype for the interface to
                        interoperate with third party vendor's system
                        that do not use the standard 0x8100 ethertype
                        to identify 802.1q-tagged frames.

                        The current administrative value of the
                        802.1q ethertype for the interface.  The
                        administrative 802.1q ethertype value may
                        differ from the operational 802.1q ethertype
                        value.  On some platforms, 802.1q ethertype
                        may be assigned per group rather than per port.
                        If multiple ports belong to a port group,
                        the 802.1q ethertype assigned to any of
                        the ports in such group will apply to all
                        ports in the same group.

                        To configure non-standard dot1q egress ethertype
                        is only recommended when the Eltex device
                        is connected to any third party vendor device."                       l"A list of the interfaces that support
                        the 802.1q custom ingress ethertype feature."                      "An entry containing the custom ingress EtherTypes
                        set for the interface to classify stag and ctag.
                        Only interfaces with custom 802.1q
                        ethertype control are listed in the
                        table."                       �"This fields holds default ethertype 0x8100 or zero
					if ethertype 0x8100 is not used to classify SVLAN on
                    current interface."                       �"The custom ethertype to classify ingress vlan tags (SVLAN)
    				for the interface to interoperate with third party vendor's
                    system that do not use the standard 0x8100 ethertype
                    to identify 802.1q-tagged frames."                       �"The custom ethertype to classify ingress vlan tags (SVLAN)
    				for the interface to interoperate with third party vendor's
                    system that do not use the standard 0x8100 ethertype
                    to identify 802.1q-tagged frames."                       �"The custom ethertype to classify ingress vlan tags (SVLAN)
    				for the interface to interoperate with third party vendor's
                    system that do not use the standard 0x8100 ethertype
                    to identify 802.1q-tagged frames."                       �"The custom ethertype to classify ingress vlan tags (SVLAN)
    				for the interface to interoperate with third party vendor's
                    system that do not use the standard 0x8100 ethertype
                    to identify 802.1q-tagged frames."                       �"The custom ethertype to classify ingress vlan tags (SVLAN)
    				for the interface to interoperate with third party vendor's
                    system that do not use the standard 0x8100 ethertype
                    to identify 802.1q-tagged frames."                       �"The custom ethertype to classify ingress vlan tags (SVLAN)
    				for the interface to interoperate with third party vendor's
                    system that do not use the standard 0x8100 ethertype
                    to identify 802.1q-tagged frames."                           3"A list of the interfaces ingress C-VLAN settings."                       W"An entry containing ingress C-VLAN assignment
                     for the interface."                       k"C-VLAN tag for the interface assigned
                     in ingress pipe. 0 means no C-VLAN assignment."                          