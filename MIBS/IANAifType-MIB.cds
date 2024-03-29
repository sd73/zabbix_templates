    "The encapsulation method used by a tunnel. The value
            direct indicates that a packet is encapsulated
            directly within a normal IP header, with no
            intermediate header, and unicast to the remote tunnel
            endpoint (e.g., an RFC 2003 IP-in-IP tunnel, or an RFC
            1933 IPv6-in-IPv4 tunnel). The value minimal indicates
            that a Minimal Forwarding Header (RFC 2004) is
            inserted between the outer header and the payload
            packet. The value UDP indicates that the payload
            packet is encapsulated within a normal UDP packet
            (e.g., RFC 1234).

            The values sixToFour, sixOverFour, and isatap
            indicates that an IPv6 packet is encapsulated directly
            within an IPv4 header, with no intermediate header,
            and unicast to the destination determined by the 6to4,
            6over4, or ISATAP protocol.

            The remaining protocol-specific values indicate that a
            header of the protocol of that name is inserted
            between the outer header and the payload header.

            The assignment policy for IANAtunnelType values is
            identical to the policy for assigning IANAifType
            values."              -"This data type is used as the syntax of the ifType
               object in the (updated) definition of MIB-II's
               ifTable.

               The definition of this textual convention with the
               addition of newly assigned values is published
               periodically by the IANA, in either the Assigned
               Numbers RFC, or some derivative of it specific to
               Internet Network Management number assignments.  (The
               latest arrangements can be obtained by contacting the
               IANA.)

               Requests for new values should be made to IANA via
               email (iana&amp;iana.org).

               The relationship between the assignment of ifType
               values and of OIDs to particular media-specific MIBs
               is solely the purview of IANA and is subject to change
               without notice.  Quite often, a media-specific MIB's
               OID-subtree assignment within MIB-II's 'transmission'
               subtree will be the same as its ifType value.
               However, in some circumstances this will not be the
               case, and implementors must not pre-assume any
               specific relationship between ifType values and
               transmission subtree OIDs."                                         �"This MIB module defines the IANAifType Textual
                     Convention, and thus the enumerated values of
                     the ifType object defined in MIB-II's ifTable."&"        Internet Assigned Numbers Authority

                     Postal: ICANN
                             4676 Admiralty Way, Suite 330
                             Marina del Rey, CA 90292

                     Tel:    +1 310 823 9358
                     E-Mail: iana&amp;iana.org" "201201110000Z" "201112180000Z" "201110260000Z" "201109070000Z" "201107220000Z" "201106030000Z" "201009210000Z" "201007210000Z" "201002110000Z" "201002080000Z" "200905060000Z" "200902060000Z" "200810090000Z" "200808120000Z" "200807220000Z" "200806240000Z" "200805290000Z" "200709130000Z" "200705290000Z" "200703080000Z" "200701230000Z" "200610170000Z" "200609250000Z" "200608170000Z" "200608110000Z" "200607250000Z" "200606140000Z" "200603310000Z" "200603300000Z" "200512220000Z" "200510100000Z" "200509090000Z" "200505270000Z" "200503030000Z" "200411220000Z" "200406170000Z" "200405120000Z" "200405070000Z" "200308250000Z" "200308180000Z" "200308070000Z" "200303180000Z" "200301130000Z" "200210170000Z" "200207160000Z" "200207100000Z" "200206190000Z" "200201040000Z" "200112200000Z" "200111150000Z" "200111060000Z" "200111020000Z" "200110160000Z" "200109190000Z" "200105110000Z" "200101120000Z" "200012190000Z" "200012070000Z" "200012040000Z" "200010170000Z" "200010020000Z" "200009010000Z" "200008240000Z" "200008230000Z" "200008220000Z" "200004250000Z" "200003060000Z" "199910081430Z" "199401310000Z" *"Registration of new IANAifTypes 266-271." *"Registration of new IANAifTypes 263-265." %"Registration of new IANAifType 262." ."Registration of new IANAifTypes 260 and 261." %"Registration of new IANAifType 259." %"Registration of new IANAifType 258." ."Registration of new IANAifTypes 256 and 257." %"Registration of new IANAifType 255." %"Registration of new IANAifType 254." ."Registration of new IANAifTypes 252 and 253." %"Registration of new IANAifType 251." ("Registration of new IANAtunnelType 15." %"Registration of new IANAifType 250." %"Registration of new IANAifType 249." ."Registration of new IANAifTypes 247 and 248." %"Registration of new IANAifType 246." %"Registration of new IANAifType 245." ."Registration of new IANAifTypes 243 and 244." -"Changed the description for IANAifType 228." %"Registration of new IANAifType 242." 4"Registration of new IANAifTypes 239, 240, and 241." ]"Deprecated/Obsoleted IANAifType 230.  Registration of
                     IANAifType 238." b"Changed the description for IANA ifType
                     184 and added new IANA ifType 237." K"Changed the descriptions for IANAifTypes
                     20 and 21." X"Changed the descriptions for IANAifTypes
                     7, 11, 62, 69, and 117." &"Registration of new IANA ifType 236." &"Registration of new IANA ifType 235." &"Registration of new IANA ifType 234." &"Registration of new IANA ifType 233." /"Registration of new IANA ifTypes 231 and 232." &"Registration of new IANA ifType 230." &"Registration of new IANA ifType 229." &"Registration of new IANA ifType 228." n"Added the IANAtunnelType TC and deprecated
                         IANAifType sixToFour (215) per RFC4087." 2"Registration of new IANA ifType 227 per RFC4631." &"Registration of new IANA ifType 226." �"Added description for IANAifType 6, and
                         changed the descriptions for IANAifTypes
                     180, 181, and 182." %"Registration of new IANAifType 225." �"Deprecated IANAifTypes 7 and 11. Obsoleted
                     IANAifTypes 62, 69, and 117.  ethernetCsmacd (6)
                     should be used instead of these values" ;"Registration of new IANAifType
                     224." D"Registration of new IANAifTypes
                     222 and 223." ;"Registration of new IANAifType
                     221." ;"Registration of new IANAifType
                     220." ;"Registration of new IANAifType
                     219." D"Registration of new IANAifTypes
                     217 and 218." D"Registration of new IANAifTypes
                     215 and 216." ;"Registration of new IANAifType
                     214." I"Registration of new IANAifTypes
                     211, 212 and 213." D"Registration of new IANAifTypes
                     209 and 210." D"Registration of new IANAifTypes
                     207 and 208." ;"Registration of new IANAifType
                     206." ;"Registration of new IANAifType
                     205." Y"Registration of new IANAifTypes
                     199, 200, 201, 202, 203, and 204." ;"Registration of new IANAifType
                     198." ;"Registration of new IANAifType
                     197." D"Registration of new IANAifTypes
                     195 and 196." D"Registration of new IANAifTypes
                     193 and 194." D"Registration of new IANAifTypes
                     191 and 192." ;"Registration of new IANAifType
                     190." D"Registration of new IANAifTypes
                     188 and 189." %"Registration of new IANAifType 187." J"Registration of new IANAifTypes
                     184, 185, and 186." %"Registration of new IANAifType 183." @"Registration of new IANAifTypes
                     174-182." N"Registration of new IANAifTypes 170,
                     171, 172 and 173." ."Registration of new IANAifTypes 168 and 169.""Fixed a missing semi-colon in the IMPORT.
                     Also cleaned up the REVISION log a bit.
                     It is not complete, but from now on it will
                     be maintained and kept up to date with each
                     change to this MIB module." �"Include new name assignments up to cnr(85).
                     This is the first version available via the WWW
                     at: ftp://ftp.isi.edu/mib/ianaiftype.mib" M"Initial version of this MIB as published in
                     RFC 1573."       -- January 11, 2012
          