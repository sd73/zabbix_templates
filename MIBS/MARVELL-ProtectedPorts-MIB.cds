                           "<description>" Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200805031234Z" <"The private MIB module definition for Protected Ports MIB."               I"A table containing entries of protected ports configuration information"                       <"A table entry of protected ports configuration information"                       ~"Set port protected mode: not-protected, protected
         protected ports filter layer 2 traffic from other protected ports"                      �"Associate protected port with community number which becoming active only when
         rlProtectedPortsStatus changed to protected
         protected community ports filter layer 2 traffic from protected ports
         and from other protected community ports, but do not filter layer 2
         traffic from same community ports.

         value of 0 disassociate port from its community.
         "                       6"A table containing entries of protected ports status"                       @"A table entry containing protected ports DB status information"                       �"list of ports which are not filtered by protected port mechanism when traffic is forwarded from
         the specified ifIndex"                       �"true  - set all system fast ethernet ports to protected state
         false - set all system fast ethernet ports to not protected state"                                  