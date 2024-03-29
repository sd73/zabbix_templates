-- *****************************************************************
-- CISCO-STP-EXTENSIONS-MIB
--
-- August 1997, Fei Xu
--
-- Copyright (c) 1997-2013 by Cisco Systems, Inc.
-- All rights reserved.
-- *****************************************************************
   "The VLAN-id of a VLAN."                 f"The MIB module for managing Cisco extensions to
            the 802.1D Spanning Tree Protocol (STP)." �"       Cisco Systems
                    Customer Service

            Postal: 170 W Tasman Drive
                    San Jose, CA  95134
                    USA

               Tel: +1 800 553-NETS

            E-mail: cs-wbu@cisco.com" "201303070000Z" "200512200000Z" "200504120000Z" "200407210000Z" "200404080000Z" "200401140000Z" "200310230000Z" "200207110000Z" "200112060000Z" "200109140000Z" "200106200000Z" "200104120000Z" "200005230000Z" "200003210000Z" "9711101200Z" "9708191200Z" :"Added one new value network(5) to stpxFastStartPortMode." b"Added bit value rstp(5) to stpxSMSTPortStatus and
            dispute(4) to stpxRPVSTPortStatus."O"Changed the description clauses of stpxMSTMaxHopCount
            and stpxMSTInstanceRemainingHopCount.
            Added StpxMSTConfigurationDigest textual convention.
            Deprecated stpxMSTGroup3 and added the following groups:
                stpxRSTPTransmitHoldCountGroup,
                stpxSMSTPortMSTModeGroup, stpxSMSTMaxHopCountGroup,
                stpxSMSTConfigDigestGroup and stpxMSTGroup4.
            Added bit dispute(4) into the BITS syntax of
            stpxSMSTPortStatus.
            Deprecated stpxMIBCompliance11 and added
            stpxMIBCompliance12." "Added stpxPathCostOperModeGroup
                 and changed the decription of
                 stpxSpanningTreePathCostMode." �"Added stpxSMSTInstanceCISTGroup.
            Added 3 new bit values into the BITS syntax
            of stpxNotificationEnable:
            inconsistency(2), rootInconsistency(3),
            and loopInconsistency(4)."�"Deprecated stpxMSTGroup2 and
            stpxPreferredMSTInstancesGroup.
            Added stpxMSTGroup3, stpxSMSTGroup,
            stpxSMSTInstanceGroup, stpxSMSTInstanceEditGroup,
            stpxSMSTPortStatusGroup, stpxSMSTPortHelloTimeGroup.
            Added one new value master(7) to stpxMSTPortRoleValue
            and stpxRSTPPortRoleValue. Added 2 new unused bit
            value into the BITS syntax of stpxRPVSTPortStatus." t"Added stpxExtendedSysIDGroup,
            stpxNotificationEnableGroup, and
            stpxFastStartOperModeGroup." "Added Rapid Spanning Tree Protocol support.
            Added stpxUplinkFastOperEnabled and
            stpxBackboneFastOperEnabled objects.
            Replaced stpxMSTPortAdminLinkType,
            stpxMSTPortOperLinkType,
            stpxMSTPortProtocolMigration
            with stpxRSTPPortAdminLinkType,
            stpxRSTPPortOperLinkType and
            stpxRSTPPortProtocolMigration
            defined in stpxRSTPPortTable.
            Replaced stpxMSTPortRoleTable with
            stpxRSTPPortRoleTable. Added stpxRPVSTPortTable." �"Added per port Bpdu Guard and Bpdu Filter
            mode configuration support. Modified the
            description of stpxUplinkFastEnabled and
            stpxUplinkStationLearningGenRate for MST
            support. "�"Added MST support, Loop Guard Global Default mode
            support and Fast Start Global Default mode support.
            Deprecated stpxFastStartPortEnable and
            stpxLoopGuardConfigEnabled objects. Changed description
            of stpxUplinkFastEnabled, stpxUplinkFastTransitions,
            stpxUplinkStationLearningGenRate,
            stpxUplinkStationLearningFrames objects for MST support." t"Added BPDU Skewing feature support and modified
            the SYNTAX clause of stpxUplinkStationLearningGenRate." l"Added PVST+ VLAN Configuration, MISTP to VLAN mapping,
            Loopguard, and Port Fast Start support." 2"Added Long Spanning Tree Path Cost Mode support." -"Added Rootguard, 4k VLAN and MISTP support." %"Additional objects to support SSTP." %"Initial version of this MIB module."                              �"A table containing a list of the ports for which
                a particular VLAN's Spanning Tree has been found to
                have an inconsistency.  Two types of inconsistency
                are discovered: 1) an inconsistency where two different
                port types have been plugged together; and 2) an
                inconsistency where different switches have different
                PVIDs for the same link."                       m"A VLAN on a particular port for which a Spanning Tree
                inconsistency is currently in effect."                       "The VLAN id of the VLAN."                       Y"The value of dot1dBasePort (i.e. dot1dBridge.1.4)
                 for the bridge port." &"dot1dBasePort is defined in RFC1493."                    "The types of inconsistency which have been discovered on
              this port for this VLAN's Spanning Tree.

              When this object exists, the value of the corresponding
              instance of the Bridge MIB's dot1dStpPortState object will
              be 'broken(6)'." +"dot1dStpPortState is defined in RFC-1493."                                