   "RFC-1034 section 3.1."�"A DNS name is a sequence of labels.  When DNS names are
               displayed, the boundaries between labels are typically
               indicated by dots (e.g. `Acme' and `COM' are labels in
               the name `Acme.COM').  In the DNS protocol, however, no
               such separators are needed because each label is encoded
               as a length octet followed by the indicated number of
               octets of label.  For example, `Acme.COM' is encoded as
               the octet sequence { 4, 'A', 'c', 'm', 'e', 3, 'C', 'O',
               'M', 0 } (the final 0 is the length of the name of the
               root domain, which appears implicitly at the end of any
               DNS name).  This MIB uses the same encoding as the DNS
               protocol.

               A DnsName must always be a fully qualified name.  It is
               an error to encode a relative domain name as a DnsName
               without first making it a fully qualified name."   <-- A DISPLAY-HINT would be nice, but difficult to express.
         "RFC-1035." \"DnsTime values are 32-bit unsigned integers which
               measure time in seconds."             "RFC-1035 section 4.1.1." �"This data type is used to represent the DNS RCODE value
               in DNS response messages.  Existing standard RCODE
               values are listed in the DNS specifications."             "RFC-1035 section 3.2.2."6"This data type is used to represent the type values
               which appear in Resource Records in the DNS.  A 16-bit
               unsigned integer is used to allow room for new record
               types to be defined.  Existing standard types are listed
               in the DNS specifications."             "RFC-1035 section 3.2.3."8"This data type is used to represent the QType values
               which appear in Resource Records in the DNS.  A 16-bit
               unsigned integer is used to allow room for new QType
               records to be defined.  Existing standard QTypes are
               listed in the DNS specification."             "RFC-1035 section 3.2.4."?"This data type is used to represent the class values
               which appear in Resource Records in the DNS.  A 16-bit
               unsigned integer is used to allow room for new classes
               of records to be defined.  Existing standard classes are
               listed in the DNS specifications."             "RFC-1035 section 3.2.5."<"This data type is used to represent the QClass values
               which appear in Resource Records in the DNS.  A 16-bit
               unsigned integer is used to allow room for new QClass
               records to be defined.  Existing standard QClasses are
               listed in the DNS specification."             -"RFC-1034 section 3.1, RFC-1448 section 4.1."k"This textual convention is like a DnsName, but is used
               as an index componant in tables.  Alphabetic characters
               in names of this type are restricted to uppercase: the
               characters 'a' through 'z' are mapped to the characters
               'A' through 'Z'.  This restriction is intended to make
               the lexical ordering imposed by SNMP useful when applied
               to DNS names.

               Note that it is theoretically possible for a valid DNS

               name to exceed the allowed length of an SNMP object
               identifer, and thus be impossible to represent in tables
               in this MIB that are indexed by DNS name.  Sampling of
               DNS names in current use on the Internet suggests that
               this limit does not pose a serious problem in practice."             "RFC-1035 section 4.1.1." �"This textual convention is used to represent the DNS
               OPCODE values used in the header section of DNS
               messages.  Existing standard OPCODE values are listed in
               the DNS specifications."                                                                                         /"The OID assigned to DNS MIB work by the IANA."               t"The MIB module for entities implementing the server side
               of the Domain Name System (DNS) protocol."�"       Rob Austein
               Postal: Epilogue Technology Corporation
                       268 Main Street, Suite 283
                       North Reading, MA 10864
                       US
                  Tel: +1 617 245 0804
                  Fax: +1 617 245 8122
               E-Mail: sra@epilogue.com

                       Jon Saperia
               Postal: Digital Equipment Corporation
                       110 Spit Brook Road
                       ZKO1-3/H18
                       Nashua, NH 03062-2698
                       US
                  Tel: +1 603 881 0480
                  Fax: +1 603 881 0120
                Email: saperia@zko.dec.com"                       �"The implementation identification string for the DNS
               server software in use on the system, for example;
               `FNS-2.1'"                      �"This represents the recursion services offered by this
               name server.  The values that can be read or written
               are:

               available(1) - performs recursion on requests from
               clients.

               restricted(2) - recursion is performed on requests only
               from certain clients, for example; clients on an access
               control list.

               unavailable(3) - recursion is not available."                       �"If the server has a persistent state (e.g., a process),
               this value will be the time elapsed since it started.
               For software without persistant state, this value will
               be zero."                      �"If the server has a persistent state (e.g., a process)
               and supports a `reset' operation (e.g., can be told to
               re-read configuration files), this value will be the
               time elapsed since the last time the name server was
               `reset.'  For software that does not have persistence or
               does not support a `reset' operation, this value will be
               zero."                      K"Status/action object to reinitialize any persistant name
               server state.  When set to reset(2), any persistant
               name server state (such as a process) is reinitialized as
               if the name server had just been started.  This value
               will never be returned by a read operation.  When read,
               one of the following values will be returned:
                   other(1) - server in some unknown state;
                   initializing(3) - server (re)initializing;
                   running(4) - server currently running."                           8"Number of queries which were authoritatively answered."                       _"Number of queries for which `authoritative no such name'
               responses were made."                       n"Number of queries for which `authoritative no such data'
               (empty answer) responses were made."                       Z"Number of queries which were non-authoritatively
               answered (cached data)."                       h"Number of queries which were non-authoritatively
               answered with no data (empty answer)."                       9"Number of requests that were referred to other servers."                       "Number of requests the server has processed that were
               answered with errors (RCODE values other than 0 and 3)." "RFC-1035 section 4.1.1."                     �"Number of requests received by the server for names that
               are only 1 label long (text form - no internal dots)."                       /"Number of DNS requests refused by the server."                       5"Number of requests received which were unparseable."                       X"Number of requests which were aborted for other (local)
               server errors."                       8"Counter information broken down by DNS class and type."                      �"This table contains count information for each DNS class

               and type value known to the server.  The index allows
               management software to to create indices to the table to
               get the specific information desired, e.g., number of
               queries over UDP for records with type value `A' which
               came to this server.  In order to prevent an
               uncontrolled expansion of rows in the table; if
               dnsServCounterRequests is 0 and dnsServCounterResponses
               is 0, then the row does not exist and `no such' is
               returned when the agent is queried for such instances."                       8"The DNS OPCODE being counted in this row of the table."                       M"The class of record being counted in this row of the
               table."                       U"The type of record which is being counted in this row in
               the table."                      �"A value of udp(1) indicates that the queries reported on
               this row were sent using UDP.

               A value of tcp(2) indicates that the queries reported on
               this row were sent using TCP.

               A value of other(3) indicates that the queries reported
               on this row were sent using a transport that was neither
               TCP nor UDP."                       `"Number of requests (queries) that have been recorded in
               this row of the table."                       �"Number of responses made by the server since
               initialization for the kind of query identified on this
               row of the table."                           �"Number of requests the server has processed which
               originated from a resolver on the same host for which

               there has been an authoritative answer."                       �"Number of requests the server has processed which
               originated from a resolver on the same host for which
               there has been an authoritative no such name answer
               given."                       �"Number of requests the server has processed which
               originated from a resolver on the same host for which
               there has been an authoritative no such data answer
               (empty answer) made."                       �"Number of requests the server has processed which
               originated from a resolver on the same host for which a
               non-authoritative answer (cached data) was made."                       �"Number of requests the server has processed which
               originated from a resolver on the same host for which a
               `non-authoritative, no such data' response was made
               (empty answer)."                       �"Number of queries the server has processed which
               originated from a resolver on the same host and were
               referred to other servers."                       �"Number of requests the server has processed which
               originated from a resolver on the same host which have
               been answered with errors (RCODEs other than 0 and 3)." "RFC-1035 section 4.1.1."                     �"Number of requests received for names that are only 1
               label long (text form - no internal dots) the server has
               processed which originated from a resolver on the same
               host."                       q"Number of DNS requests refused by the server which
               originated from a resolver on the same host."                       {"Number of requests received which were unparseable and
               which originated from a resolver on the same host."                       ~"Number of requests which were aborted for other (local)
               server errors and which originated on the same host."                       �"Number of queries originating from friends which were
               authoritatively answered.  The definition of friends is
               a locally defined matter."                       �"Number of queries originating from friends, for which
               authoritative `no such name' responses were made.  The
               definition of friends is a locally defined matter."                       �"Number of queries originating from friends for which
               authoritative no such data (empty answer) responses were
               made.  The definition of friends is a locally defined
               matter."                       �"Number of queries originating from friends which were
               non-authoritatively answered (cached data). The
               definition of friends is a locally defined matter."                       �"Number of queries originating from friends which were
               non-authoritatively answered with no such data (empty
               answer)."                       �"Number of requests which originated from friends that
               were referred to other servers.  The definition of
               friends is a locally defined matter."                       �"Number of requests the server has processed which
               originated from friends and were answered with errors
               (RCODE values other than 0 and 3).  The definition of
               friends is a locally defined matter." "RFC-1035 section 4.1.1."                     �"Number of requests received for names from friends that
               are only 1 label long (text form - no internal dots) the
               server has processed."                       b"Number of DNS requests refused by the server which were
               received from `friends'."                       i"Number of requests received which were unparseable and
               which originated from `friends'."                       |"Number of requests which were aborted for other (local)
               server errors and which originated from `friends'."                          n"Table of zones for which this name server provides
               information.  Each of the zones may be loaded from stable
               storage via an implementation-specific mechanism or may
               be obtained from another name server via a zone transfer.

               If name server doesn't load any zones, this table is
               empty."                       ~"An entry in the name server zone table.  New rows may be
               added either via SNMP or by the name server itself."                      F"DNS name of the zone described by this row of the table.
               This is the owner name of the SOA RR that defines the
               top of the zone. This is name is in uppercase:
               characters 'a' through 'z' are mapped to 'A' through 'Z'
               in order to make the lexical ordering useful."                       $"DNS class of the RRs in this zone."                       T"Elapsed time in seconds since last successful reload of
               this zone."                       S"Elapsed time in seconds since last attempted reload of
               this zone."                      r"IP address of host from which most recent zone transfer
               of this zone was attempted.  This value should match the
               value of dnsServZoneSourceSuccess if the attempt was
               succcessful.  If zone transfer has not been attempted
               within the memory of this name server, this value should
               be 0.0.0.0."                       U"The status of the information represented in this row of
               the table."                      "Zone serial number (from the SOA RR) of the zone

               represented by this row of the table.  If the zone has
               not been successfully loaded within the memory of this
               name server, the value of this variable is zero."                      v"Whether the server's copy of the zone represented by
               this row of the table is currently valid.  If the zone
               has never been successfully loaded or has expired since
               it was last succesfully loaded, this variable will have
               the value false(2), otherwise this variable will have
               the value true(1)."                      ="IP address of host which was the source of the most
               recent successful zone transfer for this zone.  If
               unknown (e.g., zone has never been successfully
               transfered) or irrelevant (e.g., zone was loaded from
               stable storage), this value should be 0.0.0.0."                      �"This table is a list of IP addresses from which the
               server will attempt to load zone information using DNS
               zone transfer operations.  A reload may occur due to SNMP
               operations that create a row in dnsServZoneTable or a
               SET to object dnsServZoneReload.  This table is only
               used when the zone is loaded via zone transfer."                       0"An entry in the name server zone source table."                       3"DNS name of the zone to which this entry applies."                       0"DNS class of zone to which this entry applies."                       Z"IP address of name server host from which this zone
               might be obtainable."                       U"The status of the information represented in this row of
               the table."                           e"A collection of objects providing basic configuration
               control of a DNS name server."                 _"A collection of objects providing basic instrumentation
               of a DNS name server."                 b"A collection of objects providing extended
               instrumentation of a DNS name server."                     f"The compliance statement for agents implementing the DNS
               name server MIB extensions."   P"The server optional counter group is unconditionally
               optional." "The server zone group is mandatory for any name server
               that acts as an authoritative server for any DNS zone." #"This object need not be writable." #"This object need not be writable."                