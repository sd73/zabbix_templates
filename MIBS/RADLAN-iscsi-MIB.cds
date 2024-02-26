     "Type of QoS: VPT or DSCP."                                                                                         ."Enable/Disable iSCSI Snooping in the switch."                       z"The time in seconds that should pass before session aging out
         after the last frame transmitted for the session."                       8"The (conceptual) table for configuration of iSCSI QOS."                       8"An entry (conceptual row) in the rlIscsiSnoopQosTable."                       '"Key of the rlIscsiSnoopQosTable table"                       &"Current type of QoS of iSCSI packets"                       �"The value of VPT or DSCP, depends on rlIscsiSnoopQosType, that will be assigned to each iSCSI packet.
        The range of VPT value is 0..7. The range of DSCP value is 0..63"                       N"Whether iSCSI frames with the configured VPT/DSCP when egressing the switch."                       g"The (conceptual) table for configuration of iSCSI target TCP port number
        IP address and name."                       E"An entry (conceptual row) in the rlIscsiSnoopTargetPortConfigTable."                       $"The TCP port of configured target."                       f"Specifies the target address. If the target
        address is ignored the address should be 0.0.0.0"                       "The first part of target name"                        "The second part of target name"                       <"The status of the target. It's used to add/delete a target"                       T"A table that contains iSCSI target names.
        It is indexed by Target Name ID."                       ?"An entry (conceptual row) in the rlIscsiSnoopTargetNameTable."                       2"Numerical ID of target name assigned by system. "                       "The first part of target name"                        "The second part of target name"                       W"A table that contains iSCSI initiator names.
        It is indexed by Target Name ID."                       B"An entry (conceptual row) in the rlIscsiSnoopInitiatorNameTable."                       5"Numerical ID of initiator name assigned by system. "                       ""The first part of initiator name"                       #"The second part of initiator name"                       l"A table that contains iSCSI sessions.
        It is indexed by Target Name ID, Initiator Name ID and ISID."                       <"An entry (conceptual row) in the rlIscsiSnoopSessionTable."                       "The ISID of current session."                       r"The aging time of current session in seconds
         For session not under monitor it is equal max aging time. "                       &"Time the session exists, in seconds."                       o"A table that contains iSCSI connections. This is indexed by Session ID and
        TCP connection parameters."                       ?"An entry (conceptual row) in the rlIscsiSnoopConnectionTable."                       *"Specifies the connection target address."                       $"The TCP port of connection target."                       -"Specifies the connection initiator address."                       '"The TCP port of connection initiator."                       ="The value of SysUpTime at which the connection was created."                       �"The value of SysUpTime on the most recent occasion at which
         the counter object indexed with the value of
         rlIscsiSnoopConnectionCounterIndex was incremented"                       �"The value of SysUpTime on the most recent occasion at which
         the counter object indexed with the value of
         rlIscsiSnoopConnectionCounterIndex was sampled"                       �"The value of SysUpTime at which the connection should be discarded
         as a result of inactivity elapsed at least rlIscsiSnoopAgingTimeOut."                       �"The index into the the connection counters table
         of the counter object bound to
         this rlIscsiSnoopConnectionEntry object."                       2"Enable/Disable iSCSI Snooping COS in the switch."                              