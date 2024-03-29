    Z"The definition of this textual convention with the
          addition of newly assigned values is published
          periodically by the IANA, in either the Assigned
          Numbers RFC, or some derivative of it specific to
          Internet Network Management number assignments.
          (The latest arrangements can be obtained by
          contacting the IANA.)

          The enumerations are described as:

          other(0),    -- none of the following
          ipV4(1),     -- IP Version 4
          ipV6(2),     -- IP Version 6
          nsap(3),     -- NSAP
          hdlc(4),     -- (8-bit multidrop)
          bbn1822(5),
          all802(6),   -- (includes all 802 media
                       --   plus Ethernet 'canonical format')
          e163(7),
          e164(8),     -- (SMDS, Frame Relay, ATM)
          f69(9),      -- (Telex)
          x121(10),    -- (X.25, Frame Relay)
          ipx(11),     -- IPX (Internet Protocol Exchange)
          appleTalk(12),  -- Apple Talk
          decnetIV(13),   -- DEC Net Phase IV
          banyanVines(14),  -- Banyan Vines
          e164withNsap(15),
                       -- (E.164 with NSAP format subaddress)
          dns(16),     -- (Domain Name System)
          distinguishedName(17), -- (Distinguished Name, per X.500)
          asNumber(18), -- (16-bit quantity, per the AS number space)
          xtpOverIpv4(19),  -- XTP over IP version 4
          xtpOverIpv6(20),  -- XTP over IP version 6
          xtpNativeModeXTP(21),  -- XTP native mode XTP
          fibreChannelWWPN(22),  -- Fibre Channel World-Wide Port Name
          fibreChannelWWNN(23),  -- Fibre Channel World-Wide Node Name
          gwid(24),    -- Gateway Identifier
          reserved(65535)



          Requests for new values should be made to IANA via
          email (iana@iana.org)."                                         P"The MIB module defines the AddressFamilyNumbers
          textual convention."^"Postal:    Internet Assigned Numbers Authority
                      Internet Corporation for Assigned Names
                      and Numbers
                      4676 Admiralty Way, Suite 330
                      Marina del Rey, CA 90292-6601
                      USA

          Tel:    +1  310-823-9358
          E-Mail: iana@iana.org" "200203140000Z" "200009080000Z" "200003010000Z" "200002040000Z" "9908260000Z" �"AddressFamilyNumbers assignment 22 to
                   fibreChannelWWPN. AddressFamilyNumbers
                   assignment 23 to fibreChannelWWNN.
                   AddressFamilyNumers assignment 24 to gwid." �"AddressFamilyNumbers assignment 19 to xtpOverIpv4.
                   AddressFamilyNumbers assignment 20 to xtpOverIpv6.
                   AddressFamilyNumbers assignment 21 to xtpNativeModeXTP." ~"AddressFamilyNumbers assignment 17 to distinguishedName.
                   AddressFamilyNumbers assignment 18 to asNumber." ,"AddressFamilyNumbers assignment 16 to dns." )"Initial version, published as RFC 2677."       -- March 14, 2002
          