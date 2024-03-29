                                                               �"This MIB module defines MIB objects which provide
            mechanisms to remotely configure the parameters
            used by a proxy forwarding application."�"WG-email:   snmpv3@lists.tislabs.com
            Subscribe:  majordomo@lists.tislabs.com
                        In message body:  subscribe snmpv3

            Chair:      Russ Mundy
                        Trusted Information Systems
            Postal:     3060 Washington Rd
                        Glenwood MD 21738
                        USA
            EMail:      mundy@tislabs.com
            Phone:      +1-301-854-6889

            Co-editor:  David B. Levi
                        SNMP Research, Inc.
            Postal:     3001 Kimberlin Heights Road
                        Knoxville, TN 37920-9716
            EMail:      levi@snmp.com
            Phone:      +1 423 573 1434

            Co-editor:  Paul Meyer
                        Secure Computing Corporation
            Postal:     2675 Long Lake Road
                        Roseville, MN 55113
            EMail:      paul_meyer@securecomputing.com
            Phone:      +1 651 628 1592

            Co-editor:  Bob Stewart
                        Cisco Systems, Inc.
            Postal:     170 West Tasman Drive
                        San Jose, CA 95134-1706
            EMail:      bstewart@cisco.com
            Phone:      +1 603 654 2686" "9808040000Z" "9707140000Z" <"Clarifications, published as
                    RFC2573." -"The initial revision, published as RFC2273."                   u"The table of translation parameters used by proxy forwarder
            applications for forwarding SNMP messages."                       �"A set of translation parameters used by a proxy forwarder
            application for forwarding SNMP messages.

            Entries in the snmpProxyTable are created and deleted
            using the snmpProxyRowStatus object."                       `"The locally arbitrary, but unique identifier associated
            with this snmpProxyEntry."                       p"The type of message that may be forwarded using
            the translation parameters defined by this entry."                       �"The contextEngineID contained in messages that
            may be forwarded using the translation parameters
            defined by this entry."                      H"The contextName contained in messages that may be
            forwarded using the translation parameters defined
            by this entry.

            This object is optional, and if not supported, the
            contextName contained in a message is ignored when
            selecting an entry in the snmpProxyTable."                       �"This object selects an entry in the snmpTargetParamsTable.
            The selected entry is used to determine which row of the
            snmpProxyTable to use for forwarding received messages."                      �"This object selects a management target defined in the
            snmpTargetAddrTable (in the SNMP-TARGET-MIB).  The
            selected target is defined by an entry in the
            snmpTargetAddrTable whose index value (snmpTargetAddrName)
            is equal to this object.

            This object is only used when selection of a single
            target is required (i.e. when forwarding an incoming
            read or write request)."                      "This object selects a set of management targets defined
            in the snmpTargetAddrTable (in the SNMP-TARGET-MIB).

            This object is only used when selection of multiple
            targets is required (i.e. when forwarding an incoming
            notification)."                       *"The storage type of this conceptual row."                      &"The status of this conceptual row.

            To create a row in this table, a manager must
            set this object to either createAndGo(4) or
            createAndWait(5).

            The following objects may not be modified while the
            value of this object is active(1):
                - snmpProxyType
                - snmpProxyContextEngineID
                - snmpProxyContextName
                - snmpProxyTargetParamsIn
                - snmpProxySingleTargetOut
                - snmpProxyMultipleTargetOut"                               g"The compliance statement for SNMP entities which include
            a proxy forwarding application."                   �"A collection of objects providing remote configuration of
            management target translation parameters for use by
            proxy forwarder applications."                    