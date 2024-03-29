-- *****************************************************************
-- CISCO-FIREWALL-MIB
--
-- April, 1999 Jim Fitzgerald
--
-- Copyright (c) 1999-2005 by cisco Systems, Inc.
-- All rights reserved.
-- *****************************************************************
  "This textual convention is used to describe various hardware
        resouces that can be monitored by the firewall.

        memory         - identifies memory.
        disk           - identifies disk.
        power          - identifies power.
        netInterface   - identifies a network interface.
        tape           - identifies a tape drive.
        controller     - identifies hardware controller.
        cpu            - identifies CPU.
        primaryUnit    - identifies the primary unit of the two
                         identical firewalls configured redundancy.
        secondaryUnit  - identifies the secondary unit of the two
                         identical firewalls configured redundancy.
        other          - identifies other hardware."              �"This textual convention is used to describe various events
        that are related to the resources on a firewall.
        other      : Generic resource event.
        up         : The resource is in service.
        down       : The resource is not in service.
        error      : There has been an error for this resource.
        overTemp   : The resource is overheating.
        busy       : The resource is busy.
        noMedia    : A device doesn't have its needed media.
        backup     : Processing has switched to the backup.
        active     : This is the active unit.
        standby    : This is the standby unit."              �"This textual convention is used to identify various statistics
        that are related to the resources on a firewall.

        highUse     : The highest load the resource has had for a
                      time period. The time period will be
                      implementation dependent.
        highLoad    : The highest load the resource has had since
                      startup.
        maximum     : The maximum amount of the resource that is
                      available.
        minimum     : The minimum amount of the resource that is
                      available.
        low         : The lowest amount of the resource that has been
                      available since startup.
        high        : The highest amount of the resource that has been
                      available since startup.
        average     : The average amount of the resource that has been
                      available since startup.
        free        : The amount of the resource that is currently
                      available since startup.
        inUse       : The amount of the resource that is currently
                      in use,  eg. CPU usage, memory usage."              y"This textual convention is used to describe various events
        and statistics that are related to the connections that
        occur on a firewall.

        other    : A generic connection event.
        accept   : A connection has been acccepted.
        error    : An error has occurred for a connection.
        drop     : The connection has been dropped.
        close    : A connection has been closed.
        timeout  : A connection has been timed out.
        refused  : A connection has been refused.
        reset    : A connection has been reset.
        noResp   : A connection has received no response."              �"This textual convention is used to describe various services
        that are monitored by the firewall.

        otherFWService  - a service that does not fit into any
                          other category.
        fileXferFtp     - identifies FTP, File Transfer Protocol.
        fileXferTftp    - identifies TFTP, Trivial File
                          Transfer Protocol
        fileXferFtps    - identifies FTP, File Transfer
                            Protocol running over Secure Sockets Layer.
        loginTelnet    - identifies telnet
        loginRlogin    - identifies rlogin.
        loginTelnets   - identifies telnet over 
                         Secure Sockets Layer(SSL).
        remoteExecSunRPC  - identifies Sun Remote 
                            Procedure Call Protocol.
        remoteExecMSRPC   - identifies Microsoft Remote 
                            Procedure Call Protocol.
        remoteExecRsh     - identifies the remote shell.
        remoteExecXserver - identifies the Xwindows server.
        webHttp           - identifies Hyper Text Transfer Protocol.
        webHttps          - identifies the secure HTTP protocol.
        mailSmtp  - identifies SMTP, Simple Mail Transfer Protocol.
        mailSmtps - identifies SMTP, Simple Mail Transfer Protocol 
                    running over Secure Sockets Layer (SSL).
        multimediaStreamworks - identifies streamworks.
        multimediaH323        - identifies H323.
        multimediaNetShow     - identifies NetShow.
        multimediaVDOLive     - identifies vDOLive.
        multimediaRealAV      - identifies RealAV.
        multimediaRTSP        - identifies Real Time Streaming Protocol
        dbOracle    - identifies Oracle's SQL*Net.
        dbMSsql     - identifies MicroSoft SQL.
        contInspProgLang     - identifies a payload as a programming
                               language such as Java or ActiveX.
        contInspUrl          - identifies a payload as a URL.
        directoryNis         - identifies NIS, Network Information Service.
        directoryDns         - identifies DNS, Domain Name Service.
        directoryNetbiosns   - identifies NetBIOSNS - NetBIOS Name Service.
        directoryNetbiosdgm  - identifies NetBIOSNS - NetBIOS 
                               datagram Service.
        directoryNetbiosssn  - identifies NetBIOSNS - NetBIOS 
                               Session Service.
        directoryWins      - identifies Windows Internet Naming
                             Service (WINS).
        qryWhois   - identifies WhoIs service.
        qryFinger  - identifies finger.
        qryIdent   - identifies Ident.
        fsNfsStatus  - identifies Network File System (NFS) Status.
        fsNfs        -  identifies Network File System (NFS).
        fsCifs       - identifies CIFS, Common Internet 
                       File Service.
        protoIcmp   - identifies ICMP, Internet Control Message Protocol.
        protoTcp    - identifies TCP, Transmission Control Protocol.
        protoUdp    - identifies UDP, User Datagram Protocol.
        protoIp     - identifies IP, Internet Protocol.
        protoSnmp   - identifies SNMP, Simple Network Management Protocol."              o"This textual convention is used to describe various events
        and statistics that are related to authorization.

        other    : Miscellaneous authentication event.
        succ     : A client successfuly authenticated.
        error    : Error while authenticating.
        fail     : A client failed an authenticating.
        succPriv : A client accessed a service with special
                   privileges.
        failPriv : A client failed to access a service with
                   special privileges.
        failMult : Multiple failed authentication attempts by
                   a client."              d"This textual convention is used to describe various 
        security-related events and statistics on a firewall.

        other      : Generic attack event.
        none       : No attack is occurring, an informational
                     event.
        dos        : A denial of service attack has been detected.
        recon      : A pattern of reconnaissance activity has been
                     detected.
        pakFwd     : A packet forwarding attack has been detected.
        addrSpoof  : A spoofed address has been detected.
        svcSpoof   : A spoofed service (eg., DNS) has been detected.
        thirdParty : This site is being used as a third-party for
                     an attack on another network. For example, the
                     'smurf' attack or email spamming.
        complete   : An attack has terminated
        invlPak    : An invalid packet with attack characteristics
                     has been detected.
        illegCmd   : An illegal command has been found.
        policy     : An attempt has reen made to violate a security
                     policy."              {"This textual convention is used to describe various 
        connections statistics.

        other            : A generic connection event.
        totalOpen        : Total open connections since reboot.
        currentOpen      : The number of connections currently open.
        currentClosing   : The number of connections currently closing.
        currentHalfOpen  : The number of connections currently half-open.
        currentInUse     : The number of connections currently in use.
        high             : The highest number of connections in use at
                           any one time since system startup."              o"Generic Events - events for which there is no more specific
        enumeration
        abnormal : An abnormal event has occurred that is neither
                   'okay' nor an 'error'.
        okay     : A normal event occurred or the system has changed
                   from an abnormal state to a normal state
        error    : An error event occurred"              �"Content inspection events, these events report that
        something was found in the application payload. The 
        details entry in the event can report on what was
        found (eg., virus, company private info., etc), what it
        was found in (eg., html, win32 executable, e-mail), and
        what was done with it (eg., the quarantine location).

        other  : A content inspection event. Used to indicate
                 that some content inspection has occurred that
                 is not covered by the other content inspection
                 enumerations.
        okay   : The check of the content was okay, nothing 'bad'
                 was found.
        error  : There was an error while checking the content.
        found  : Something was found that the content inspection
                 engine has determined merits attention.
        clean  : The content inspection engine has found something
                 that violates the security policy and has 
                 neutralized the content in the data flow.
        reject : The content inspection engine has found something
                 that violates the security policy and has discarded 
                 the content.
        saved  : The content inspection engine has found something
                 that violates the security policy and has stored 
                 it in a quarentine storage area."              $"This textual convention is used to describe various events
        and statistics that are related to the access control on a
        firewall.

        other    : Miscellaneous access event.
        grant    : A service has allowed access based on all
                   of its access checks.
        deny     : a client was denied use of a service.
        denyMult : A client was denied use of a service
                   multiple times.
        error    : An error has ocurred during the access
                   control process."                                                 ,"MIB module for monitoring Cisco Firewalls.""       Cisco Systems
                    Customer Service

            Postal: 170 W Tasman Drive
                    San Jose, CA  95134
                    USA

            Tel: +1 800 553-NETS

            E-mail: cs-pix@cisco.com
                    cs-iosfw@cisco.com" "200512060000Z" "9904291200Z""Added the copyright statement and updated the imports 
            such that Unsigned32 is imported from SNMPv2-SMI instead 
            of CISCO-TC. Added a new NOTIFICATION-GROUP 
            ciscoFirewallMIBNotificationGroupRev1 to include all the 
            notifications defined in the MIB. Obsoleted the 
            OBJECT-GROUP ciscoFirewallMIBNotificationGroup. Deprecated
            the MODULE-COMPLIANCE ciscoFirewallMIBCompliance and added 
            a new MODULE-COMPLIANCE ciscoFirewallMIBComplianceRev1." %"Initial version of this MIB module."                           �"The index value of the most recently created row 
            in the cfwBasicEventsTable. This number starts at 
            1 and increase by one with each new log entry.  When 
            this number wraps, all events are deleted."                       �"Table of basic data for firewall events.  The agent 
            may choose to delete the instances of cfwBasicEventsEntry
            as required because of lack of memory.  The oldest Events 
            will be selected first for deletion."                       �"An entry in the table, containing general information
             about an event. This table will always be sparse, i.e., 
             each row will instanciate only a subet of the columnar
             objects."                       �"An index that uniquely identifies an entry in the 
            log table.  These indices are assigned beginning 
            with 1 and increase by one with each new event logged."                       #"The time that the event occurred."                       �"The type of security-related event that this row contains.
            If the event is not security-related this object will not 
            be instantiated."                       �"The type of content inspection-related event that this row
            contains. If the event is not content inspection-related 
            this object will not be instantiated."                       �"The type of connection-related event that this row contains.
            If the event is not connection-related this object will not 
            be instantiated."                       �"The type of access-related event that this row contains. 
            If the event is not access-related this object will not be
            instantiated."                       �"The type of authentication-related event that this row 
            contains. If the event is not authentication-related this 
            object will not be instantiated."                       �"The type of generic event that this row contains. If the 
            event does not fall into one of the other categories this
            object will be populated. Otherwise, this object will not 
            be instantiated."                       _"A description of the event. The value of the object may
            be a zero-length string."                      a"A pointer to a row in the table containing details
            about this event.  Generally, the table will be the 
            cfwNetEventsTable but a Cisco-defined table may also 
            appear here. If there there is no more detailed 
            information for this event the value of this object 
            will have the value {0 0}."                           �"The index value of the last row in the
            cfwNetEventsTable. This number starts at 1 and 
            increase by one with each new log entry.  When this
            number wraps, all events are deleted."                      j"Table of detailed data for network events. The
            agent may choose to delete the instances of 
            cfwBasicEventsEntry as required because of lack of
            memory.  It is an implementation-specific matter as
            to when this deletion may occur. It is recommended 
            that the oldest log instances are deleted first."                      "An entry in the table, containing detailed information
            about an event. Note that this table may be sparse.
            If Network Address Translation is not enabled
            cfwNetEventInsideSrcIpAddress and 
            cfwNetEventInsideDstIpAddress will not be instantiated
            in the row. If Port Address Translation is not enabled 
            cfwNetEventInsideSrcIpPort and 
            cfwNetEventInsideDstIpPort will not be instantiated
            in the row. Entries are added to this table at the
            same time that events are added to the cfwBasicEventsTable.
            These two tables may be configured to be different
            sizes so there may not be a one-to-one correspondence
            between rows in the two tables."                      Q"An index that uniquely identifies an entry in the
            log table.  These indices are assigned beginning with
            one and increase by one with each new log entry. When
            this number wraps, all events are deleted in order to
            allow the NMS to differentiate between old and new
            events."                      �"The interface most closely associated with this event.
            For example, for an event that relates to the receipt of 
            a packet, this object identifies the interface on which 
            the packet was received.  If there are multiple interfaces
            associated with an event, the interface most closely 
            associated with the cause of the event will be used.
            For example, for an event for the setup of a TCP 
            connection, the interface on the initiator's side
            of the connection would be preferred.  If there is no 
            associated interface, then this object has the value zero."                      �"Source IP address in the IP packet that caused the
            event. If there is no packet associated with the 
            event this object has the value of zero. If the event is
            the result of multiple packets with different source 
            addresses, this value may be zero or an address taken 
            from an arbitrarily chosen packet in the sequence of 
            packets causing the event."                      �"Source IP address after Network Address Translation
            has been applied. If NAT has not been applied to the
            source address in this packet this object will not
            be instantiated, resulting in a sparse table. If the
            event is the result of multiple packets with different
            source addresses, this value may be zero or an address
            taken from an arbitrarily chosen packet in the sequence
            of packets causing the event."                      �"Destination IP address in the IP packet that caused
            the event. If there is no packet associated with
            the event this object has the value of zero. If the event
            is the result of multiple packets with different destination
            addresses, this value may be zero or an address taken
            from an arbitrarily chosen packet in the sequence of
            packets causing the event."                      "Destination IP address after Network Address Translation
            has been applied. If NAT has not been applied to the
            destination address in this packet this object will not
            be instantiated, resulting in a sparse table. If the event
            is the result of multiple packets with different destination
            addresses, this value may be zero or an address taken 
            from an arbitrarily chosen packet in the sequence of 
            packets causing the event."                      �"Source UDP/TCP port in the IP packet that caused
            the event. If there is no packet associated with the 
            event this object has the value of zero. If the event
            is the result of multiple packets with different source
            ports, this value may be zero or a port taken from an 
            arbitrarily chosen packet in the sequence of packets
            causing the event."                      �"Source UDP/TCP port after Port Address Translation
            has been applied. If PAT has not been applied to the
            source port in this packet this object will not be 
            instantiated, resulting in a sparse table. If the 
            event is the result of multiple packets with different
            source ports, this value may be zero or a port taken 
            from an arbitrarily chosen packet in the sequence of 
            packets causing the event."                      �"Destination UDP/TCP port in the IP packet that caused
             the event. If there is no packet associated with the
             event this object has the value of zero. If the event is 
             the result of multiple packets with different destination 
             ports, this value may be zero or a port taken from an 
             arbitrarily chosen packet in the sequence of packets 
             causing the event."                      �"Destination UDP/TCP port after Port Address Translation
            has been applied. If PAT has not been applied to the
            Destination port in this packet this object will not be 
            instantiated, resulting in a sparse table. If the event
            is the result of multiple packets with different
            destination ports, this value may be zero or a port
            taken from an arbitrarily chosen packet in the sequence
            of packets causing the event."                       S"The identification of the type of service involved 
            with this event."                      x"Specific service information.  This can be used to
            describe the particular service indentified by
            cfwNetEventService and can reflect whether the service 
            is a local service or a gateway service.  For example,
            if the value for cfwNetEventService is loginTelnet
            then the string provided might be 'local telnet'."                      >"This object will contain a description of the entity that 
            caused the event. The entity could be a userid, username,
            processid or other identifier for the entity using the service.
            If there is no such information then this object will contain
            a zero-length string."                       &"A detailed description of the event."                               3"Table of firewall cfwHardwareStatusEntry entries."                       U"An entry in the table, containing status information
            about a resource."                       Q"The hardware type for which this row provides 
            status information."                       \"A detailed textual description of the resource
            identified by cfwHardwareType."                       :"This object contains the current status of the resource."                       �"A detailed textual description of the current status of
            the resource which may provide a more specific description 
            than cfwHardwareStatusValue."                           P"A table conatining status information about a firewall's
            buffers."                       �"An entry in the table, containing status information
            about a particular statistic for the set of buffers
            of a particular size."                       �"This object contains the size of the set of buffers 
            for which this row contains the statistics given by 
            cfwBufferStatType."                       �"This object identifies the type of statistic given by 
            this row for the particular set of buffers identified by 
            cfwBufferStatSize."                       `"A detailed textual description of the statistic 
            identified by cfwBufferStatType."                       $"The value of the buffer statistic."                       ("Table of firewall statistic instances."                       X"An entry in the table, containing information about a
            firewall statistic."                       Q"The identification of the type of connection providing
            statistics."                       R"The state of the connections that this row contains
            statistics for."                       3"A detailed textual description of this statistic."                       �"This is an integer that contains the value of the
            resource statistic. If a type of 'gauge' is more
            appropriate this object will be omitted resulting 
            in a sparse table."                       �"This is an integer that contains the value of the
            resource statistic. If a type of 'counter' is more
            appropriate this object will be omitted resulting 
            in a sparse table."                               �"This notification is used for events involving security
            events. The included objects provide more detailed 
            information about the event."                 �"This notification is used to notify the NMS of content
            inspection events. The included objects provide more
            detailed information about the event."                 �"This notification is used to notify the NMS of 
            connection-oriented events. The included objects provide 
            more detailed information about the event."                 �"This notification is used to notify the NMS of access 
            events. The included objects provide more detailed 
            information about the event."                 �"This notification is used to notify the NMS of 
            authentication events. The included objects provide 
            more detailed information about the event."                 �"This notification is used to notify the NMS of events
            that do not fall into the other categories. The included 
            objects provide more detailed information about the event."                         ["The compliance statement for entities which implement
            the Cisco FirewallMIB."               ["The compliance statement for entities which implement
            the Cisco FirewallMIB."   2"Implementation of these objects is not required." 8"Implementation of these notifications is not required."                 "Firewall events"                 "Firewall statistics"                 "Firewall Notifications"                 "Firewall Notifications"                                