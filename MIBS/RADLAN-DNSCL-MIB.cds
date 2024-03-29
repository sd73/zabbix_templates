                           q"The MIB module describes the private MIB for DNS supported
               by Marvell MTS software and products." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201304010000Z" "Added MODULE-IDENTITY"       -- April 1, 2013
       -"The domain names table for DNS client ver2."                       $"The row definition for this table."                       �"The domain name source. 'static' if defined by user through CLI,
        'dhcpv6' or 'dhcpv4' if received by DHCP network protocol."                       y"The IfIndex from which the domain-name configuration was received,
         for static entries, value will always be 1."                       �"This value identifies the preference of domain-name,
         The lower the value, the more desirable the resolver considers this
         domain-name in domain-search-list."                       "Domain-name name."                       _"The row status variable, used according to
         row installation and removal conventions."                       ,"The DNS servers table for DNS client ver2."                       $"The row definition for this table."                       �"The DNS servers source. Static if defined by user through CLI,
         dhcpv6 or dhcpv4 if received by network protocol DHCPv6 or DHCPv4."                       x"The IfIndex from which the DNS-server configuration was received,
         for static entries, value will always be 1."                       �"This value identifies the preference for the name server
         identified in this row of the table.  The lower the
         value, the more desirable the resolver considers this
         server."                       �"The address type of rlDnsClv2ServersInetAddr.  Only
         IPv4, IPv4z, IPv6, and IPv6z addresses are expected, or
         unknown(0) if datagrams for all local IP addresses are
         accepted."                       Q"The IP address of the name server identified by
         this row of the table."                      L"Queries sent to the name server identified by this row
         of the table are limited to those for names in the name
         subtree identified by this variable.  If no such
         limitation applies, the value of this variable is the
         name of the root domain (a DNS name consisting of a
         single zero octet)."                       h"The class of DNS queries that will be sent to the server
         identified by this row of the table."                       \"The row status variable, used according to
      row installation and removal conventions."                      �"Read-Only MIB for 'fixed' DNS names.
         when a DNS entry is fixed, a refresh operation is invoked periodically,
         to make sure the entry is kept 'warm' in the DNS cache.
         if the refresh operation fails, the DNSCL will enter a polling state,
         and will retry to resolve the entry again in constant intervals.
         polling-interval duration for unresolved entries is configurable
         by MIB scalar 'rlDnsClMinPollingInterval'."                       $"The row definition for this table."                       "DNS name of FIXED domain name"                       w"requested type of Resource Record
       for the current resolved fixed entry.
       for e.g - A (IPv4), AAAA (IPv6)"                       �"Name of the RR at this row in the table.  This is
       identical to the rlDnsClv2FixedName variable, except that
       character case is preserved in this variable, per DNS
       conventions." "RFC-1035 section 2.3.3."                     Q"current state of fixed entry.
       unresolved entries are in 'polling' state."                       3"Number of 'fix' requests for this DNS name & type"                       '"Remaining TTL of resolved fixed entry"                       3"Remaining time-to-refresh of resolved fixed entry"                       ;"Remaining polling-interval time of unresolved fixed entry"                      >"action MIB for clearing DNS cache tables,
        'static' option will clear all statically configured hostname-to-IP mappings,
        'dynamic' option will clear both negative & positive cache from dynamic (DNS) entries,
        'all' will clear all entries (static & dynamic) in static, positive & negative cache."                       u"Unified DNS Cache Table (static,dynamic & fixed entries).
       This is a read-only MIB for presentation purposes."                       $"The row definition for this table."                       "The requested domain name"                       0"The cache entry source (static/dynamic/fixed)."                       &"The state of the current cache entry"                       �"IP address type of the Resource Record in the cache which is
       identified in this row of the table.
       for negative/unresolved entries the 'noResolution' value is returned."                       s"A value which makes entries in the table unique when the
       other index values do not provide a unique index."                       e"The INET address type of rlDnsClv2UnifiedCacheInetAddr,
       for e.g IPv4, IPv6, IPv6z or UNKNOWN"                       *"Resolved IP Address of given Domain-Name"                       �"Time-To-Live of RR in DNS cache.  This is the initial
       TTL value which was received with the RR when it was originally received.
       for unresolved entries, will return the polling interval instead of TTL"                       x"Remaining TTL seconds since RR was received.
       For unresolved entries, will return remaining time till next retry"                       �"Name of the RR at this row in the table.  This is
           identical to the rlDnsClv2UnifiedCacheName variable, except that
           character case is preserved in this variable, per DNS
           conventions." "RFC-1035 section 2.3.3."                     *"MIB's version, the current version is 1."                       6"Enable or Disable the use of the DNS client feature."                       "The domain names table."                       %" The row definition for this table."                       #"The domain name for this ifIndex."                       t"The Domain Name owner. Static if Domain Name defined by user, dhcp
        if received by boot protocol like DHCP."                       \"The row status variable, used according to
      row installation and removal conventions."                       7"The maximum number of retransmissions for each query."                       `"The minimum number of seconds that must elapsed before
         retransmission for each query."                       "The Names table."                       %" The row definition for this table."                       "The host name."                       }"The Host Name Entry owner. Static if  Host Name Entry defined by user, dhcp
        if received by boot protocol like DHCP."                       �"A value which makes entries in the table unique when the
            other index values (rlDnsClNamesName) do not
            provide a unique index."                       "The host IP address"                       ]"The row status variable, used according to
       row installation and removal conventions."                       ^"Augmenting rlDnsResConfigSbeltTable (dns resolver safety belt table)
         for added info"                       S"A row of the table rlDnsResConfigSbeltTable Extended
         by this definition."                       ~"The DNS server Entry owner. Static if DNS server Entry defined by user, dhcp
        if received by boot protocol like DHCP."                       "The Names table."                       %" The row definition for this table."                       "The host name."                       }"The Host Name Entry owner. Static if  Host Name Entry defined by user, dhcp
        if received by boot protocol like DHCP."                       �"A value which makes entries in the table unique when the
            other index values (rlDnsClNamesName) do not
            provide a unique index."                       �"DNS type of the Resource Record in the cache which is
               identified in this row of the table. The user can configure 'a' or 'aaaa' types only."                       �"The address type of rlDnsResNCacheErrInetSource.  Only
               IPv4, IPv4z, IPv6, and IPv6z addresses are expected, or
               unknown(0) if datagrams for all local IP addresses are
               accepted."                       "The host IP address"                       ]"The row status variable, used according to
       row installation and removal conventions."                       �"Table of safety belt information used by the resolver
           when it hasn't got any better idea of where to send a
           query, such as when the resolver is booting or is a stub
           resolver."                      %"An entry in the resolver's Sbelt table.
           Rows may be created or deleted at any time by the DNS
           resolver and by SNMP SET requests.  Whether the values
           changed via SNMP are saved in stable storage across
           `reset' operations is implementation-specific."                       �"The address type of rlDnsResConfigSbeltInetAddr.  Only
           IPv4, IPv4z, IPv6, and IPv6z addresses are expected, or
           unknown(0) if datagrams for all local IP addresses are
           accepted."                       Y"The IP address of the Sbelt name server identified by
           this row of the table."                       �"The DNS name of a Sbelt nameserver identified by this
           row of the table.  A zero-length string indicates that
           the name is not known by the resolver."                      U"Kind of queries resolver will be sending to the name
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
           server."                      V"Queries sent to the name server identified by this row
           of the table are limited to those for names in the name
           subtree identified by this variable.  If no such
           limitation applies, the value of this variable is the
           name of the root domain (a DNS name consisting of a
           single zero octet)."                       j"The class of DNS queries that will be sent to the server
           identified by this row of the table."                       4"Row status column for this row of the Sbelt table."                       n"This table contains information about all the resource
           records currently in the resolver's cache."                       �"An entry in the resolvers's cache.  Rows may be created
           only by the resolver.  SNMP SET requests may be used to
           delete rows."                       �"Owner name of the Resource Record in the cache which is
           identified in this row of the table.  As described in
           RFC-1034, the owner of the record is the domain name
           were the RR is found." "RFC-1034 section 3.6."                     h"DNS class of the Resource Record in the cache which is
           identified in this row of the table."                       g"DNS type of the Resource Record in the cache which is
           identified in this row of the table."                       �"Time-To-Live of RR in DNS cache.  This is the initial
           TTL value which was received with the RR when it was
           originally received."                       ("Elapsed seconds since RR was received."                       �"The address type of rlDnsResCacheRRInetSource.  Only
           IPv4, IPv4z, IPv6, and IPv6z addresses are expected, or
           unknown(0) if datagrams for all local IP addresses are
           accepted."                       6"Host from which RR was received, 0.0.0.0 if unknown."                       �"RDATA portion of a cached RR.  The value is in the
           format defined for the particular DNS class and type of
           the resource record." "RFC-1035 section 3.2.1."                     �"Status column for the resolver cache table.  Since only
           the agent (DNS resolver) creates rows in this table, the
           only values that a manager may write to this variable
           are active(1) and destroy(6)."                       �"A value which makes entries in the table unique when the
           other index values (rlDnsResCacheRRName,
           rlDnsResCacheRRClass, and rlDnsResCacheRRType) do not
           provide a unique index."                       �"Name of the RR at this row in the table.  This is
           identical to the rlDnsResCacheRRName variable, except that
           character case is preserved in this variable, per DNS
           conventions." "RFC-1035 section 2.3.3."                     �"The resolver's negative response cache.  This table
           contains information about authoritative errors that
           have been cached by the resolver."                       �"An entry in the resolver's negative response cache
           table.  Only the resolver can create rows.  SNMP SET
           requests may be used to delete rows."                       5"QNAME associated with a cached authoritative error." "RFC-1034 section 3.7.1."                     E"DNS QCLASS associated with a cached authoritative
           error."                       9"DNS QTYPE associated with a cached authoritative error."                      �"Time-To-Live of a cached authoritative error at the time
           of the error, it should not be decremented by the number
           of seconds since it was received.  This should be the
           TTL as copied from the MINIMUM field of the SOA that
           accompanied the authoritative error, or a smaller value
           if the resolver implements a ceiling on negative
           response cache TTLs." "RFC-1034 section 4.3.4."                     9"Elapsed seconds since authoritative error was received."                       �"The address type of rlDnsResNCacheErrInetSource.  Only
           IPv4, IPv4z, IPv6, and IPv6z addresses are expected, or
           unknown(0) if datagrams for all local IP addresses are
           accepted."                       I"Host which sent the authoritative error, 0.0.0.0 if
           unknown."                      �"The authoritative error that has been cached:

           nonexistantName(1) indicates an authoritative name error
           (RCODE = 3).

           noData(2) indicates an authoritative response with no
           error (RCODE = 0) and no relevant data.

           other(3) indicates some other cached authoritative
           error.  At present, no such errors are known to exist.

           unresolved(4) is used for 'fixed' entries that are currently unresolved."                       �"Status column for the resolver negative response cache
           table.  Since only the agent (DNS resolver) creates rows
           in this table, the only values that a manager may write
           to this variable are active(1) and destroy(6)."                       �"A value which makes entries in the table unique when the
           other index values (rlDnsResNCacheErrQName,
           rlDnsResNCacheErrQClass, and rlDnsResNCacheErrQType) do not
           provide a unique index."                       �"QNAME associated with this row in the table.  This is
           identical to the rlDnsResNCacheErrQName variable, except
           that character case is preserved in this variable, per
           DNS conventions." "RFC-1035 section 2.3.3."                     b"Augmenting rlDnsResConfigSbeltInetTable (dns resolver safety belt table)
         for added info"                       W"A row of the table rlDnsResConfigSbeltInetTable Extended
         by this definition."                       ~"The DNS server Entry owner. Static if DNS server Entry defined by user, dhcp
        if received by boot protocol like DHCP."                       �"The minimum number of seconds that must elapsed between invocations
         of the resolving procedure for fixed DNS entries which are currently
         unresolved."                                  