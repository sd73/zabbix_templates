                                                                                               3"The private MIB module definition for VRRPv3 MIB." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201012090000Z" "201602280000Z" "Initial version of this MIB." %"New fields for IP SLA track support"               �"This table is parallel to vrrpv3OperationsTable, and is used
                  to change VRRP on interface working version, description and
                  display several statuses.
                  It contains private objects."                       8"An operation entry mapping for a particular interface."                      v"In the case where there are more than one IP
        Address (associated IP addresses) for a given
        `ifIndex', this object is used to specify the IP
        address that will become the
        vrrpv3OperationsMasterIpAddr', should the virtual
        router transition from backup state to master and no
        vrrpv3OperationsDefaultPrimaryIpAddr was configured."                       {"This object represents enabled/disabled state of user configured
                  primary address of the virtual router."                       -"The description of the VRRP virtual router."                      6"This object will enable/disable the virtual router
                  function. Setting the value to `up', will transition
                  the state of the virtual router from `initialize' to `backup'
                  or `master', depending on the value of `vrrpOperPriority'.
                  Setting the value to `down', will transition  the
                  router from `master' or `backup' to `initialize'. State
                  transitions may not be immediate; they sometimes depend on
                  other factors, such as the interface (IF) state."                       9"Current VRRP virtual router version it is working with."                       D"This object specifies the priority which is used by master router."                       q"The time interval, in centiseconds, which is used by master router
        for sending advertisement messages. "                       A"Time interval for Backup to declare Master down (centiseconds)."                       4"Time to skew Master_Down_Interval in milliseconds."                       W"Number of associates a track object with this VRRP router.
        0 - no association"                       "Track status"                       �"Amount by which the priority for the router is decremented (or incremented)
        when the tracked object goes down (or comes back up)."                       "Operational priority"                       �"This table is parallel to vrrpv3AssociatedIpAddrTable, and is used
                  to display address statuses.
                  It contains private objects."                       i"An entry in the table contains an IP address that is
                  associated with a virtual router"                       s"This object represents state of the assosiated IP address,
                  backed up by current virtual router."                       %"Table of virtual router statistics."                       d"An entry in the table, containing statistics
            information about a given virtual router."                       "Interface index"                       �"The total number of checksum errors received on
            this interface.

            Counter is only valid as long as there is a VRRP router defined on
            this interface."                       �"The total number of packet length errors received on
            this interface.

            Counter is only valid as long as there is a VRRP router defined on
            this interface."                       �"The total number of TTL errors received on
            this interface.

            Counter is only valid as long as there is a VRRP router defined on
            this interface."                       �"The total number of invalid VRRP packet type errors received on
            this interface.

            Counter is only valid as long as there is a VRRP router defined on
            this interface."                       �"The total number of invalid VRRP id errors received on
            this interface.

            Counter is only valid as long as there is a VRRP router defined on
            this interface."                       �"The total number of invalid VRRP protocol errors received on
            this interface.

            Counter is only valid as long as there is a VRRP router defined on
            this interface."                       �"The total number of invalid IP address list errors received on
            this interface.

            Counter is only valid as long as there is a VRRP router defined on
            this interface."                       �"The total number of invalid advertisement interval errors received on
            this interface.

            Counter is only valid as long as there is a VRRP router defined on
            this interface."                       �"The total number of authentication errors received on
            this interface.

            Counter is only valid as long as there is a VRRP router defined on
            this interface."                       >"Row status of the entry. Used for clearing table by setting."                      