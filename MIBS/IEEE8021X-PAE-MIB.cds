 �-- *********************************************************************
--   
-- IEEE8021X-PAE-MIB : MIB for IEEE 802.1X (802.1X-2010 + 802.1Xbx)
--   
-- *********************************************************************
 "IEEE 802.1X Clause 9.4.2"�"This textual convention indicates a Member Number (MN).

        The MN is a 32-bit value which begins at 1 and increases for
        each MKPDU transmitted.  It is used with the MI to protect
        against replay attacks and to record liveliness in the Live
        Peers List or potential liveliness in the Potential Peer List.
        If the MN wraps, a new random MI value is chosen and the MN
        begins again at a value of 1."             %"IEEE 802.1X Clause 10.1, Table 11-8""This textual convention indicates the access capabilities of
        the port's clients without authentication.

        'noAccess' : Other than to authentication services (see
            Ieee8021XPaeNIDCapabilites information.

        'fallbackAccess' : Limited access can be provided after
            authentication failure.

        'limitedAccess' : Immediate limited access is available
            without authentication.

        'openAccess' : Immediate access is available without
            authentication."             "IEEE 802.1X Clause 9.4.2"�"This textual convention indicates a Member Identifier (MI).

        The MI is a 96-bit random value chosen when the MKA Instance
        begins, used with a 32-bit MN to protect against replay attacks
        and to record liveliness in the Live Peer List or potential
        liveliness in the Potential Peer List. If the MN wraps, a new
        random MI value is chosen and the MN begins again at 1."             2"IEEE 802.1AE Clause 7.1.2, 10.7.1 and figure 7.7"w"This textual convention indicates a Secure Channel
         Identifier (SCI).
         
         Each SC is identified by an SCI, comprised of a unique 48-bit
         Universally Administered MAC Address, identifying the system
         to which the transmitting SecY belongs, concatenated with a
         16-bit Port number, identifying the SecY within that system."             2"IEEE 802.1X Clause 5.4, Clause 9.3.1, Clause 6.2" �"This textual convention indicates the CAK name to identify
        the Connectivity Association Key (CAK) which is the root key
        in the MACsec Key Agreement key hierarchy.  All potential
        members of the CA use the same CKN."             #"IEEE 802.1X Clause 9.5, Table 9-2""This textual convention indicates a Key Server priority
        information.

        Each MKA participant encodes a Key Server Priority, an 8-bit
        integer, in each MKPDU.  Each participant selects the live
        participant advertising the highest priority as its Key Server
        provided that participant has not selected another as its Key
        Server or is unwilling to act as the Key Server.  If a Key
        Server cannot be selected SAKs are not distributed.  In the
        event of a tie for highest priority Key Server, the member with
        the highest priority SCI is chosen.  For consistency with other
        uses of the SCI's MAC Address component as a priority,
        numerically lower values of the Key Server Priority and SCI are
        accorded the highest priority.  The Table 9-2 contains
        recommendations for the use of priority values for various
        system roles. Participants that will never act as a Key Server
        should advertise priority 0xFF."             %"IEEE 802.1X Clause 10.1, Table 11-8" �"This textual convention indicates the combinations of
        authentication and protection capabilities supported for a
        NID. Any set of these combinations can be supported."             %"IEEE 802.1X Clause 10.1, Table 11-8"�"This textual convention indicates the transmitter's
        Controlled Port operational status and current level of
        access resulting from authentication and the consequent
        authorization controls applied by that port's clients.

        'noAccess' : Other than to authentication services, and to
            services announced as available in the absence of
            authentication (unauthenticated).

        'remedialAccess' : The access granted is severely limited,
            possibly to remedial services.

        'restrictedAccess' : The Controlled Port is operational, but
            restrictions have been applied by the network that can
            limit access to some resources.

        'expectedAccess' : The Controlled Port is operational, and
            access provided is as expected for successful
            authentication and authorization for the NID."             &"IEEE 802.1X Clause 12.6, Clause 10.1"1"This textual convention indicates a Network Identifier (NID).

        Each network is identified by a NID, a UTF-8 string used by
        network attached systems to select a network profile.

        If this is a zero length value, then the NULL string for
        NID information is applicable."             "IEEE 802.1X Clause 9.8" �"This textual convention indicates a Key Number (KN) used in
        MKA.

        The MN is a 32-bit integer assigned by that Key Server
        (sequentially, beginning with 1)."             "IEEE 802.1X Clause 12.6" �"This textual convention indicates a Key Management Domain
        (KMD).

        KMD is a string of UTF-8 characters that names the transmitting
        authenticator's key management domain."             &"IEEE 802.1X Clause 12.6, Clause 10.1" �"This textual convention indicates a Network Identifier (NID).

        Each network is identified by a NID, a UTF-8 string used by
        network attached systems to select a network profile."             2"IEEE 802.1X Clause 5.4, Clause 9.3.1, Clause 6.2"`"This textual convention indicates the CAK name to identify
        the Connectivity Association Key (CAK) which is the root key
        in the MACsec Key Agreement key hierarchy.  All potential
        members of the CA use the same CKN.

        If this is a zero length value, then the NULL string means
        CKN information is applicable."                                                                                                                                            $�"The MIB module for managing the Port Access Entity (PAE)
        functions of IEEE 802.1X (Revision of 802.1X-2004).
        The PAE functions managed are summarized in Figure 12-3 of
        IEEE 802.1X and include EAPOL PACP support for authentication
        (EAP Supplicant and/or Authenticator), MACsec Key Agreement
        (MKA), EAPOL, and transmission and reception of network
        announcements.

        The following acronyms and definitions are used in this MIB.

        AN : Association Number, a number that is concatenated with a
            MACsec Secure Channel Identifier to identify a Secure
            Association (SA).

        Announcer : EAPOL-Announcement transmission functionality.

        Authenticator : An entity that facilitates authentication of
            other entities attached to the same LAN.

        CA : secure Connectivity Association: A security relationship,
            established and maintained by key agreement protocols, that
            comprises a fully connected subset of the service access
            points in stations attached to a single LAN that are to be
            supported by MACsec.

        CAK : secure Connectivity Association Key, a secret key
            possessed by members of a given CA.

        CKN : secure Connectivity Association Key Name (CKN), a text
            that identifies a CAK.

        Common Port : An instance of the MAC Internal Sublayer Service
            used by the SecY or PAC to provide transmission and
            reception of frames for both the Controlled and
            Uncontrolled Ports.

        Controlled Port : The access point used to provide the secure
            MAC Service to a client of a PAC or SecY.

        CP state machine : Controlled Port state machine is capable of
            controlling a SecY or a PAC.  The CP supports
            interoperability with unauthenticated systems that are not
            port-based network access control capable, or that lack 
            MKA.  When the access controlled port is supported by a
            SecY, the CP is capable of controlling the SecY so as to
            provide unsecured connectivity to systems that implement a
            PAC.

        EAP : Extensible Authentication Protocol, RFC3748.

        EAPOL : EAP over LANs.

        KaY : Key Agreement Entity, a PAE entity responsible for MKA.

        Key Server : Elected by MKA, to transport a succession of SAKs,
            for use by MACsec, to the other member(s) of a CA.

        KMD : Key Management Domain, a string identifying systems that
             share cached CAKs.

        Listener : The role is to receive the network announcement
            parameters in the authentication process.

        Logon Process : The Logon Process is responsible for the
            managing the use of authentication credentials, for
            initiating use of the PAE's Supplicant and or Authenticator
            functionality, for deriving CAK, CKN tuples from PAE
            results, for maintaining PSKs (Pre-Sharing Keys), and for
            managing MKA instances.  In the absence of successful
            authentication, key agreement, or support for MAC Security,
            the Logon Process determines whether the CP state machine
            should provide unauthenticated connectivity or
            authenticated but unsecured connectivity.

        MKA : MACsec Key Agreement protocol allows PAEs, each
            associated with a port that is an authenticated member of a
            secure connectivity association (CA) or a potential CA, to
            discover other PAEs attached to the same LAN, to confirm
            mutual possession of a CAK and hence to prove a past mutual
            authentication, to agree the secret keys (SAKs) used by
            MACsec for symmetric shared key cryptography, and to ensure
            that the data protected by MACsec has not been delayed.

        MKPDU : MACsec Key Agreement Protocol Data Unit.

        MPDU : MAC Protocol Data Unit.

        NID : Network Identity, a UTF-8 string identifying an network
             or network service.

        PAE : Port Access Entity, the protocol entity associated with a
             Port.  It can support the protocol functionality
             associated with the Authenticator, the Supplicant, or
             both.

        PAC : Port Access Controller, a protocol-less shim that
             provides control over frame transmission and reception by
             clients attached to its Controlled Port, and uses the MAC
             Service provided by a Common Port.  The access control
             decision is made by the PAE, typically taking into
             account the success or failure of mutual authentication
             and authorization of the PAE's peer(s), and is
             communicated by the PAE using the LMI to set the PAC's
             Controlled Port enabled/disable.  Two different interfaces
             'Controlled Port' and 'Uncontrolled Port', are associated
             with a PAC, and that for each instance of a PAC, two
             ifTable rows (one for each interface) run on top of an
             ifTable row representing the 'Common Port' interface,
             such as a row with ifType = 'ethernetCsmacd(6)'.

             For example :
            -----------------------------------------------------------
            |                            |                            |
            |   Controlled Port          |   Uncontrolled Port        |
            |      Interface             |      Interface             |
            |    (ifEntry = j)           |     (ifEntry = k)          |
            | (ifType =                  | (ifType =                  |
            |  macSecControlledIF(231))  |  macSecUncontrolledIF(232))|
            |                            |                            |
            |---------------------------------------------------------|
            |                                                         |
            |                    Physical Interface                   |
            |                      (ifEntry = i)                      |
            |                (ifType = ethernetCsmacd(6))             |
            |_________________________________________________________|
                        i, j, k are ifIndex to indicate
                       an interface stack in the ifTable.
                        Figure : PAC Interface Stack

             The 'Controlled Port' is the service point to provide one
             instance of the secure MAC service in a PAC.  The
             'Uncontrolled Port' is the service point to provide one
             instance of the insecure MAC service in a PAC.

        PACP : Port Access Controller Protocol.

        Port Identifier : A 16-bit number that is unique within the
            scope of the address of the port.

        Real Port : Indicates the PAE is for a real port.  A port that
            is not created on demand by the mechanisms specified in
            this standard, but that can transmit and receive frames for
            one or more virtual ports.

        SC : Secure Channel, a security relationship used to provide
            security guarantees for frames transmitted from one member
            of a CA to the others.  An SC is supported by a sequence of
            SAs thus allowing the periodic use of fresh keys without
            terminating the relationship.

        SA : Secure Association, a security relationship that provides
            security guarantees for frames transmitted from one member
            of a CA to the others. Each SA is supported by a single
            secret key, or a single set of keys where the cryptographic
            operations used to protect one frame require more than one
            key. 

        SAK : Secure Association key, the secret key used by an SA.

        SCI : Secure Channel Identifier, a globally unique identifier
            for a secure channel, comprising a globally unique MAC
            Address and a Port Identifier, unique within the system
            allocated that address.

        secured connectivity : Data transfer between two or 'Controlled
            Ports' that is protected by MACsec.

        SecY : MAC Security Entity, the entity that operates the MAC
            Security protocol within a system.

        Supplicant : An entity at one end of a point-to-point LAN
            segment that seeks to be authenticated by an Authenticator
            attached to the other end of that link.
            
        Suspension: Temporary suspension of MKA operation to facilitate
            in-service control plane software upgrades without
            disrupting existing secure connectivity.

        Uncontrolled Port : The access point used to provide the
            insecure MAC Service to a client of a SecY or PAC.

        Virtual Port : Indicates the PAE is for a virtual port.  A MAC
            Service or Internal Sublayer service access point that is
            created on demand.  Virtual ports can be used to provide
            separate secure connectivity associations over the same
            LAN."�" WG-URL: http://grouper.ieee.org/groups/802/1/index.html
        WG-EMail: stds-802-1@ieee.org
        Contact: Mick Seaman
        Postal: C/O IEEE 802.1 Working Group
                IEEE Standards Association
                445 Hoes Lane
                P.O. Box 1331
                Piscataway
                NJ 08855-1331
                USA
                E-mail: STDS-802-1-L@LISTSERV.IEEE.ORG" "201404101619Z" "200910011650Z" T"Update published as part of IEEE 802.1Xbx (Amendment to
        IEEE 802.1X-2010)" y"Initial version of this MIB module.  Published as part of
        IEEE P802.1X (Revision of IEEE Standard 802.1X-2009)"             �--    ::= { iso(1) iso-identified-organization(3) ieee(111)
--          standards-association-numbered-series-standards(2)
--          lan-man-stds(802) ieee802dot1(1) ieee802dot1mibs(1) 15 }
            �"This object enables or disables port-based network access
        control for all the system's ports.  Setting this control
        object to 'false' causes the following actions :
            . Deletes any virtual ports previously instantiated.
            . Terminates authentication exchanges and MKA instances'
              operation.
            . Each real port PAE behaves as if no virtual ports
              created.
            . All the PAEs' Supplicant, Authenticator, and KaY are
              disabled.
            . Logon Process(es) behave as if the object
              ieee8021XNidUnauthAllowed was 'immediate'.
            . Announcements can be transmitted, both periodically and
              in response to announcement requests (conveyed by
              EAPOL-Starts or EAPOL-Announcement-Reqs) but are sent
              with a single NULL NID.
            . Objects announcementAccessStatus and announceAccessStatus
              have the 'noAccess' value, announcementAccessRequested is
              'false', object announcementUnauthAccess has the
              'openAccess' value.

        The control variable settings for each real port PAE in the
        ieee8021XPaePortTable are unaffected, and will be used once the
        object is set to 'true'.

        This configured value for this object shall be stored in
        persistent memory and remain unchanged across a
        re-initialization of the management system of the entity." T"IEEE 802.1X Clause 12.9.1, Figure 12-3 PAE
            System.systemAccessControl"                    �"Setting this control object to 'false' causes each PAE in this
        system to behave as if the PAE's Announcement functionality is 
        disabled.  The independent controls for each PAE apply if
        this object is 'true'.

        This configured value for this object shall be stored in
        persistent memory and remain unchanged across a
        re-initialization of the management system of the entity." U"IEEE 802.1X Clause 12.9.1, Figure 12-3 PAE
             System.systemAnnouncements"                     -"The EAPOL protocol version for this system." c"IEEE 802.1X Clause 12.9.1, Clause 11.3, Figure 12-3 PAE
             System.eapolProtocolVersion"                     +"The MKA protocol version for this system." "IEEE 802.1X Clause 12.9.1"                    �"A table of system level information for each port supported by
        the Port Access Entity.  An entry appears in this table for
        each port of this system.

        For the writeable objects in this table, the configured value
        shall be stored in persistent memory and remain unchanged
        across a re-initialization of the management system of the
        entity." '"802.1X Clause 12.9.2, Figure 12-3 PAE"                    A"The Port number, protocol version, and
        initialization control for a Port.

         If the PAE has been dynamically instantiated to support an
         existing or potential virtual port, the Uncontrolled Port
         interface and Controlled Port interface are allocated by the
         real port's PAE."                      ="An interface index indicates the port number associated with
        this port.  Each PAE is uniquely identified by a port number.
        The port number used is unique amongst all port numbers for
        the system, and directly or indirectly identifies the
        Uncontrolled Port that supports the PAE.

        If the PAE indicates a real port, ieee8021XPaePortType object
        in the same row is 'realPort', the port number shall be the
        same as the ieee8021XPaeCommonPortNumber object in the same row
        for the associated PAC or SecY.

        If the PAE indicates a virtual port, ieee8021XPaePortType
        object in the same row is 'virtualPort', this port number
        should be the same as the uncontrolledPortNumber object in the
        same row for the associated PAC or SecY." #"802.1X Clause 12.9.2, Figure 12-3"                     �"The port type of the PAE.

        realPort(1) : indicates the PAE is for a real port.

        virtualPort(2) : indicates the PAE is for a virtual port." #"802.1X Clause 12.9.2, Figure 12-3"                     f"An interface index indicates the port number associated with
        PAC or SecY's Controlled Port." #"802.1X Clause 12.9.2, Figure 12-3"                    &"An interface index indicates the port number associated with
        PAC or SecY's Uncontrolled Port.  If the PAE supports a
        real port, this port number can be the same as the
        ieee8021XPaeCommonPortNumber object in the same row, otherwise
        it shall not be the same." #"802.1X Clause 12.9.2, Figure 12-3"                     �"An interface index indicates the port number associated with
        PAC or SecY's 'Common Port'.  All the virtual ports created
        for a given real port share the same 'Common Port' and
        ieee8021XPaeCommonPortNumber in the same row." #"802.1X Clause 12.9.2, Figure 12-3"                    �"The initialization control for this Port. Setting this object
        'true' causes the Port to be reinitialized, terminating (and
        potentially restarting) authentication exchanges and MKA
        operation.

        If the port is a real port, any virtual ports previously
        instantiated are deleted.  Virtual ports can be reinstantiated
        through normal protocol operation.

        The object value reverts to 'false' once initialization
        has completed." #"802.1X Clause 12.9.3, Figure 12-3"                    "The capabilities of this PAE port.

        'suppImplemented' : A PACP EAP supplicant functions are
            implemented in this PAE if this bit is on.

        'authImplemented' : A PACP EAP authenticator functions are
            implemented in this PAE if this bit is on.

        'mkaImplemented' : The KaY MKA functions are implemented
            in this PAE if this bit is on.

        'macsecImplemented' : The MACsec functions in the
            Controlled Port are implemented in this PAE if this
            bit is on.

        'announcementsImplemented' : The EAPOL announcement can be
            sent in this PAE if this bit is on.

        'listenerImplemented' : This PAE can receive EAPOL announcement
            if this bit is on.

        'virtualPortsImplemented' : Virtual Port functions are
            implemented in this PAE if this bit is on." #"802.1X Clause 12.9.2, Figure 12-3"                    �"Enable or disable to Virtual Ports function for this Real Port
        PAE, the object ieee8021XPaePortType in the same row has the
        value 'realPort'.  If this PAE is not a Real Port, this object
        should be read only and returns 'false'.

        This object will be read only and returns 'false' if the value
        of the object ieee8021XPaePortCapabilities in the same row has
        the bit 'virtualPortsImplemented' off." #"802.1X Clause 12.8.1, Figure 12-3"                     M"The maximum number of virtual ports can be supported in this
        port." #"802.1X Clause 12.9.2, Figure 12-3"                     >"The current number of virtual ports is running in this port." #"802.1X Clause 12.9.2, Figure 12-3"                     i"This object will be 'true' if the virtual port is created by
        receipt of an EAPOL-Start packet." !"802.1X Clause 12.7, Figure 12-3"                     �"The source MAC address of the received EAPOL-Start if
        ieee8021XPaePortVirtualPortStart is set 'true'.

        If ieee8021XPaePortVirtualPortStart is not 'true' in the same
        row, the value of this object should be 00-00-00-00-00-00." !"802.1X Clause 12.7, Figure 12-3"                     J"Enable or disable to transmit network announcement
        information." !"802.1X Clause 12.5, Figure 12-3"                     �"Enable or disable to the Authenticator function in this PAE.

        This object will be read only and returns 'false' if the value
        of the object ieee8021XPaePortCapabilities in the same row has
        the bit 'authImplemented' Off."  "802.1X Clause 8.4, Figure 12-3"                     �"Enable or disable to the Supplicant function in this PAE.

        This object will be read only and returns 'false' if the value
        of the object ieee8021XPaePortCapabilities in the same row has
        the bit 'suppImplemented' off."  "802.1X Clause 8.4, Figure 12-3"                     �"Enable or disable the MKA protocol function in this PAE.

        This object will be read only and returns 'false' if the value
        of the object ieee8021XPaePortCapabilities in the same row has
        the bit 'mkaImplemented' off." &"IEEE 802.1X Clause 9.16, Figure 12-3"                    "Enable or disable the network Announcer function in this PAE.

        This object will be read only and returns 'false' if the value
        of the object ieee8021XPaePortCapabilities in the same row has
        the bit 'announcementsImplemented' off." !"802.1X Clause 10.4, Figure 12-3"                     �"Enable or disable the network Listener function in this PAE.

        This object will be read only and returns 'false' if the value
        of the object ieee8021XPaePortCapabilities in the same row has
        the bit 'listenerImplemented' off." !"802.1X Clause 10.4, Figure 12-3"                    "A table of system level information for each interface
        supported by PAC.

        This table will be instantiated if the value of the object
        ieee8021XPaePortCapabilities in the corresponding entry of the
        ieee8021XPaePortTable has the bit 'macsecImplemented' off.

        For the writeable objects in this table, the configured value
        shall be stored in persistent memory and remain unchanged
        across a re-initialization of the management system of the
        entity." #"IEEE 802.1X Clause 6.4, Clause 14"                     _"An entry containing PAC management information applicable to
        a particular interface."                       B"The index to identify the 'Controlled Port' interface for a PAC." "IEEE 802.1X Clause 6.4"                    ""An object to control the service connectivity to at most one
        other system.  The ieee8021XPacPortOperPt2PtMAC indicates
        operational status of the service connectivity for this PAC.

        'forceTrue' : allows only one service connection to the
                       other system.

        'forceFalse' : no restriction on the number of service
                        connections to the other systems.

        'auto' : means the service connectivity is determined by the
                  service providing entity." "IEEE 802.1X Clause 6.4"                    7"An object to reflect the current service connectivity status.

        'true' : means the service connectivity of this PAC
             Controlled Port provides at most one other system.

        'false' : means the service connectivity of this PAC could
             provide more than one other system." "IEEE 802.1X Clause 6.4"                        "A table of system level information for each port to support
        the Logon Process(es) status information.

        This table will be instantiated if the object
        ieee8021XPaePortLogonEnable in the corresponding entry of the
        ieee8021XPaePortTable is 'true'." !"802.1X Clause 12.5, Figure 12-3"                     J"An entry contains Logon Process status information for the
        PAE."                      �"The Logon Process sets this variable to one of the following
        values, to indicate to the CP state machine if, and how,
        connectivity is to be provided through the Controlled Port :

        'pending' : Prevent connectivity by disabling the
            Controlled Port of this PAE.

        'unauthenticated' : Provide unsecured connectivity, enabling
            the Controlled Port of this PAE.

        'authenticated' : Provide unsecured connectivity but with
            authentication, enabling Controlled Port of this PAE.

        'secure' : Provide secure connectivity, using SAKs provided by
            the KaY (when available) and enabling Controlled Port when
            those keys are installed and in use." !"802.1X Clause 12.3, Figure 12-3"                     q"This object will be set 'true' if Controlled Port communication
        is secured as specified by the MACsec." !"802.1X Clause 12.3, Figure 12-3"                    �"A table of system level information for each port to support
        Logon Process(es) session information.  This table maintains
        session statistics for its associated Controlled Port,
        suitable for communication to a RADIUS or other AAA server at
        the end of a session for accounting purpose.

        This table will be instantiated if the object
        ieee8021XPaePortLogonEnable in the corresponding entry of the
        ieee8021XPaePortTable is 'true'." #"802.1X Clause 12.5.1, Figure 12-3"                    �"An entry contains Logon Process session information for the
        PAE.  A session, an entry, begins when the operation of
        Controlled Port becomes 'true' and ends when it becomes
        'false'.

        The counts of frames and octets can be derived from those
        maintained to support from Interface MIB counters for the
        SecY's or the PAC's Controlled Port, but differs in that the
        counts are zeroed when the session begins."                       a"The index to identify the 'Controlled Port' interface's session
        information for a PAE." #"802.1X Clause 12.5.1, Figure 12-3"                    "The number of octets received in this session of this PAE.

        Discontinuities in the value of this counter can occur at
        re-initialization of the management system, and at
        other times as indicated by the value of
        ieee8021XPaePortSessionStartTime." #"802.1X Clause 12.5.1, Figure 12-3"                    "The number of octets transmitted in this session of this PAE.

        Discontinuities in the value of this counter can occur at
        re-initialization of the management system, and at
        other times as indicated by the value of
        ieee8021XPaePortSessionStartTime." #"802.1X Clause 12.5.1, Figure 12-3"                    "The number of packets received in this session of this PAE.

        Discontinuities in the value of this counter can occur at
        re-initialization of the management system, and at
        other times as indicated by the value of
        ieee8021XPaePortSessionStartTime." #"802.1X Clause 12.5.1, Figure 12-3"                    "The number of packets transmitted in this session of this PAE.

        Discontinuities in the value of this counter can occur at
        re-initialization of the management system, and at
        other times as indicated by the value of
        ieee8021XPaePortSessionStartTime." #"802.1X Clause 12.5.1, Figure 12-3"                     �"The session identifier for this session of the PAE.  A UTF-8
        string, uniquely identifying the session within the context of
        the PAE's system." #"802.1X Clause 12.5.1, Figure 12-3"                     $"The starting time of this session." #"802.1X Clause 12.5.1, Figure 12-3"                     1"The duration time of the session has been last." #"802.1X Clause 12.5.1, Figure 12-3"                    �"The reason for the session termination, one of the following :

        'macOperFailed' : 'Common Port' for this PAE is not
            operational.

        'sysAccessDisableOrPortInit' : The ieee8021XPaeSysAccessControl
            object is set to 'false' or initialization process of this
            PAE is invoked.

        'receiveEapolLogOff' : The PAE has received EAPOL-Logoff
            frame.

        'eapReauthFailure' : EAP reauthentication has failed.

        'mkaFailure' : MKA failure or other MKA termination.

        'newSessionBegin' : New session beginning.

        'notTerminateYet' : Not Terminated Yet." #"802.1X Clause 12.5.1, Figure 12-3"                     �"The session user name for this session in the PAE.  A UTF-8
        string, representing the identity of the peer Supplicant.

        If no such information, zero length string will return." #"802.1X Clause 12.5.1, Figure 12-3"                    �"The Logon Process may use Network Identities (NIDs) to manage
        its use of authentication credentials, cached CAKs, and
        announcements.  This table provides the NID information for
        Logon Process.

        For the writeable objects in this table, the configured value
        shall be stored in persistent memory and remain unchanged
        across a re-initialization of the management system of the
        entity." !"802.1X Clause 12.5, Figure 12-3"                     <"An entry provides the NID information for a Logon Process."                      ]"The NID associated with the current connectivity (possibly
        unauthenticated) provided by the operation of the CP state
        machine.

        This object can differ from both the ieee8021XLogonNIDSelectedNID and
        the ieee8021XLogonNIDRequestedNID objects in the same row if
        authenticated connectivity (either secure or unsecured) has
        already been established, and EAP authentication and MKA
        operation for both of the latter have not met the necessary
        conditions (as specified by the control variables unauthAllowed
        and unsecureAllowed)." !"802.1X Clause 12.5, Figure 12-3"                    `"The NID marked as access requested in announcements, as
        determined from EAPOL-Start frames.  The default of this object
        is as the configured value of object ieee8021XLogonNIDSelectedNID.

        This object information provides context for the PAE's EAP
        Authenticator.  If no EAPOL-Start frame has been received since
        the PAE's 'Common Port' became operational, or the last
        EAPOL-Start frame received for the port did not contain a
        requested NID, the object will take on the value of the object
        ieee8021XLogonNIDSelectedNID in the same row." !"802.1X Clause 12.5, Figure 12-3"                    w"The NID currently configured for use by an access 'Controlled
        Port' when transmitting EAPOL-Start frames.  The default of
        this object is empty string.

        This object may be either explicitly configured by management
        or determined by the PAE using NID selection algorithms.  If no
        authentication is in progress, and the current connectivity is
        terminated and then starts again, ieee8021XLogonNIDConnectedNID will
        take on the value of ieee8021XLogonNIDRequestedNID (though a PAE
        NID's election algorithm, if used, can subsequently select
        another NID)." !"802.1X Clause 12.5, Figure 12-3"                        �"A table that contains the configuration objects for the
        Authenticator PAE associated with each port.  This table will
        be instantiated if the object ieee8021XPaePortAuthenticatorEnable in
        the corresponding entry of the ieee8021XPaePortTable is 'true'.

        For the writeable objects in this table, the configured value
        shall be stored in persistent memory and remain unchanged
        across a re-initialization of the management system of the
        entity." "802.1X Clause 8, Figure 12-3"                     V"An entry that contains the Authenticator configuration objects
        for the PAE."                      "This object will be set 'true' by the PAE authenticator to
        request authentication, and if this object is 'true',
        reauthentication is allowed.

        This object will be 'false' while the PAE authenticator revokes
        authentication." #"IEEE 802.1X Clause 8, Figure 12-3"                     �"This object will be set 'true' by PACP if the PAE authenticator
        currently authenticated, and 'false' if the authentication
        fails or is revoked." #"IEEE 802.1X Clause 8, Figure 12-3"                    4"This object will be set 'true' by PACP if the authentication
        has failed or has been terminated.  The cause could be a
        failure returned by EAP, either immediately or following a
        reauthentication, an excessive number of attempts to
        authenticate (either immediately or upon reauthentication), or
        the authenticator deasserting authenticate, the object
        authPaeAuthenticate in the same row is 'false'.  The PACP
        will set the object authPaeAuthenticated false as well as
        setting the object 'true'." #"IEEE 802.1X Clause 8, Figure 12-3"                     �"This object is set 'true' if PACP should initiate
        reauthentication periodically, 'false' otherwise .  Reading
        this object always returns 'false'." %"IEEE 802.1X Clause 8.9, Figure 12-3"                     }"This object indicates a waiting period after a failed
        authentication attempt, before another attempt is permitted." %"IEEE 802.1X Clause 8.6, Figure 12-3"                     ["This object indicates the time period of the reauthentication
        to the supplicant." %"IEEE 802.1X Clause 8.6, Figure 12-3"                     �"The maximum number of authentication attempts before failure is
        reported to the Logon Process, and the authPaeQuietPeriod 
        timer imposed before further attempts are permitted." %"IEEE 802.1X Clause 8.9, Figure 12-3"                     5"The count of the number of authentication attempts." "IEEE 802.1X Clause 8.9"                        M"A table that contains the configuration objects for the
        Supplicant PAE associated with each port.

        For the writeable objects in this table, the configured value
        shall be stored in persistent memory and remain unchanged
        across a re-initialization of the management system of the
        entity." *"802.1X Clause 8, Figure 8-6, Figure 12-3"                     6"The configuration information for an Supplicant PAE."                       �"This object will be set 'true' by the PAE supplicant to request
        authentication, and if this object is 'true', reauthentication
        is allowed.

        This object will be 'false' while the PAE supplicant revokes
        authentication." 1"IEEE 802.1X Clause 8.4, Figure 8-6, Figure 12-3"                     �"This object will be set 'true' by PACP if the PAE supplicant
        currently authenticated, and 'false' if the authentication
        fails or is revoked." 1"IEEE 802.1X Clause 8.4, Figure 8-6, Figure 12-3"                    C"This object will be set 'true' by PACP if the authentication
        has failed or has been terminated.  The cause could be a
        failure returned by EAP, either immediately or following a
        reauthentication, an excessive number of attempts to
        authenticate (either immediately or upon reauthentication), or
        the supplicant deasserting authenticate, the object
        ieee8021XSuppPaeAuthenticate in the same row is 'false'.  The PACP
        will set the object ieee8021XSuppPaeAuthenticated false as well as
        setting the object 'true'." 1"IEEE 802.1X Clause 8.4, Figure 8-6, Figure 12-3"                     �"This object indicated a waiting time period after a failed
        authentication attempt, before another attempt is permitted." 1"IEEE 802.1X Clause 8.6, Figure 8-6, Figure 12-3"                     �"The maximum number of authentication attempts before failure is
        reported to the Logon Process, and the ieee8021XSuppPaeHelloPeriod
        timer imposed before further attempts are permitted." 1"IEEE 802.1X Clause 8.7, Figure 8-6, Figure 12-3"                     5"The count of the number of authentication attempts." 1"IEEE 802.1X Clause 8.7, Figure 8-6, Figure 12-3"                         n"A table in system level contains the EAPOL statistics and
        diagnostics information supported by PAE." !"802.1X Clause 12.8, Figure 12-3"                     X"An entry contains the EAPOL statistics and diagnostics
        information for a PAE."                       ^"The number of invalid EAPOL frames of any type that have been
        received by this PAE." #"802.1X Clause 12.8.1, Figure 12-3"                     �"The number of EAPOL frames that the Packet Body Length does not
        match a Packet Body that is contained within the octets of the
        received EAPOL MPDU in this PAE." #"802.1X Clause 12.8.1, Figure 12-3"                     W"The number of EAPOL-Announcement frames that have been received
        by this PAE." #"802.1X Clause 12.8.1, Figure 12-3"                     ["The number of EAPOL-Announcement-Req frames that have been
        received by this PAE." #"802.1X Clause 12.8.1, Figure 12-3"                    U"The number of EAPOL frames that are discarded because their
        processing would require the creation of a virtual port, for
        which there are inadequate or constrained resources, or an
        existing virtual port and no such port currently exists.  If
        virtual port is not supported, this object should be always 0." #"802.1X Clause 12.8.1, Figure 12-3"                     P"The number of EAPOL-Start frames that have been received by
        this PAE." #"802.1X Clause 12.8.1, Figure 12-3"                     N"The number of EAPOL-EAP frames that have been received by
        this PAE." #"802.1X Clause 12.8.1, Figure 12-3"                     Q"The number of EAPOL-Logoff frames that have been received by
        this PAE." #"802.1X Clause 12.8.1, Figure 12-3"                     `"The number of MKPDUs received with MKA not enabled or CKN not
        recognized in this PAE." #"802.1X Clause 12.8.1, Figure 12-3"                     a"The number of MKPDUs failing in message authentication on
        receipt process in this PAE." #"802.1X Clause 12.8.1, Figure 12-3"                     7"The version of last received EAPOL frame by this PAE." #"802.1X Clause 12.8.2, Figure 12-3"                     K"The source MAC address of last received EAPOL frame by this
        PAE." #"802.1X Clause 12.8.2, Figure 12-3"                     c"The number of EAPOL-EAP frames that have been transmitted by
        the supplicant of this PAE." #"802.1X Clause 12.8.3, Figure 12-3"                     T"The number of EAPOL-Logoff frames that have been transmitted by
        this PAE." #"802.1X Clause 12.8.3, Figure 12-3"                     Z"The number of EAPOL-Announcement frames that have been
        transmitted by this PAE." #"802.1X Clause 12.8.3, Figure 12-3"                     ^"The number of EAPOL-Announcement-Req frames that have been
        transmitted by this PAE." #"802.1X Clause 12.8.3, Figure 12-3"                     P"The number of EAPOL-Start frames that have been received by
        this PAE." #"802.1X Clause 12.8.3, Figure 12-3"                     f"The number of EAPOL-EAP frames that have been transmitted by
        the authenticator of this PAE." #"802.1X Clause 12.8.3, Figure 12-3"                     i"The number of EAPOL-MKA frames with no CKN information that
        have been transmitted by this PAE." #"802.1X Clause 12.8.3, Figure 12-3"                        �"A table of system level information for each interface
        supported by the KaY (Key Agreement Entity).  This table will
        be instantiated if the object ieee8021XPaePortKayMkaEnable in
        the corresponding entry of the ieee8021XPaePortTable is 'true'.

        The following terms are used to identify roles within the MKA
        protocol or protocol scenarios and the MIB description :

        participant : An instance of MKA, transmitting and receiving
            frames protected by keys derived from a single CAK, and
            operating with positive intent, obeying the protocol.

        member: A participant that possesses the CAK that can be used
            to prove liveness and to obtain membership in the CA under
            discussion.

        actor: The participant under discussion, usually in the KaY
            being described.

        partners: Participants or members attached to the same LAN as
            the actor, excluding the actor.

        principal actor: The actor controlling the PAC or SecY
            associated with the KaY.

        Each participant selects the live participant advertising the
        highest priority as its key server provided that participant
        has not selected another as its key server or is unwilling to
        act as the key server.  If a key server cannot be selected SAKs
        are not distributed.  In the event of a tie for highest
        priority key server, the member with the highest priority SCI
        is chosen.  For consistency with other uses of the SCI's MAC
        Address component as a priority, numerically lower values of
        the key server priority and SCI are accorded the highest
        priority.

        For the writeable objects in this table, the configured value
        shall be stored in persistent memory and remain unchanged
        across a re-initialization of the management system of the
        entity." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     c"An entry containing KaY MKA management information applicable
        to a particular interface."                       d"This object will be 'true' if there is at least one MKA active
        actor, transmitting MKPDUs" &"IEEE 802.1X Clause 9.16, Figure 12-3"                     �"This object will be 'true' if the principal actor,
        i.e. the actor controlling the PAC or SecY associated with
        the KaY, has determined that Controlled Port communication
        communication should proceed without MACsec." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     q"This object will be 'true' if the principal actor has
        determined that communication should use MACsec." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     �"This object will be 'true' if the object
        ieee8021XKayMkaSecured in
        the same row is 'false' and MKA Life Time has elapsed since an
        MKA participant was last created." 1"IEEE 802.1X Clause 9.16, Table 9-3, Figure 12-3"                     \"The SCI assigned by the system to the port, applies to all the
        port's MKA actors." R"IEEE 802.1X Clause 9.16, Figure 12-3
         IEEE 802.1AE Clause 7.1.2, 10.7.1"                     �"The Key Server priority for all the port's MKA actors.  Each
        participant encodes a key server priority, an 8-bit integer, in
        each MKPDU." 1"IEEE 802.1X Clause 9.16, Table 9-2, Figure 12-3"                     ?"The priority of the elected Key Server through MKA in the CA." 1"IEEE 802.1X Clause 9.16, Table 9-2, Figure 12-3"                    ""The SCI for key server for the MKA principal actor.  The length
        of this object is 0 if there is no principal actor, or that
        actor has no live peers.  This object matches the
        ieee8021XKayMkaActorSCI object in the same row if the actor is
        the key server." R"IEEE 802.1X Clause 9.16, Figure 12-3
         IEEE 802.1AE Clause 7.1.2, 10.7.1"                     d"This object will be 'true' if the KaY will accept Group CAKs
        distributed by MKA protocol." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     �"This object will be 'true' if the KaY will attempt to use
        point-to-point CAKs to distribute a group CAK, if it is the
        Key Server for the MKA instances for all the point-to-point CAKs." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     �"This object is set 'true' if a new Group CAK is to be
        distributed if the KaY is the Key Server for the MKA instances
        for all the point-to-point CAKs.  This object will be set 'false'
        by the KaY when distribution is complete." &"IEEE 802.1X Clause 9.16, Figure 12-3"                    �"This object indicates whether MACsec is implemented, and if so
        whether the implementation provides integrity protection only,
        integrity and integrity with confidentiality, or integrity and
        integrity with confidentiality with a selectable confidentiality offset
        of 0, 30, or 50 octets (see IEEE Std 802.1AE).

        'noMACsec' : the MACsec is not implemented.

        'macSecCapability1' :  capable in 'integrity protection without
             confidentiality'.

        'macSecCapability2' :  capable in 'integrity protection without
             confidentiality' and integrity protection and confidentiali
              with a confidentiality offset 0',.

        'macSecCapability3' :  capable in 'integrity protection without
             confidentiality' and integrity protection and confidentiali
              with a confidentiality offset 0, 30 or 50'." @"IEEE 802.1X Clause 9.6.1, Clause 9.16, Figure 12-3, Table 11-6"                     {"This object will be set 'true' if the MKA participants desire
        the use of MACsec to protect frames with this KaY." 4"IEEE 802.1X Clause 9.6.1, Clause 9.16, Figure 12-3"                    Q"The status of the MACsec protection function for this KaY.

        'true' : then the status of the MACsec protection function will
            be as object secyIfProtectFramesEnable object configured
            in the IEEE8021-SECY-MIB.
        'false' : then the MACsec protection function is disabled by
            this KaY." k"IEEE 802.1X Clause 9.6.1, Clause 9.16, Figure 12-2,
         Figure 12-3, IEEE 802.1AE IEEE8021-SECY-MIB"                    h"The status of the MACsec replay protection function for this
        KaY.

        'true' : then the status of the MACsec replay protection
            function will be as secyIfReplayProtectEnable object
            configured in the IEEE8021-SECY-MIB.
        'false' : then the MACsec replay protection function is
            disabled by this KaY." K"IEEE 802.1X Clause 9.6.1, Clause 9.16, Figure 12-2,
         Figure 12-3"                    �"The status of the MACsec validation function for this KaY.

        'true' : then the status of the MACsec validation function
            will be as secyIfValidateFrames object configured in the
            IEEE8021-SECY-MIB.
        'false' : then the MACsec validation function is enabled but
            only for checking without filtering out invalid frames by
            the SecY." K"IEEE 802.1X Clause 9.6.1, Clause 9.16, Figure 12-2,
         Figure 12-3"                     �"The confidentiality protection offset options for the selected
        cipher suite in the MACsec.  If the cipher suite does not have
        this capability, the configured value of the object will not
        apply to the cipher suite." 4"IEEE 802.1X Clause 9.7.1, Clause 9.16, Figure 12-3"                     �"The key number assigned by the key server to the SAK currently
        being used for transmission.  This object will be 0 if MACsec
        is not being used or the key number is not available yet." 2"IEEE 802.1X Clause 9.8, Clause 9.16, Figure 12-3"                    �"The AN assigned by the key server for use with the key number
        for transmission.

        This row pointer will point to an entry in the secyTxSATable
        which the secyTxSCEncodingSA object also points to in the
        IEEE8021-SECY-MIB.

        If MACsec is not in use or the AN is not identified yet, the
        value of this object shall be set to the OBJECT IDENTIFIER
        { 0 0 }." O"IEEE 802.1X Clause 9.9, Clause 9.16, Figure 12-3,
         IEEE8021-SECY-MIB"                    7"The key number assigned by the key server to the oldest SAK
        currently being used for reception.  It is the same as the key
        number for transmission if a single SAK is currently in use.
        This object will be 0 if MACsec is not being used or the key
        number is not available yet." 2"IEEE 802.1X Clause 9.8, Clause 9.16, Figure 12-3"                    �"The AN assigned by the key server for use with the key number
        for reception.  It is the same as AN for transmission if a
        single SAK is currently in use.

        This row pointer will point to an entry in the secyRxSATable
        which the secyRxSCCurrentSA object also points to in the
        IEEE8021-SECY-MIB.

        If MACsec is not in use or the AN is not identified yet, the
        value of this object shall be set to the OBJECT IDENTIFIER
        { 0 0 }." Q"IEEE 802.1X Clause 9.6.1, Clause 9.16, Figure 12-3,
         IEEE8021-SECY-MIB"                     �"Set by management to a non-zero number of seconds between 1
        and MKA Suspension Limit to initiate a suspension (9.18) of
        that duration (if the KaY's principal actor is the Key
        Server) or to request a suspension (otherwise)" &"IEEE 802.1X Clause 9.16, Figure 12-3"                    �"The status of the suspendOnRequest function for this KaY.
        'true' : then the KaY's principal actor will initiate a
        suspension if it is the Key Server and another participant
        has requested a suspension by transmitting a non-zero value
        of its suspendFor parameter
        'false' : then the KaY will not initiate a suspension on
        request from another participant." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     �"Read by management to determine if a suspension is in
        progress and to discover the remaining duration of that
        suspension. May be set directly to coordinate in-service
        upgrades." c"IEEE 802.1X Clause 5.11.4, Clause 9.16, Clause 9.18.5,
               Clause 9.18.6, Figure 12-3"                    -"A table for each MKA participant supported by the KaY MKA
        entity.

        For the writeable objects in this table, the configured value
        shall be stored in persistent memory and remain unchanged
        across a re-initialization of the management system of the
        entity." 3"IEEE 802.1X Clause 9.14, Clause 9.16, Figure 12-3"                     ^"An entry containing KaY MKA management information applicable
        to a MKA participant."                       /"The CKN information for this MKA participant." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     /"The KMD information for this MKA participant." 3"IEEE 802.1X Clause 9.16, Clause 12.6, Figure 12-3"                     /"The NID information for this MKA participant." 3"IEEE 802.1X Clause 9.16, Clause 12.6, Figure 12-3"                     �"This object is set 'true' by the KaY if the participant's
        parameters are cached.  If this object is 'true', this object
        can be set 'false' cleared by management to remove the
        participant's parameters from the cache." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     r"This object is set 'true' if the participant is active, i.e. is
        currently transmitting periodic MKPDUs." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     �"This object is set 'true' to retain the participant in the
        cache, even if the KaY would normally remove it (due to lack
        of use for example)" &"IEEE 802.1X Clause 9.16, Figure 12-3"                    c"This object is for controlling the participant's behavior when
        the participant is activated.
        
        'default' : the participant is from cached entries created by
            the KaY as part of normal operation, without explicit
            management, and is activated according to the
            implementation dependent policies of the KaY.

        'disabled' : the participant allows the cache information to
            be retained, but disabled for indefinite period.

        'onOperUp' : causing the participant to be activated when the
            PAE's 'Uncontrolled Port' becomes operational and when the
            PAE resumes following suspension.

        'always' : causing the participant to remain active all the
            time, even in the continued absence of partners.

        If the object changed to disabled(1) or onOperUp(3), the
        participant ceases operation immediately and receipt of MKPDUs
        with a matching CKN during a subsequent period of twice MKA
        lifetime will not cause the participant to become active once
        more." 3"IEEE 802.1X Clause 9.14, Clause 9.16, Figure 12-3"                     Y"This object is set 'true' if the participant is currently the
        principal actor." &"IEEE 802.1X Clause 9.16, Figure 12-3"                    G"The CKN for the last CAK distributed either by the actor or one
        of its partners.  Empty string for this object will be provided if
        this participant has not been used to distribute a CAK or the
        participant is not active, i.e. the object
        ieee8021XKayMkaPartActive in the same row is 'false'." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     �"The object to create the parameters for the supported
        participant information in the system.

        If the participant information is from downloaded policies,
        this object is 'active'." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     }"A table containing the lists of Live Peers and Potential Peers,
        for all MKA instances for which the KaY is active." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     w"A table entry for one of the peers for one of the MKA
        instances for which this KaY is an active participant."                       g"The peer entry's MI information in the peer list of this active
        participant in MKA protocol." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     n"The peer entry's latest MN information in the peer list of this
        active participant in MKA protocol." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     �"The peer entry's type in the peer list of this active
        participant in MKA protocol.

        'livePeerList' : the peer entry is in the Live Peer List.

        'potentialPeerList' : the peer entry is in the Potential
            Peer List." &"IEEE 802.1X Clause 9.16, Figure 12-3"                     m"The SCI information of the peer entry in the peer list of this
        active participant in MKA protocol." &"IEEE 802.1X Clause 9.16, Figure 12-3"                        v"A table that contains the configuration objects for the network
        announcement information for the Logon Process.

        The detail operation of the Logon Process can vary depending on
        the port-based network access control applications, and on the
        capabilities supported by that implementation including, for
        example, network discovery and roaming.  This table specifies
        control variables that facilitate behaviors that are
        potentially useful in a range of applications.  Implementations
        may use and augment the variables specified, or may use
        variables specific to the implementation.

        For the writeable objects in this table, the configured value
        shall be stored in persistent memory and remain unchanged
        across a re-initialization of the management system of the
        entity." *"802.1X Clause 8, Figure 8-6, Figure 12-3"                     >"An entry contains network announcement parameters for a NID."                       K"The network identifier to identify NID configuration in the
        PAE." !"802.1X Clause 12.5, Figure 12-3"                    �"Determines when the Logon Process will initiate EAP, if the
        Supplicant and or Authenticator are enabled, and takes one of
        the following values:

        'never' : Never.

        'immediate' : Immediately, concurrently with the use of MKA
            with any cached CAK(s).

        'mkaFail' : Not until MKA has failed, if a prior CAK has been
            cached." !"802.1X Clause 12.5, Figure 12-3"                    S"Determines when the Logon Process will tell the CP state
        machine to provide unauthenticated connectivity, and takes one
        of the following values:

        'never' : Never.

        'immediate' : Immediately, independently of any current or
            future attempts to authenticate using the PAE or MKA.

        'authFail' : Not until an attempt has been made to
            authenticate using EAP, unless neither the Supplicant nor
            the Authenticator is enabled, and MKA has attempted to use
            any cached CAK (unless the KaY is not enabled)." !"802.1X Clause 12.5, Figure 12-3"                    �"Determines when the Logon Process will tell the CP state
        machine to provide authenticated but unsecured connectivity,
        takes one of the following values:

        'never' : Never.

        'immediate' : Immediately, to provide connectivity
            concurrently with the use of MKA with any CAK acquired
            through EAP.

        'mkaFail' : Not until MKA has failed, or is not enabled.

        'mkaServer' : Only if directed by the MKA server." !"802.1X Clause 12.5, Figure 12-3"                     e"The configured access capability of the port's clients without
        authentication in this NID." ."802.1X Clause 12.5, Clause 10.1, Figure 12-3"                     P"The authentication and protection capabilities supported for
        the NID." ."802.1X Clause 12.5, Clause 10.1, Figure 12-3"                     ."The configured KMD information for this NID." !"802.1X Clause 10.4, Figure 12-3"                     �"The object to create the parameters for the supported Network
        Announcement information in the system.

        If the Network Announcement information of the entry is from
        downloaded policies, this object is 'active'." !"802.1X Clause 10.4, Figure 12-3"                    ,"A table contains the status information that the Announcers
        announce in the network announcement of the PAE system.

        This table will be instantiated if the object
        ieee8021XPaePortAnnouncerEnable in the corresponding entry of
        the ieee8021XPaePortTable is 'true'." *"802.1X Clause 8, Figure 8-6, Figure 12-3"                     6"An entry contains an Announcer's status information."                       ["The NID information to identify a transmitting network
        announcement for the PAE." ."802.1X Clause 10.4, Clause 12.5, Figure 12-3"                     ~"The object information reflects connectivity as a result of
        authentication attempts of this NID for this Announcer." ;"802.1X Clause 10.4, Clause 10.1, Clause 12.5, Figure 12-3"                    )"A table contains the status information that the Listeners
        receive in the network announcement of the PAE system.

        This table will be instantiated if the object
        ieee8021XPaePortListenerEnable in the corresponding entry of the
        ieee8021XPaePortTable is 'true'." !"802.1X Clause 10.4, Figure 12-3"                     4"An entry contains a Listener's status information."                       W"The NID information to identify a received network announcement
        for the PAE." !"802.1X Clause 10.4, Figure 12-3"                     Q"The KMD information for this received network announcement of
        the PAE." !"802.1X Clause 10.4, Figure 12-3"                     �"This object indicates the received announcement information was
        specific to the receiving PAE, not generic for all systems attached
        to the LAN." '"802.1X Clause 10.1, 10.4, Figure 12-3"                     �"The object information reflects connectivity as a result of
        authentication attempts for this received network announcement
        of the PAE." ."802.1X Clause 10.4, Clause 10.1, Figure 12-3"                     V"The authenticated access has been requested for this particular
        NID or not." ."802.1X Clause 10.4, Clause 10.1, Figure 12-3"                    	"The access capability of the port's clients without
        authentication in this received network announcement of the
        PAE.

        'openAccess', 'limitedAccess' should not be returned if the
        object ieee8021XNidUnauthAllowed is 'immediate'." ."802.1X Clause 10.1, Clause 12.5, Figure 12-3"                     \"The announcement capabilities of this received network
        announcement for this PAE." ."802.1X Clause 10.1, Clause 12.5, Figure 12-3"                    0"A table contains the Cipher Suites information that the Listeners
        receive in the network announcement of the PAE system.

        This table will be instantiated if the object
        ieee8021XPaePortListenerEnable in the corresponding entry of the
        ieee8021XPaePortTable is 'true'." ?"802.1X Clause 10.4, Clause 11.13.3, Figure 11-21, Figure 12-3"                     r"An entry contains the Cipher Suite information which a Listener has
        reveived from network announcement."                       �"The identifier for the announced cipher suite.  This is a
        global unique 64-bit (EUI-64) identifier to identify a cipher
        suite." 9"802.1X Clause 10.4, Figure 12-3, 802.1AE-2006 Clause 14"                    \"The capability of a Cipher Suite received from the network
        announcement by the Listener.

        A 2 octets Cipher Suite dependent implementation capability field
        precedes each Cipher Suite reference number. If the Cipher Suite,
        ieee8021XAnnouncementCipherSuite, identifies the Default Cipher
        Suite (specified in IEEE Std 802.1AE), the two least significant
        bits of the implementation capability field encode the MACsec
        Capability parameter specified in Table 11-7 and the fourteen more
        significant bits are as 0 and ignored on receipt." %"802.1X Clause 11.13.3, Figure 11-21"                             N"The compliance statement for device support of
        Port Access Control."   e"This group is mandatory for systems that does not support
        the MACsec functions of the PAE." c"This group is mandatory for systems that support the
        Authenticator functions of the PAE." `"This group is mandatory for systems that support the
        Supplicant functions of the PAE." ]"This group is mandatory for systems that support the KaY
        MKA functions of the PAE." j"This group is mandatory for systems that support the
        network announcement functions of the PAE." �"This group is mandatory for systems that support the
        network announcement and the Announcer functions of the
        PAE." �"This group is mandatory for systems that support
        the network announcement and the Listener functions of the
        PAE." <"read-write access is not required.  This may be read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only."             �"The compliance statement for device support of
        Port Access Control as specified in 802.1X-2010
        amended by 802.1Xbx."   e"This group is mandatory for systems that does not support
        the MACsec functions of the PAE." c"This group is mandatory for systems that support the
        Authenticator functions of the PAE." `"This group is mandatory for systems that support the
        Supplicant functions of the PAE." ]"This group is mandatory for systems that support the KaY
        MKA functions of the PAE." j"This group is mandatory for systems that support the
        network announcement functions of the PAE." �"This group is mandatory for systems that support the
        network announcement and the Announcer functions of the
        PAE." �"This group is mandatory for systems that support
        the network announcement and the Listener functions of the
        PAE." X"This group is mandatory for systems that support KaY MKA
        in-service upgrades." <"read-write access is not required.  This may be read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only." F"read-create access is not required.  This may be
        read-only."                 "A collection of objects providing system information for a PAE
        system and a PAE port status and control information."                 P"A collection of objects providing information of a PAC in the
        system."                 Z"A collection of objects providing information of a Logon
        Process in the system."                 i"A collection of objects providing configuration information of
        an Authenticator in the system."                 e"A collection of objects providing configuration information of
        a Supplicant in the system."                 m"A collection of objects providing counters and diagnostic
        information for the EAPOL in the system."                 o"A collection of objects providing monitoring and controlling
        information of a KaY MKA in the system."                 l"A collection of objects providing monitoring and controlling
        information of an NID in the system."                 _"A collection of objects providing status information for
        an Announcer in the system."                 ]"A collection of objects providing status information for
        a Listener in the system."                 k"A collection of objects providing monitoring and control
        for MKA support of in-service upgrades."                    