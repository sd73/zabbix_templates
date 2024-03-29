    r"The origin of the address.

            following are same as ipAddressOriginTC in standard MIB:

            manual(2) indicates that the address was manually configured
            to a specified address, e.g., by user configuration.

            dhcp(4) indicates an address that was assigned to this
            system by a DHCP server.

            linklayer(5) indicates an address created by IPv6 stateless
            auto-configuration.

            random(6) indicates an address chosen by the system at
            random, e.g., an IPv4 address within 169.254/16, or an RFC
            3041 privacy address.

            following are additional to standard MIB:

            autoConfig(7) indicates that the address was auto configured configured
            to a specified address, e.g., not by user configuration.

            eui64(8) indicates that the address was partially configured configured
            to a specified address, e.g., address suffix is based on MAC address with
            EUI-64 representation.

            tunnelIsatap(9) indicates that the address an ISATATP tunnel representation.

            tunnelIsatap(10) indicates that the address an 6to4 tunnel representation.

            tunnelIsatap(11) indicates that the address was partially configured configured
            to a specified address, e.g., address prefix is preconfigured.
            "                                                                                                         T"The private MIB module definition for Auto Configured IPv6 Address representation." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201306161200Z" "Initial version of this MIB."       !-- Sun June 16 12:00:00 PST 2011
      `"This table contains addressing information relevant to the
            entity's interfaces.

            in addition to ipAddressTable defined in standard MIB a represenattion of
            IPv6 addresses based on additionl address origin such as EUI-64, general
            prefix etc.
            In this case the address information is partial address information.
            Together with the address origin and the general prefix (when needed) user can
            construct full address information.

            The index (key) for this table includes this information additionally to the address."                       0"An address mapping for a particular interface."                       &"The address type of rlIpAddressAddr."                      a"The IP address to which this entry's addressing information
            pertains.  The address type of this object is specified in
            rlIpAddressAddrType.

            In case of auto-configure address such as eui-64, general-prefix and others
            it contains the partial address before appropriate manipulation.

            Implementors need to be aware that if the size of
            rlIpAddressAddr exceeds 116 octets, then OIDS of instances of
            columns in this row will have more than 128 sub-identifiers
            and cannot be accessed using SNMPv1, SNMPv2c, or SNMPv3."                       "The origin of the address."                       ""The name assigned to the prefix."                      "The index value that uniquely identifies the interface to
            which this entry is applicable.  The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of the IF-MIB's ifIndex."                       2"Extend standard field ipAddressType to multicast"                       ~"A pointer to the row in the prefix table to which this
            address belongs.  May be { 0 0 } if there is no such row."                       �"The status of the address, describing if the address can be
            used for communication.

            In the absence of other information, an IPv4 address is
            always preferred(1)."                       �"The value of sysUpTime at the time this entry was created.
            If this entry was created prior to the last re-
            initialization of the local network management subsystem,
            then this object contains a zero value."                       �"The value of sysUpTime at the time this entry was last
            updated.  If this entry was updated prior to the last re-
            initialization of the local network management subsystem,
            then this object contains a zero value."                      �"The status of this conceptual row.

            The RowStatus TC requires that this DESCRIPTION clause
            states under which circumstances other objects in this row
            can be modified.  The value of this object has no effect on
            whether other objects in this conceptual row can be
            modified.

            A conceptual row can not be made active until the
            rlIpAddressIfIndex has been set to a valid index."                       �"The storage type for this conceptual row.  If this object
            has a value of 'permanent', then no other objects are
            required to be able to be modified."                       $"The prefix length of this address."                      "The Complete IP address to which this entry's addressing information
            pertains.

            In case of auto-configure address such as eui-64, general-prefix and others
            it contains the complete address after appropriate manipulation"                                                  