                                       �"The MIB module for entities implementing the client
               (resolver) side of the Domain Name System (DNS)
               protocol."�"       Rob Austein
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
               E-mail: saperia@zko.dec.com"                       �"The implementation identification string for the
               resolver software in use on the system, for example;
               `RES-2.1'"                      k"Kind of DNS resolution service provided:

               recursiveOnly(1) indicates a stub resolver.

               iterativeOnly(2) indicates a normal full service
               resolver.

               recursiveAndIterative(3) indicates a full-service
               resolver which performs a mix of recursive and iterative
               queries."                       �"Limit on how many CNAMEs the resolver should allow
               before deciding that there's a CNAME loop.  Zero means
               that resolver has no explicit CNAME limit." "RFC-1035 section 7.1."                     �"Table of safety belt information used by the resolver
               when it hasn't got any better idea of where to send a
               query, such as when the resolver is booting or is a stub
               resolver."                      9"An entry in the resolver's Sbelt table.
               Rows may be created or deleted at any time by the DNS
               resolver and by SNMP SET requests.  Whether the values
               changed via SNMP are saved in stable storage across
               `reset' operations is implementation-specific."                       ^"The IP address of the Sbelt name server identified by
               this row of the table."                       �"The DNS name of a Sbelt nameserver identified by this
               row of the table.  A zero-length string indicates that
               the name is not known by the resolver."                      �"Kind of queries resolver will be sending to the name
               server identified in this row of the table:

               iterative(1) indicates that resolver will be directing
               iterative queries to this name server (RD bit turned
               off).

               recursive(2) indicates that resolver will be directing
               recursive queries to this name server (RD bit turned
               on).

               recursiveAndIterative(3) indicates that the resolver
               will be directing both recursive and iterative queries
               to the server identified in this row of the table."                       �"This value identifies the preference for the name server
               identified in this row of the table.  The lower the
               value, the more desirable the resolver considers this
               server."                      o"Queries sent to the name server identified by this row
               of the table are limited to those for names in the name
               subtree identified by this variable.  If no such
               limitation applies, the value of this variable is the
               name of the root domain (a DNS name consisting of a
               single zero octet)."                       o"The class of DNS queries that will be sent to the server
               identified by this row of the table."                       4"Row status column for this row of the Sbelt table."                       �"If the resolver has a persistent state (e.g., a
               process), this value will be the time elapsed since it
               started.  For software without persistant state, this
               value will be 0."                      �"If the resolver has a persistent state (e.g., a process)
               and supports a `reset' operation (e.g., can be told to
               re-read configuration files), this value will be the
               time elapsed since the last time the resolver was
               `reset.'  For software that does not have persistence or
               does not support a `reset' operation, this value will be
               zero."                      H"Status/action object to reinitialize any persistant
               resolver state.  When set to reset(2), any persistant
               resolver state (such as a process) is reinitialized as if
               the resolver had just been started.  This value will
               never be returned by a read operation.  When read, one of
               the following values will be returned:
                   other(1) - resolver in some unknown state;
                   initializing(3) - resolver (re)initializing;
                   running(4) - resolver currently running."                           M"Table of the current count of resolver queries and
               answers."                       Z"Entry in the resolver counter table.  Entries are
               indexed by DNS OpCode."                       m"The index to this table.  The OpCodes that have already
               been defined are found in RFC-1035." "RFC-1035 section 4.1.1."                     �"Total number of queries that have sent out by the
               resolver since initialization for the OpCode which is
               the index to this row of the table."                       �"Total number of responses that have been received by the
               resolver since initialization for the OpCode which is
               the index to this row of the table."                       N"Table of the current count of responses to resolver
               queries."                       b"Entry in the resolver response table.  Entries are
               indexed by DNS response code."                       t"The index to this table.  The Response Codes that have
               already been defined are found in RFC-1035." "RFC-1035 section 4.1.1."                     �"Number of responses the resolver has received for the
               response code value which identifies this row of the
               table."                       z"Number of requests made by the resolver for which a
               non-authoritative answer (cached data) was received."                       �"Number of requests made by the resolver for which a
               non-authoritative answer - no such data response (empty
               answer) was received."                       z"Number of responses received which were received from
               servers that the resolver does not think it asked."                       ."Number of responses received to all queries."                       6"Number of responses received which were unparseable."                       ]"Number of times the resolver had to fall back to its
               seat belt information."                           �"Number of times the resolver attempted to add an entry
               to the Lame Delegation table but was unable to for some
               reason such as space constraints."                      *"Table of name servers returning lame delegations.

               A lame delegation has occured when a parent zone
               delegates authority for a child zone to a server that
               appears not to think that it is authoritative for the
               child zone in question."                       �"Entry in lame delegation table.  Only the resolver may
               create rows in this table.  SNMP SET requests may be used
               to delete rows."                       "Source of lame delegation."                       2"DNS name for which lame delegation was received."                       ("DNS class of received lame delegation."                       8"How many times this lame delegation has been received."                       �"Status column for the lame delegation table.  Since only
               the agent (DNS resolver) creates rows in this table, the
               only values that a manager may write to this variable
               are active(1) and destroy(6)."                          �"Status/action for the resolver's cache.

               enabled(1) means that the use of the cache is allowed.
               Query operations can return this state.

               disabled(2) means that the cache is not being used.
               Query operations can return this state.

               Setting this variable to clear(3) deletes the entire
               contents of the resolver's cache, but does not otherwise
               change the resolver's state.  The status will retain its
               previous value from before the clear operation (i.e.,
               enabled(1) or disabled(2)).  The value of clear(3) can
               NOT be returned by a query operation."                       �"Maximum Time-To-Live for RRs in this cache.  If the
               resolver does not implement a TTL ceiling, the value of
               this field should be zero."                       5"Number of RRs the resolver has cached successfully."                      7"Number of RRs the resolver has refused to cache because
               they appear to be dangerous or irrelevant.  E.g., RRs
               with suspiciously high TTLs, unsolicited root
               information, or that just don't appear to be relevant to
               the question the resolver asked."                       s"This table contains information about all the resource
               records currently in the resolver's cache."                       �"An entry in the resolvers's cache.  Rows may be created
               only by the resolver.  SNMP SET requests may be used to
               delete rows."                       �"Owner name of the Resource Record in the cache which is
               identified in this row of the table.  As described in
               RFC-1034, the owner of the record is the domain name
               were the RR is found." "RFC-1034 section 3.6."                     m"DNS class of the Resource Record in the cache which is
               identified in this row of the table."                       l"DNS type of the Resource Record in the cache which is
               identified in this row of the table."                       �"Time-To-Live of RR in DNS cache.  This is the initial
               TTL value which was received with the RR when it was
               originally received."                       ("Elapsed seconds since RR was received."                       6"Host from which RR was received, 0.0.0.0 if unknown."                       �"RDATA portion of a cached RR.  The value is in the
               format defined for the particular DNS class and type of
               the resource record." "RFC-1035 section 3.2.1."                     �"Status column for the resolver cache table.  Since only
               the agent (DNS resolver) creates rows in this table, the
               only values that a manager may write to this variable
               are active(1) and destroy(6)."                       �"A value which makes entries in the table unique when the
               other index values (dnsResCacheRRName,
               dnsResCacheRRClass, and dnsResCacheRRType) do not
               provide a unique index."                       �"Name of the RR at this row in the table.  This is
               identical to the dnsResCacheRRName variable, except that
               character case is preserved in this variable, per DNS
               conventions." "RFC-1035 section 2.3.3."                        �"Status/action for the resolver's negative response
               cache.

               enabled(1) means that the use of the negative response
               cache is allowed.  Query operations can return this
               state.
               disabled(2) means that the negative response cache is
               not being used.  Query operations can return this state.

               Setting this variable to clear(3) deletes the entire
               contents of the resolver's negative response cache.  The
               status will retain its previous value from before the
               clear operation (i.e., enabled(1) or disabled(2)).  The
               value of clear(3) can NOT be returned by a query
               operation."                       �"Maximum Time-To-Live for cached authoritative errors.
               If the resolver does not implement a TTL ceiling, the
               value of this field should be zero."                       V"Number of authoritative errors the resolver has cached
               successfully."                       �"Number of authoritative errors the resolver would have
               liked to cache but was unable to because the appropriate
               SOA RR was not supplied or looked suspicious." "RFC-1034 section 4.3.4."                     �"The resolver's negative response cache.  This table
               contains information about authoritative errors that
               have been cached by the resolver."                       �"An entry in the resolver's negative response cache
               table.  Only the resolver can create rows.  SNMP SET
               requests may be used to delete rows."                       5"QNAME associated with a cached authoritative error." "RFC-1034 section 3.7.1."                     J"DNS QCLASS associated with a cached authoritative
               error."                       9"DNS QTYPE associated with a cached authoritative error."                      �"Time-To-Live of a cached authoritative error at the time
               of the error, it should not be decremented by the number
               of seconds since it was received.  This should be the
               TTL as copied from the MINIMUM field of the SOA that
               accompanied the authoritative error, or a smaller value
               if the resolver implements a ceiling on negative
               response cache TTLs." "RFC-1034 section 4.3.4."                     9"Elapsed seconds since authoritative error was received."                       N"Host which sent the authoritative error, 0.0.0.0 if
               unknown."                      �"The authoritative error that has been cached:

               nonexistantName(1) indicates an authoritative name error
               (RCODE = 3).

               noData(2) indicates an authoritative response with no
               error (RCODE = 0) and no relevant data.

               other(3) indicates some other cached authoritative
               error.  At present, no such errors are known to exist."                      "Status column for the resolver negative response cache
               table.  Since only the agent (DNS resolver) creates rows
               in this table, the only values that a manager may write
               to this variable are active(1) and destroy(6)."                       �"A value which makes entries in the table unique when the
               other index values (dnsResNCacheErrQName,
               dnsResNCacheErrQClass, and dnsResNCacheErrQType) do not
               provide a unique index."                       �"QNAME associated with this row in the table.  This is
               identical to the dnsResNCacheErrQName variable, except
               that character case is preserved in this variable, per
               DNS conventions." "RFC-1035 section 2.3.3."                         k"Number of responses which were received from servers
               redirecting query to another server."                       0"Number requests retransmitted for all reasons."                       S"Number of queries that were retransmitted because of no
               response."                       V"Number of queries that were retransmitted that were to
               root servers."                       J"Number of requests internally generated by the
               resolver."                       J"Number of requests internally generated which timed
               out."                           v"A collection of objects providing basic configuration
               information for a DNS resolver implementation."                 k"A collection of objects providing basic instrumentation
               of a DNS resolver implementation."                 b"A collection of objects providing instrumentation of
               `lame delegation' failures."                 d"A collection of objects providing access to and control
               of a DNS resolver's cache."                 v"A collection of objects providing access to and control
               of a DNS resolver's negative response cache."                 �"A collection of objects providing further
               instrumentation applicable to many but not all DNS
               resolvers."                     c"The compliance statement for agents implementing the DNS
               resolver MIB extensions."   ]"The resolver cache group is mandatory for resolvers that
               implement a cache." x"The resolver negative cache group is mandatory for
               resolvers that implement a negative response cache." 8"The lame delegation group is unconditionally optional." J"The optional counters group is unconditionally
               optional." #"This object need not be writable." #"This object need not be writable." #"This object need not be writable." #"This object need not be writable." #"This object need not be writable." #"This object need not be writable." #"This object need not be writable." #"This object need not be writable." #"This object need not be writable."                        