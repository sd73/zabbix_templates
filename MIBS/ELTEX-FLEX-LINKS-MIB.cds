?-- -----------------------------------------------------------------------------
-- MIB NAME : Eltex Flex Links
-- FILE NAME: eltFlexLinksV2.mib
-- DATE     : 2014/10/9
-- VERSION  : 1.00
-- PURPOSE  : MIB structure of Flex Links feature
-- -----------------------------------------------------------------------------
                                "This MIB module is for configuration and status query
                of Flex Links feature on the Eltex device.

                Flex Links are a pair of Layer 2 interfaces, where one
                interface is configured to act as a backup to the other.
                The feature provides an alternative solution to the
                Spanning Tree Protocol (STP), allowing users to turn
                off STP and still provide basic link redundancy.

                Flex Links are typically configured in service provider
                or enterprise networks where users do not want to run
                STP on the device." "http://www.eltex.nsk.ru"                   f"A eltexFlIfStatusChangeNotif is generated when the
                value of eltexFlIfStatus changes."                        H"This table allows user to configure Flex Links.

                The Flex Links feature requires interface pairs to be
                setup. This table allows user to specify such
                interface pairs.

                An interface can become part of only one such interface
                pair at any given time."                       "An entry containing information about Flex Links
                configuration. Each entry configures a pair of
                interfaces for a Flex Links.

                Only those Layer 2 interfaces which are capable of
                performing Flex Links operation may be configured
                in this table.

                Once an interface is configured as part of a Flex Links
                pair, such an interface, can not be configured as a
                part of other Flex Links pairs."                       U"The object indicates the primary interface in this
                Flex Links pair."                      �"The object indicates the back up interface in this
                Flex Links pair.

                The value of this object is changed to 0 (zero) if this
                interface is removed from the ifTable. The SNMP agent
                is responsible for updating this object's value once
                the interface is added to the ifTable. The value of
                0 (zero) cannot be set."                       �"This variable indicates whether the system
                produces the eltexFlIfStatusChangeNotif.

                A value of 'false' will prevent
                eltexFlIfStatusChangeNotif."                      "This table contains management information, such as
                of MAC address-table Move Update(MMU), preemption
                mechanism, VLAN load balancing of Flex Links pair,
                of interfaces which are capable of supporting these
                features."                       c"An entry containing Flex Links management information
                for a particular interface."                      3"The object specifies the preemption mechanism for
                a Flex Link interface pair.

                off - No preemption happens from active interface
                      to backup interface.

                forced - The active interface always preempts the
                      backup interface.  The preemption occurs
                      after the time specified in
                      eltexFlIfConfigPreemptionDelay.

                bandwidth - The interface with higher bandwidth
                      always acts as the active interface."                       �"The object specifies the delay time until an
                interface preempts another interface for a
                Flex Link interface pair."                           7"A list of interfaces which are members of Flex Links."                      �"An entry, containing status information about a
                Flex Links interface.

                Entry is created when an interface is configured as
                a member of a Flex Links. When an entry is created
                in the eltexFlIfConfigTable, entries corresponding to
                eltexFlIfConfigPrimary and eltexFlIfConfigBackUp are created
                in this table.

                Entry is deleted when an interface is removed from
                a Flex Links. When an entry is removed from the
                eltexFlIfConfigTable, entries corresponding to
                eltexFlIfConfigPrimary and eltexFlIfConfigBackUp are deleted
                from this table."                       �"The index value which uniquely identifies the
                interface to which this entry is applicable.
                eltexFlIfIndex is the same as the ifIndex of the
                interface associated with a Flex Links."                      <"The status of an interface which is participating in
                Flex Links operation.

                A value of 'forwarding' indicates that, the interface is
                participating in Flex Links operation and is
                actively forwarding traffic.

                A value of 'blocking' indicates that, interface is
                participating in Flex Links operation and is ready
                to forward traffic if the interface it backs up in
                Flex Links operation goes down.

                A value of 'down' indicates that, the interface
                participating in Flex Links operation has gone down.

                A value of 'unknown' indicates that, the interface
                is participating Flex Links operation and has entered
                an unknown state."                               a"The compliance statement for entities which implement
                the ELTEX-FLEX-LINKS-MIB."   g"This group is mandatory in devices running software
                which support preemption feature." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required."                 g"A collection of objects providing interface
                configuration information for Flex Links."                 `"A collection of objects providing interface
                status information for Flex Links."                 �"A collection of objects providing enabling/disabling
                 of the status change notifications for Flex
                 Links."                 \"A collection of notifications providing the status
                 change for Flex Links."                     c"A collection of objects providing interface
                preemption information of Flex Links."                