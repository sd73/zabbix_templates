    "An octet string containing a list of tag values.
            Tag values are preferably in human-readable form.

            To facilitate internationalization, this information
            is represented using the ISO/IEC IS 10646-1 character
            set, encoded as an octet string using the UTF-8
            character encoding scheme described in RFC 2279.

            Since additional code points are added by amendments
            to the 10646 standard from time to time,
            implementations must be prepared to encounter any code
            point from 0x00000000 to 0x7fffffff.

            The use of control codes should be avoided, except as
            described below.

            For code points not directly supported by user
            interface hardware or software, an alternative means
            of entry and display, such as hexadecimal, may be
            provided.

            For information encoded in 7-bit US-ASCII, the UTF-8
            representation is identical to the US-ASCII encoding.

            An object of this type contains a list of tag values
            which are used to select a set of entries in a table.

            A tag value is an arbitrary string of octets, but
            may not contain a delimiter character.  Delimiter
            characters are defined to be one of the following:

                -  An ASCII space character (0x20).

                -  An ASCII TAB character (0x09).

                -  An ASCII carriage return (CR) character (0x0D).

                -  An ASCII line feed (LF) character (0x0B).

            Delimiter characters are used to separate tag values
            in a tag list.  Only a single delimiter character may
            occur between two tag values.  A tag value may not
            have a zero length.  These constraints imply certain
            restrictions on the contents of this object:

                - There cannot be a leading or trailing delimiter
                  character.

                - There cannot be multiple adjacent delimiter
                  characters.

            Some examples of valid tag lists are:

                - An empty string

                - 'acme router'

                - 'host managerStation'

            Note that although a tag value may not have a length of
            zero, an empty string is still valid.  This indicates
            an empty list (i.e. there are no tag values in the list).

            The use of the tag list to select table entries is
            application and MIB specific.  Typically, an application
            will provide one or more tag values, and any entry
            which contains some combination of these tag values
            will be selected."              	�"An octet string containing a tag value.
            Tag values are preferably in human-readable form.

            To facilitate internationalization, this information
            is represented using the ISO/IEC IS 10646-1 character
            set, encoded as an octet string using the UTF-8
            character encoding scheme described in RFC 2279.

            Since additional code points are added by amendments
            to the 10646 standard from time to time,
            implementations must be prepared to encounter any code
            point from 0x00000000 to 0x7fffffff.

            The use of control codes should be avoided, and certain
            control codes are not allowed as described below.

            For code points not directly supported by user
            interface hardware or software, an alternative means
            of entry and display, such as hexadecimal, may be
            provided.

            For information encoded in 7-bit US-ASCII, the UTF-8
            representation is identical to the US-ASCII encoding.

            Note that when this TC is used for an object that
            is used or envisioned to be used as an index, then a
            SIZE restriction must be specified so that the number
            of sub-identifiers for any object instance does not
            exceed the limit of 128, as defined by [RFC1905].

            An object of this type contains a single tag value
            which is used to select a set of entries in a table.

            A tag value is an arbitrary string of octets, but
            may not contain a delimiter character.  Delimiter
            characters are defined to be one of the following:

                -  An ASCII space character (0x20).

                -  An ASCII TAB character (0x09).

                -  An ASCII carriage return (CR) character (0x0D).

                -  An ASCII line feed (LF) character (0x0B).

            Delimiter characters are used to separate tag values
            in a tag list.  An object of this type may only
            contain a single tag value, and so delimiter
            characters are not allowed in a value of this type.

            Some examples of valid tag values are:

                - 'acme'

                - 'router'

                - 'host'

            The use of a tag value to select table entries is
            application and MIB specific."                                                                                                                                         �"This MIB module defines MIB objects which provide
            mechanisms to remotely configure the parameters used
            by an SNMP entity for the generation of SNMP messages."�"WG-email:   snmpv3@lists.tislabs.com
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
                    RFC2573." -"The initial revision, published as RFC2273."                  A"This object is used to facilitate modification of table
            entries in the SNMP-TARGET-MIB module by multiple
            managers.  In particular, it is useful when modifying
            the value of the snmpTargetAddrTagList object.

            The procedure for modifying the snmpTargetAddrTagList
            object is as follows:

                1.  Retrieve the value of snmpTargetSpinLock and
                    of snmpTargetAddrTagList.

                2.  Generate a new value for snmpTargetAddrTagList.

                3.  Set the value of snmpTargetSpinLock to the
                    retrieved value, and the value of
                    snmpTargetAddrTagList to the new value.  If
                    the set fails for the snmpTargetSpinLock
                    object, go back to step 1."                       \"A table of transport addresses to be used in the generation
            of SNMP messages."                       �"A transport address to be used in the generation
            of SNMP operations.

            Entries in the snmpTargetAddrTable are created and
            deleted using the snmpTargetAddrRowStatus object."                       e"The locally arbitrary, but unique identifier associated
            with this snmpTargetAddrEntry."                       v"This object indicates the transport type of the address
            contained in the snmpTargetAddrTAddress object."                       �"This object contains a transport address.  The format of
            this address depends on the value of the
            snmpTargetAddrTDomain object."                      �"This object should reflect the expected maximum round
            trip time for communicating with the transport address
            defined by this row.  When a message is sent to this
            address, and a response (if one is expected) is not
            received within this time period, an implementation
            may assume that the response will not be delivered.

            Note that the time interval that an application waits
            for a response may actually be derived from the value
            of this object.  The method for deriving the actual time
            interval is implementation dependent.  One such method
            is to derive the expected round trip time based on a
            particular retransmission algorithm and on the number
            of timeouts which have occurred.  The type of message may
            also be considered when deriving expected round trip
            times for retransmissions.  For example, if a message is
            being sent with a securityLevel that indicates both
            authentication and privacy, the derived value may be
            increased to compensate for extra processing time spent
            during authentication and encryption processing."                      "This object specifies a default number of retries to be
            attempted when a response is not received for a generated
            message.  An application may provide its own retry count,
            in which case the value of this object is ignored."                       �"This object contains a list of tag values which are
            used to select target addresses for a particular
            operation."                       �"The value of this object identifies an entry in the
            snmpTargetParamsTable.  The identified entry
            contains SNMP parameters to be used when generating
            messages to be sent to this transport address."                       +"The storage type for this conceptual row."                      �"The status of this conceptual row.

            To create a row in this table, a manager must
            set this object to either createAndGo(4) or
            createAndWait(5).

            Until instances of all corresponding columns are
            appropriately configured, the value of the
            corresponding instance of the snmpTargetAddrRowStatus
            column is 'notReady'.

            In particular, a newly created row cannot be made
            active until the corresponding instances of
            snmpTargetAddrTDomain, snmpTargetAddrTAddress, and
            snmpTargetAddrParams have all been set.

            The following objects may not be modified while the
            value of this object is active(1):
                - snmpTargetAddrTDomain
                - snmpTargetAddrTAddress
            An attempt to set these objects while the value of
            snmpTargetAddrRowStatus is active(1) will result in
            an inconsistentValue error."                       `"A table of SNMP target information to be used
            in the generation of SNMP messages."                       �"A set of SNMP target information.

            Entries in the snmpTargetParamsTable are created and
            deleted using the snmpTargetParamsRowStatus object."                       g"The locally arbitrary, but unique identifier associated
            with this snmpTargetParamsEntry."                       f"The Message Processing Model to be used when generating
            SNMP messages using this entry."                      N"The Security Model to be used when generating SNMP
             messages using this entry.  An implementation may
             choose to return an inconsistentValue error if an
             attempt is made to set this variable to a value
             for a security model which the implementation does
             not support."                       �"The securityName which identifies the Principal on
            whose behalf SNMP messages will be generated using
            this entry."                       _"The Level of Security to be used when generating
            SNMP messages using this entry."                       +"The storage type for this conceptual row."                      �"The status of this conceptual row.

            To create a row in this table, a manager must
            set this object to either createAndGo(4) or
            createAndWait(5).

            Until instances of all corresponding columns are
            appropriately configured, the value of the
            corresponding instance of the snmpTargetParamsRowStatus
            column is 'notReady'.

            In particular, a newly created row cannot be made
            active until the corresponding
            snmpTargetParamsMPModel,
            snmpTargetParamsSecurityModel,
            snmpTargetParamsSecurityName,
            and snmpTargetParamsSecurityLevel have all been set.
            The following objects may not be modified while the
            value of this object is active(1):
                - snmpTargetParamsMPModel
                - snmpTargetParamsSecurityModel
                - snmpTargetParamsSecurityName
                - snmpTargetParamsSecurityLevel
            An attempt to set these objects while the value of
            snmpTargetParamsRowStatus is active(1) will result in
            an inconsistentValue error."                       �"The total number of packets received by the SNMP
            engine which were dropped because the context
            contained in the message was unavailable."                       �"The total number of packets received by the SNMP
            engine which were dropped because the context
            contained in the message was unknown."                               h"The compliance statement for SNMP entities which include
            a command responder application."                   b"A collection of objects providing basic remote
            configuration of management targets."                 �"A collection of objects providing remote configuration
            of management targets for applications which generate
            SNMP messages for which a response message would be
            expected."                 w"A collection of objects required for command responder
            applications, used for counting error conditions."                    