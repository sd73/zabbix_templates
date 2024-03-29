                                               �"The Lookup MIB (DISMAN-NSLOOKUP-MIB) enables determination
        of either the name(s) corresponding to a host address or of
        the address(es) associated with a host name at a remote host." �"Kenneth White

        International Business Machines Corporation
        Network Computing Software Division
        Research Triangle Park, NC, USA

        E-mail: wkenneth@us.ibm.com" "200009210000Z" )"Initial version, published as RFC 2925."       -- 21 September 2000
           �"The maximum number of concurrent active lookup requests
       that are allowed within an agent implementation.  A value
       of 0 for this object implies that there is no limit for
       the number of concurrent active requests in effect."                      t"The amount of time to wait before automatically
       deleting an entry in the lookupCtlTable and any
       dependent lookupResultsTable entries
       after the lookup operation represented by an
       lookupCtlEntry has completed.

       An lookupCtEntry is considered complete
       when its lookupCtlOperStatus object has a
       value of completed(3)."                     -- 15 minutes as default
 �"Defines the Lookup Control Table for providing
        the capability of performing a lookup operation,
        gethostbyname or gethostbyaddr, from a remote host."                      L"Defines an entry in the lookupCtlTable.  A
        lookupCtlEntry is initially indexed by
        lookupCtlOwnerIndex, which is of type SnmpAdminString,
        a textual convention that allows for use of the SNMPv3
        View-Based Access Control Model (RFC 2575 [11], VACM)
        and also allows an management application to identify
        its entries.  The second index element,
        lookupCtlOperationName, enables the same
        lookupCtlOwnerIndex entity to have multiple outstanding
        requests.

        The value of lookupCtlTargetAddressType determines which
        lookup function to perform.  Specification of dns(16)
        as the value of this index implies that the gethostbyname
        function should be performed to determine the numeric
        addresses associated with a symbolic name via
        lookupResultsTable entries.  Use of a value of either
        ipv4(1) or ipv6(2) implies that the gethostbyaddr function
        should be performed to determine the symbolic name(s)
        associated with a numeric address at a remote host."                      /"To facilitate the provisioning of access control by a
       security administrator using the View-Based Access
       Control Model (RFC 2575, VACM) for tables in which
       multiple users may need to independently create or
       modify entries, the initial index is used as an 'owner
       index'.  Such an initial index has a syntax of
       SnmpAdminString, and can thus be trivially mapped to a
       securityName or groupName as defined in VACM, in
       accordance with a security policy.

       When used in conjunction with such a security policy all
       entries in the table belonging to a particular user (or
       group) will have the same value for this initial index.
       For a given user's entries in a particular table, the
       object identifiers for the information in these entries
       will have the same subidentifiers (except for the
       'column' subidentifier) up to the end of the encoded
       owner index. To configure VACM to permit access to this
       portion of the table, one would create
       vacmViewTreeFamilyTable entries with the value of
       vacmViewTreeFamilySubtree including the owner index
       portion, and vacmViewTreeFamilyMask 'wildcarding' the
       column subidentifier.  More elaborate configurations
       are possible."                       o"The name of a lookup operation.  This is locally unique,
        within the scope of an lookupCtlOwnerIndex."                      �"Specifies the type of address for either performing a
        gethostbyname or a gethostbyaddr function at a remote host.
        Specification of dns(16) as the value for this object
        means that the gethostbyname function should be performed
        to return one or more numeric addresses.  Use of a value
        of either ipv4(1) or ipv6(2) means that the gethostbyaddr
        function should be used to return the symbolic names
        associated with a remote host."                      p"Specifies the address used for a resolver lookup at a
        remote host.  The corresponding lookupCtlAddressType
        objects determines its type as well as the function
        that can be requested.

        A value for this object MUST be set prior to
        transitioning its corresponding lookupCtlEntry to
        active(1) via lookupCtlRowStatus."                      c"Reflects the operational state of an lookupCtlEntry:

           enabled(1)    - Operation is active.
           notStarted(2) - Operation has not been enabled.
           completed(3)  - Operation has completed.

         An operation is automatically enabled(1) when its
         lookupCtlRowStatus object is transitioned to active(1)
         status.  Until this occurs lookupCtlOperStatus MUST
         report a value of notStarted(2).  After the lookup
         operation completes (success or failure) the value
         for lookupCtlOperStatus MUST be transitioned to
         completed(3)."                       �"Reports the number of milliseconds that a lookup
        operation required to be completed at a remote host.
        Completed means operation failure as well as
        success."                      �"The system specific return code from a lookup
        operation.  All implementations MUST return a value
        of 0 for this object when the remote lookup
        operation succeeds.  A non-zero value for this
        objects indicates failure.  It is recommended that
        implementations that support errno use it as the
        value of this object to aid a management
        application in determining the cause of failure."                      k"This object allows entries to be created and deleted
        in the lookupCtlTable.

        A remote lookup operation is started when an
        entry in this table is created via an SNMP SET
        request and the entry is activated.  This
        occurs by setting the value of this object
        to CreateAndGo(4) during row creation or
        by setting this object to active(1) after
        the row is created.

        A value MUST be specified for lookupCtlTargetAddress
        prior to a transition to active(1) state being
        accepted.

        A remote lookup operation starts when its entry
        first becomes active(1).  Transitions in and
        out of active(1) state have no effect on the
        operational behavior of a remote lookup
        operation, with the exception that deletion of
        an entry in this table by setting its RowStatus
        object to destroy(6) will stop an active
        remote lookup operation.

        The operational state of a remote lookup operation
        can be determined by examination of its
        lookupCtlOperStatus object." T"See definition of RowStatus in RFC 2579,
        'Textual Conventions for SMIv2.'"                    S"Defines the Lookup Results Table for providing
        the capability of determining the results of a
        operation at a remote host.
        One or more entries are added to the
        lookupResultsTable when a lookup operation,
        as reflected by an lookupCtlEntry, completes
        successfully.  All entries related to a
        successful lookup operation MUST be added
        to the lookupResultsTable at the same time
        that the associating lookupCtlOperStatus
        object is transitioned to completed(2).

        The number of entries added depends on the
        results determined for a particular lookup
        operation.  All entries associated with an
        lookupCtlEntry are removed when the
        lookupCtlEntry is deleted.

        A remote host can be multi-homed and have more
        than one IP address associated with it
        (gethostbyname results) and/or it can have more
        than one symbolic name (gethostbyaddr results).

        The gethostbyaddr function is called with a
        host address as its parameter and is used
        primarily to determine a symbolic name to
        associate with the host address.  Entries in
        the lookupResultsTable MUST be made for each
        host name returned.  The official host name MUST
        be assigned a lookupResultsIndex of 1.

        The gethostbyname function is called with a
        symbolic host name and is used primarily to
        retrieve a host address.  If possible the
        primary host address SHOULD be assigned a
        lookupResultsIndex of 1."                       �"Defines an entry in the lookupResultsTable.  The
        first two index elements identify the
        lookupCtlEntry that a lookupResultsEntry belongs
        to.  The third index element selects a single
        lookup operation result."                      8"Entries in the lookupResultsTable are created when
        the result of a lookup operation is determined.

        Entries MUST be stored in the lookupResultsTable in
        the order that they are retrieved.  Values assigned
        to lookupResultsIndex MUST start at 1 and increase
        in order."                       �"Indicates the type of result of a remote lookup
        operation.  A value of unknown(0) implies that
        either the operation hasn't been started or that
        it has failed."                       h"Reflects a result for a remote lookup operation
        as per the value of lookupResultsAddressType."                               7"The compliance statement for the DISMAN-NSLOOKUP-MIB."   R"The agent is not required to support SET
            operations to this object." S"The agent is not required to support a SET
            operation to this object."                 I"The group of objects that comprise the remote
       Lookup operation."                    