   !"[IEEE802.3], Section 30.6.1.1.5"�"This data type is used as the syntax of the
    ifMauAutoNegCapabilityBits, ifMauAutoNegCapAdvertisedBits, and
    ifMauAutoNegCapReceivedBits objects in the (updated) definition
    of MAU-MIB's ifMauAutoNegTable.

    The most recent version of this textual convention is available
    in the online version of this MIB module on the IANA web site.

    Requests for new values should be made to IANA via email
    (iana&iana.org)."              �"Common enumeration values for repeater and interface MAU
    jack types.  This data type is used as the syntax of the
    ifJackType and rpJackType objects in the (updated) definition
    of MAU-MIB's ifJackTable and rpJackTable respectively.

    Possible values are:
         other(1)          - undefined or unknown
         rj45(2)           - RJ45
         rj45S(3)          - RJ45 shielded
         db9(4)            - DB9
         bnc(5)            - BNC
         fAUI(6)           - AUI female
         mAUI(7)           - AUI male
         fiberSC(8)        - SC fiber
         fiberMIC(9)       - MIC fiber
         fiberST(10)       - ST fiber
         telco(11)         - Telco
         mtrj(12)          - MT-RJ fiber
         hssdc(13)         - fiber channel style-2
         fiberLC(14)       - LC fiber
         cx4(15)           - IB4X for 10GBASE-CX4
         sfpPlusDA(16)     - SFP+ Direct Attach for 10GE

    The most recent version of this textual convention is available
    in the online version of this MIB module on the IANA web site.

    Requests for new values should be made to IANA via email
    (iana&iana.org)."             !"[IEEE802.3], Section 30.5.1.1.2"�"This data type is used as the syntax of the ifMauTypeListBits
    object in the (updated) definition of MAU-MIB's ifMauTable.

    The most recent version of this textual convention is available
    in the online version of this MIB module on the IANA web site.

    Requests for new values should be made to IANA via email
    (iana&iana.org).

    Note that changes in this textual convention SHALL be
    synchronized with relevant changes in the dot3MauType
    OBJECT-IDENTITIES."             !"[IEEE802.3], Section 30.5.1.1.4"C"This data type is used as the syntax of the
    ifMauMediaAvailable and rpMauMediaAvailable objects in the
    (updated) definition of MAU-MIB's ifMauTable and rpMauTable
    respectively.

    Possible values are:
      other(1)             - undefined (not listed below)
      unknown(2)           - MAU's true state is unknown; e.g.,
                             during initialization
      available(3)         - link, light, or loopback is normal
      notAvailable(4)      - link loss, low light, or no loopback
      remoteFault(5)       - a fault has been detected at the
                             remote end of the link.  This value
                             applies to 10BASE-FB, 100BASE-T4 Far
                             End Fault Indication and non-specified
                             remote faults from a system running
                             auto-negotiation
      invalidSignal(6)     - invalid signal has been received from
                             the other end of the link, 10BASE-FB
                             only
      remoteJabber(7)      - remote fault, due to jabber

      remoteLinkLoss(8)    - remote fault, due to link loss
      remoteTest(9)        - remote fault, due to test
      offline(10)          - offline, Clause 37 Auto-Negotiation
                             only
      autoNegError(11)     - Auto-Negotiation Error, Clause 37
                             Auto-Negotiation only
      pmdLinkFault(12)     - PMA/PMD receive link fault.  In case
                             of PAF (2BASE-TL / 10PASS-TS PHYs),
                             all PMEs in the aggregation group have
                             detected a link fault
      wisFrameLoss(13)     - WIS loss of frame, 10GBASE-W only
      wisSignalLoss(14)    - WIS loss of signal, 10GBASE-W only
      pcsLinkFault(15)     - PCS receive link fault
      excessiveBER(16)     - PCS Bit Error Ratio monitor
                             reporting excessive error ratio
      dxsLinkFault(17)     - DTE XGXS receive link fault, XAUI only
      pxsLinkFault(18)     - PHY XGXS receive link fault, XAUI only
      availableReduced(19) - link normal, reduced bandwidth,
                             2BASE-TL / 10PASS-TS only
      ready(20)            - at least one PME in the aggregation
                             group is detecting handshake tones,
                             2BASE-TL / 10PASS-TS only

    If the MAU is a 10M b/s link or fiber type (FOIRL, 10BASE-T,
    10BASE-F), then this is equivalent to the link test fail
    state/low light function.  For an AUI, 10BASE2, 10BASE5, or
    10BROAD36 MAU, this indicates whether loopback is detected on
    the DI circuit.  The value of this attribute persists between
    packets for MAU types AUI, 10BASE5, 10BASE2, 10BROAD36, and
    10BASEFP.

    At power-up or following a reset, the Media Available state
    will be unknown(2) for AUI, 10BASE5, 10BASE2, 10BROAD36, and
    10BASE-FP MAUs.  For these MAUs loopback will be tested on each
    transmission during which no collision is detected.
    If DI is receiving input when DO returns to IDL after a
    transmission and there has been no collision during the
    transmission, then loopback will be detected.  The Media
    Available state will only change during noncollided
    transmissions for AUI, 10BASE2, 10BASE5, 10BROAD36, and
    10BASE-FP MAUs.

    For 100BASE-T2, 100BASE-T4, 100BASE-TX, 100BASE-FX,
    100BASE-LX10, and 100BASE-BX10 PHYs the enumerations match the
    states within the link integrity state diagram.
    Any MAU that implements management of [IEEE802.3] Clause
    28 Auto-Negotiation, will map remote fault indication to
    remoteFault(5).

    Any MAU that implements management of Clause 37
    Auto-Negotiation, will map the received RF1 and RF2 bits as
    follows: Offline maps to offline(10), Link_Failure maps to
    remoteFault(5), and Auto-Negotiation Error maps to
    autoNegError(11).

    The value remoteFault(5) applies to 10BASE-FB remote
    fault indication, the 100BASE-X far-end fault indication, and
    nonspecified remote faults from a system running Clause 28
    Auto-Negotiation.

    The value remoteJabber(7), remoteLink loss(8), or remoteTest(9)
    SHOULD be used instead of remoteFault(5) where the reason for
    remote fault is identified in the remote signaling protocol.
    Where a Clause 22 MII or Clause 35 GMII is present, a logic
    one in the remote fault bit maps to the value remoteFault(5),
    a logic zero in the link status bit maps to the enumeration
    notAvailable(4).  The value notAvailable(4) takes precedence
    over remoteFault(5).

    For 2BASE-TL and 10PASS-TS PHYs, the value unknown(2) maps to
    the condition where the PHY (PCS with connected PMEs) is
    initializing, the value ready(20) maps to the condition where
    the interface is down and at least one PME in the aggregation
    group is ready for handshake, the value available(3) maps to
    the condition where all the PMEs in the aggregation group are
    up, the value notAvailable(4) maps to the condition where all
    the PMEs in the aggregation group are down and no handshake
    tones are detected, the value availableReduced(19) maps to the
    condition where the interface is up, a link fault is detected
    at the receive direction by one or more PMEs in the
    aggregation group, but at least one PME is up and the
    enumeration pmdLinkFault(12) maps to the condition where a link
    fault is detected at the receive direction by all of the PMEs
    in the aggregation group.

    For 10 Gb/s the enumerations map to value of the link_fault
    variable within the Link Fault Signaling state diagram
    as follows: the value OK maps to the value available(3),
    the value Local Fault maps to the value notAvailable(4),
    and the value Remote Fault maps to the value remoteFault(5).
    The value pmdLinkFault(12), wisFrameLoss(13),
    wisSignalLoss(14), pcsLinkFault(15), excessiveBER(16), or
    dxsLinkFault(17) SHOULD be used instead of the value
    notAvailable(4), where the reason for the Local Fault state can
    be identified through the use of the Clause 45 MDIO Interface.
    Where multiple reasons for the Local Fault state can be
    identified, only the highest precedence error SHOULD be

    reported.  This precedence in descending order is as follows:

      pxsLinkFault
      pmdLinkFault
      wisFrameLoss
      wisSignalLoss
      pcsLinkFault
      excessiveBER
      dxsLinkFault.

    Where a Clause 45 MDIO interface is present a logic zero in
    the PMA/PMD Receive link status bit ([IEEE802.3]
    Section 45.2.1.2.2) maps to the value pmdLinkFault(12),
    logic one in the LOF status bit (Section 45.2.2.10.4) maps
    to the value wisFrameLoss(13), a logic one in the LOS
    status bit (Section 45.2.2.10.5) maps to the value
    wisSignalLoss, a logic zero in the PCS Receive
    link status bit (Section 45.2.3.2.2) maps to the value
    pcsLinkFault(15), a logic one in the 10GBASE-R PCS Latched
    high BER status bit (Section 45.2.3.12.2) maps to the value
    excessiveBER, a logic zero in the DTE XS receive link status
    bit (Section 45.2.5.2.2) maps to the value dxsLinkFault(17)
    and a logic zero in the PHY XS transmit link status bit
    (Section 45.2.4.2.2) maps to the value pxsLinkFault(18).

    The most recent version of this textual convention is available
    in the online version of this MIB module on the IANA web site.

    Requests for new values should be made to IANA via email
    (iana&iana.org)."                                        6"This MIB module defines dot3MauType OBJECT-IDENTITIES and
    IANAifMauListBits, IANAifMauMediaAvailable,
    IANAifMauAutoNegCapBits, and IANAifJackType

    TEXTUAL-CONVENTIONs, specifying enumerated values of the
    ifMauTypeListBits, ifMauMediaAvailable / rpMauMediaAvailable,
    ifMauAutoNegCapabilityBits / ifMauAutoNegCapAdvertisedBits /
    ifMauAutoNegCapReceivedBits and ifJackType / rpJackType objects
    respectively, defined in the MAU-MIB.

    It is intended that each new MAU type, Media Availability
    state, Auto Negotiation capability and/or Jack type defined by
    the IEEE 802.3 working group and approved for publication in a
    revision of IEEE Std 802.3 will be added to this MIB module,
    provided that it is suitable for being managed by the base
    objects in the MAU-MIB.  An Expert Review, as defined in
    RFC 2434 [RFC2434], is REQUIRED for such additions.

    The following reference is used throughout this MIB module:

    [IEEE802.3] refers to:
       IEEE Std 802.3, 2005 Edition: 'IEEE Standard for
       Information technology - Telecommunications and information
       exchange between systems - Local and metropolitan area
       networks - Specific requirements -
       Part 3: Carrier sense multiple access with collision
       detection (CSMA/CD) access method and physical layer
       specifications'.

    This reference should be updated as appropriate when new
    MAU types, Media Availability states, Auto Negotiation
    capabilities, and/or Jack types are added to this MIB module.

    Copyright (C) The IETF Trust (2007).
    The initial version of this MIB module was published in
    RFC 4836; for full legal notices see the RFC itself.
    Supplementary information may be available at:
    http://www.ietf.org/copyrights/ianamib.html""        Internet Assigned Numbers Authority

                Postal: ICANN
                        12025 Waterfront Drive, Suite 300
                        Los Angeles, CA 90094-2536

                   Tel: +1-310-301-5800
                 EMail: iana&iana.org" "201408010000Z" "201405220000Z" "201108120000Z" "201002230000Z" "200704210000Z" "Added IANAifJackType 16." "Updated contact info." �"Added MAU types and associated AutoNeg capability 
                bits specified in amendments to IEEE Std 
                802.3-2008: IEEE Std 802.3ba-2010 and IEEE Std 
                802.3bg-2011." Z"Added assignments that will be included in 
                Clause 14 of IEEE P802.3.1." H"Initial version of this MIB as published in
                RFC 4836."       -- August 1, 2014
                "no internal MAU, view from AUI" "[IEEE802.3], Section 7"             "thick coax MAU" "[IEEE802.3], Section 7"             "FOIRL MAU" "[IEEE802.3], Section 9.9"             "thin coax MAU" "[IEEE802.3], Section 10"            c"UTP MAU.
              Note that it is strongly recommended that
              agents return either dot3MauType10BaseTHD or
              dot3MauType10BaseTFD if the duplex mode is
              known.  However, management applications should
              be prepared to receive this MAU type value from
              older agent implementations." "[IEEE802.3], Section 14"             "passive fiber MAU" "[IEEE802.3], Section 16"             "sync fiber MAU" "[IEEE802.3], Section 17"            m"async fiber MAU.
              Note that it is strongly recommended that
              agents return either dot3MauType10BaseFLHD or
              dot3MauType10BaseFLFD if the duplex mode is
              known.  However, management applications should
              be prepared to receive this MAU type value from
              older agent implementations." "[IEEE802.3], Section 18"             "broadband DTE MAU.
              Note that 10BROAD36 MAUs can be attached to
              interfaces but not to repeaters." "[IEEE802.3], Section 11"             "UTP MAU, half duplex mode" "[IEEE802.3], Section 14"             "UTP MAU, full duplex mode" "[IEEE802.3], Section 14"             #"async fiber MAU, half duplex mode" "[IEEE802.3], Section 18"             #"async fiber MAU, full duplex mode" "[IEEE802.3], Section 18"             "4 pair category 3 UTP" "[IEEE802.3], Section 23"             )"2 pair category 5 UTP, half duplex mode" "[IEEE802.3], Section 25"             )"2 pair category 5 UTP, full duplex mode" "[IEEE802.3], Section 25"             $"X fiber over PMT, half duplex mode" "[IEEE802.3], Section 26"             $"X fiber over PMT, full duplex mode" "[IEEE802.3], Section 26"             )"2 pair category 3 UTP, half duplex mode" "[IEEE802.3], Section 32"             )"2 pair category 3 UTP, full duplex mode" "[IEEE802.3], Section 32"             ("PCS/PMA, unknown PMD, half duplex mode" "[IEEE802.3], Section 36"             ("PCS/PMA, unknown PMD, full duplex mode" "[IEEE802.3], Section 36"             C"Fiber over long-wavelength laser, half duplex
              mode" "[IEEE802.3], Section 38"             C"Fiber over long-wavelength laser, full duplex
              mode" "[IEEE802.3], Section 38"             D"Fiber over short-wavelength laser, half
              duplex mode" "[IEEE802.3], Section 38"             D"Fiber over short-wavelength laser, full
              duplex mode" "[IEEE802.3], Section 38"             E"Copper over 150-Ohm balanced cable, half
              duplex mode" "[IEEE802.3], Section 39"             G"Copper over 150-Ohm balanced cable, full

              duplex mode" "[IEEE802.3], Section 39"             ,"Four-pair Category 5 UTP, half duplex mode" "[IEEE802.3], Section 40"             ,"Four-pair Category 5 UTP, full duplex mode" "[IEEE802.3], Section 40"             "X PCS/PMA, unknown PMD." "[IEEE802.3], Section 48"             "X fiber over WWDM optics" "[IEEE802.3], Section 53"             "R PCS/PMA, unknown PMD." "[IEEE802.3], Section 49"             "R fiber over 1550 nm optics" "[IEEE802.3], Section 52"             "R fiber over 1310 nm optics" "[IEEE802.3], Section 52"             "R fiber over 850 nm optics" "[IEEE802.3], Section 52"             "W PCS/PMA, unknown PMD."  "[IEEE802.3], Section 49 and 50"             "W fiber over 1550 nm optics" "[IEEE802.3], Section 52"             "W fiber over 1310 nm optics" "[IEEE802.3], Section 52"             "W fiber over 850 nm optics" "[IEEE802.3], Section 52"             -"X copper over 8 pair 100-Ohm balanced cable" "[IEEE802.3], Section 54"             3"Voice grade UTP copper, up to 2700m, optional PAF" !"[IEEE802.3], Sections 61 and 63"             2"Voice grade UTP copper, up to 750m, optional PAF" !"[IEEE802.3], Sections 61 and 62"             2"One single-mode fiber OLT, long wavelength, 10km" "[IEEE802.3], Section 58"             2"One single-mode fiber ONU, long wavelength, 10km" "[IEEE802.3], Section 58"             /"Two single-mode fibers, long wavelength, 10km" "[IEEE802.3], Section 58"             2"One single-mode fiber OLT, long wavelength, 10km" "[IEEE802.3], Section 59"             2"One single-mode fiber ONU, long wavelength, 10km" "[IEEE802.3], Section 59"             -"Two sigle-mode fiber, long wavelength, 10km" "[IEEE802.3], Section 59"             &"One single-mode fiber EPON OLT, 10km" "[IEEE802.3], Section 60"             &"One single-mode fiber EPON ONU, 10km" "[IEEE802.3], Section 60"             &"One single-mode fiber EPON OLT, 20km" "[IEEE802.3], Section 60"             &"One single-mode fiber EPON ONU, 20km" "[IEEE802.3], Section 60"             8"Four-pair Category 6A or better, full duplex mode only" "IEEE Std 802.3, Clause 55"             '"R multimode fiber over 1310 nm optics" "IEEE Std 802.3, Clause 68"             $"X backplane, full duplex mode only" "IEEE Std 802.3, Clause 70"             +"4 lane X backplane, full duplex mode only" "IEEE Std 802.3, Clause 71"             $"R backplane, full duplex mode only" "IEEE Std 802.3, Clause 72"             e"One single-mode fiber asymmetric-rate EPON OLT, supporting low
               power budget (PRX10)" "IEEE Std 802.3, Clause 75"             g"One single-mode fiber asymmetric-rate EPON OLT, supporting
              medium power budget (PRX20)" "IEEE Std 802.3, Clause 75"             e"One single-mode fiber asymmetric-rate EPON OLT, supporting high
              power budget (PRX30)" "IEEE Std 802.3, Clause 75"             d"One single-mode fiber asymmetric-rate EPON ONU, supporting low
              power budget (PRX10)" "IEEE Std 802.3, Clause 75"             g"One single-mode fiber asymmetric-rate EPON ONU, supporting
              medium power budget (PRX20)" "IEEE Std 802.3, Clause 75"             e"One single-mode fiber asymmetric-rate EPON ONU, supporting high
              power budget (PRX30)" "IEEE Std 802.3, Clause 75"             b"One single-mode fiber symmetric-rate EPON OLT, supporting low
              power budget (PR10)" "IEEE Std 802.3, Clause 75"             e"One single-mode fiber symmetric-rate EPON OLT, supporting
              medium power budget (PR20)" "IEEE Std 802.3, Clause 75"             c"One single-mode fiber symmetric-rate EPON OLT, supporting high
              power budget (PR30)" "IEEE Std 802.3, Clause 75"             v"One single-mode fiber symmetric-rate EPON ONU, supporting
              low and medium power budget (PR10 and PR20)" "IEEE Std 802.3, Clause 75"             c"One single-mode fiber symmetric-rate EPON ONU, supporting high
              power budget (PR30)" "IEEE Std 802.3, Clause 75"             C"40GBASE-R PCS/PMA over an electrical 
                 backplane" "IEEE Std 802.3, Clause 84"             Q"40GBASE-R PCS/PMA over 4 lane shielded 
                 copper balanced cable" "IEEE Std 802.3, Clause 85"             B"40GBASE-R PCS/PMA over 4 lane multimode 
                 fiber" "IEEE Std 802.3, Clause 86"             ="40GBASE-R PCS/PMA over single mode 
                 fiber" "IEEE Std 802.3, Clause 89"             H"40GBASE-R PCS/PMA over 4 WDM lane 
                 single mode fiber" "IEEE Std 802.3, Clause 87"             S"100GBASE-R PCS/PMA over 10 lane 
                 shielded copper balanced cable" "IEEE Std 802.3, Clause 85"             D"100GBASE-R PCS/PMA over 10 lane 
                 multimode fiber" "IEEE Std 802.3, Clause 86"             U"100GBASE-R PCS/PMA over 4 WDM lane 
                 single mode fiber, long reach" "IEEE Std 802.3, Clause 88"             ]"100GBASE-R PCS/PMA over 4 WDM lane 
                 single mode fiber PMD, extended reach" "IEEE Std 802.3, Clause 88"                