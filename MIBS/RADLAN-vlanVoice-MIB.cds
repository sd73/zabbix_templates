                                                                       N"The private MIB module definition for voice vlan support in Marvell devices." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "201009260000Z" "201009260000Z" 1"Editorial changes to support new MIB compilers." "Initial version of this MIB."               $" administrative voice vlan status "                       !" operational voice vlan status "                       ;"1-4094 actual vlan (must exist in dot1qvlan static table)"                       " operational Voice Vlan ID"                       V"A table containing static default and UC directly connected to device configuration."                       ;"Static and dynamic per port information for a voice VLAN."                       "type of entry"                       "Mac address of UC"                       ("Mac interface on which UC is connected"                       "The Voice Vlan ID"                       "The entry VPT"                       "The entry DSCP value"                       B"Indicates whether this entry is used as best local configuration"                               ."user configured VPT for Voice Vlan operation"                       /"user configured DSCP for Voice Vlan operation"                           *"operational VPT for Voice Vlan operation"                       /"user configured DSCP for Voice Vlan operation"                       @"The Mac address of the switch by which we've selected the VVID"                       2"The reason for which Voice Vlan ID was selected."                       <"By setting the MIB to True, VSDP refresh will be executed."                       "date format is DDMMYYHHMMSS"                           �"An administratively assigned Priority, which will be used
        for all traffic on the voice vlan, this gives the packets
        the requested priority (CoS) within the bridge."                       ^"Remark VPT on tagged frames egress the voice vlan according.
         to priority true.false"                      �"The vlanVoiceOUIBasedSetToDefault indicates that vlanVoiceOUIBasedTable
            should be set to it's default values if existed
            (OUI default prefixes).

            To do so the vlanVoiceOUIBasedTable should be previously deleted by usual
            entries destroying.

            This object behaviors as write-only than
            reading this object will always return 'false'."                       �"A table containing static global configuration information for Voice VLANs OUI MAC Prefixes.
        All entries are permanent and will be restored after the device is reset."                       b"Information for a voice VLANs OUI MAC Prefixes configured into the
        device by management."                      8"The index value used to identify the OUI MAC Prefix component
             associated with this entry.

            The value of this object is used as an index to the
            vlanVoiceOUIBasedTable.

            Voice VLANs OUI Prefix is the first 3 most significant
            octets of the MAC address."                       *"An optional text that describes the OUI."                       1"This object indicates the status of this entry."                       �"A table containing static and dynamic per port configuration information for Voice VLAN.
        All entries are permanent and will be restored after the device is reset."                       ;"Static and dynamic per port information for a voice VLAN."                       E"Enable this port to be a candidate to be added into the Voice VLAN."                       5"The Voice VLAN-ID the port is a candidate to be in."                       �"Specify this port to be in Secure Mode when entering the Voice VLAN.
          In Secure mode only frames with MAC prefix matched to one of the OUI table prefixes
         are accepted, otherwise dropped."                      8"Port's current status of membership in Voice VLAN.

         Port's possible values of membership in Voice VLAN:
          'Active(1)'    - Port is currently added to a Voice VLAN .
          'NotActive(2)' - Specifies either that port is a candidate to be
                           in Voice VLAN or disabled."                       �"Port's current QOS mode in Voice VLAN.
         Possible values:
          'src(1)' - Only traffic with OUI prefix in the source MAC received QOS of the Voice Vlan.
          'all(2)' - All traffic through that port received QOS of the Voice Vlan."                      �"The vlanVoiceAgingTimeout indicates the time (in units of
            minutes) from when the last OUI MAC was ageout from the FDB the port
            will be removed from the Voice VLAN.

            The default value for vlanVoiceAgingTimeout object is 1440 minutes (24 hours).

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system."                                      