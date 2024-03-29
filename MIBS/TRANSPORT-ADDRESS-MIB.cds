    �"Denotes a generic transport address.

         A TransportAddress value is always interpreted within the
         context of a TransportAddressType or TransportDomain value.
         Every usage of the TransportAddress textual convention MUST
         specify the TransportAddressType or TransportDomain object
         which provides the context. Furthermore, MIB authors SHOULD
         define a separate TransportAddressType or TransportDomain
         object for each TransportAddress object. It is suggested that
         the TransportAddressType or TransportDomain is logically
         registered before the object(s) which use the
         TransportAddress textual convention if they appear in the
         same logical row.

         The value of a TransportAddress object must always be
         consistent with the value of the associated
         TransportAddressType or TransportDomain object. Attempts
         to set a TransportAddress object to a value which is
         inconsistent with the associated TransportAddressType or
         TransportDomain must fail with an inconsistentValue error.

         When this textual convention is used as a syntax of an
         index object, there may be issues with the limit of 128
         sub-identifiers specified in SMIv2, STD 58. In this case,
         the OBJECT-TYPE declaration MUST include a 'SIZE' clause
         to limit the number of potential instance sub-identifiers."              �"Represents a transport address consisting of an IPv4
         address, a zone index and a port number (as used for
         example by UDP, TCP and SCTP):

          octets       contents         encoding
           1-4         IPv4 address     network-byte order
           5-8         zone index       network-byte order
           9-10        port number      network-byte order

         This textual convention SHOULD NOT be used directly in object
         definitions since it restricts addresses to a specific format.
         However, if it is used, it MAY be used either on its own or
         in conjunction with TransportAddressType or TransportDomain
         as a pair."              p"Represents a transport address consisting of an IPv6
         address and a port number (as used for example by UDP,
         TCP and SCTP):

          octets       contents         encoding
           1-16        IPv6 address     network-byte order
          17-18        port number      network-byte order

         This textual convention SHOULD NOT be used directly in object
         definitions since it restricts addresses to a specific format.
         However, if it is used, it MAY be used either on its own or
         in conjunction with TransportAddressType or TransportDomain
         as a pair."              �"Represents a DNS domain name followed by a colon ':'
         (ASCII character 0x3A) and a port number in ASCII.
         The name SHOULD be fully qualified whenever possible.

         Values of this textual convention are not directly useable as
         transport-layer addressing information, and require runtime
         resolution. As such, applications that write them must be
         prepared for handling errors if such values are not
         supported, or cannot be resolved (if resolution occurs at the
         time of the management operation).

         The DESCRIPTION clause of TransportAddress objects that may
         have TransportAddressDns values must fully describe how (and
         when) such names are to be resolved to IP addresses and vice
         versa.

         This textual convention SHOULD NOT be used directly in object
         definitions since it restricts addresses to a specific format.
         However, if it is used, it MAY be used either on its own or
         in conjunction with TransportAddressType or TransportDomain
         as a pair.

         When this textual convention is used as a syntax of an
         index object, there may be issues with the limit of 128
         sub-identifiers specified in SMIv2, STD 58. In this case,
         the OBJECT-TYPE declaration MUST include a 'SIZE' clause
         to limit the number of potential instance sub-identifiers."              X"A value that represents a transport domain. This is the
         enumerated version of the transport domain registrations
         in this MIB module. The enumerated values have the
         following meaning:

         unknown(0)     unknown transport address type
         udpIpv4(1)     transportDomainUdpIpv4
         udpIpv6(2)     transportDomainUdpIpv6
         udpIpv4z(3)    transportDomainUdpIpv4z
         udpIpv6z(4)    transportDomainUdpIpv6z
         tcpIpv4(5)     transportDomainTcpIpv4
         tcpIpv6(6)     transportDomainTcpIpv6
         tcpIpv4z(7)    transportDomainTcpIpv4z
         tcpIpv6z(8)    transportDomainTcpIpv6z
         sctpIpv4(9)    transportDomainSctpIpv4
         sctpIpv6(10)   transportDomainSctpIpv6
         sctpIpv4z(11)  transportDomainSctpIpv4z
         sctpIpv6z(12)  transportDomainSctpIpv6z
         local(13)      transportDomainLocal
         udpDns(14)     transportDomainUdpDns
         tcpDns(15)     transportDomainTcpDns
         sctpDns(16)    transportDomainSctpDns

         This textual convention can be used to represent transport
         domains in situations where a syntax of TransportDomain is
         unwieldy (for example, when used as an index).

         The usage of this textual convention implies that additional
         transport domains can only be supported by updating this MIB
         module. This extensibility restriction does not apply for the
         TransportDomain textual convention which allows MIB authors
         to define additional transport domains independently in
         other MIB modules."              p"Represents a transport address consisting of an IPv4
         address and a port number (as used for example by UDP,
         TCP and SCTP):

          octets       contents         encoding
           1-4         IPv4 address     network-byte order
           5-6         port number      network-byte order

         This textual convention SHOULD NOT be used directly in object
         definitions since it restricts addresses to a specific format.
         However, if it is used, it MAY be used either on its own or
         in conjunction with TransportAddressType or TransportDomain
         as a pair."              �"Represents a transport address consisting of an IPv6
         address, a zone index and a port number (as used for
         example by UDP, TCP and SCTP):

          octets       contents         encoding
           1-16        IPv6 address     network-byte order
          17-20        zone index       network-byte order
          21-22        port number      network-byte order

         This textual convention SHOULD NOT be used directly in object
         definitions since it restricts addresses to a specific format.
         However, if it is used, it MAY be used either on its own or
         in conjunction with TransportAddressType or TransportDomain
         as a pair."               �"A value that represents a transport domain.

         Some possible values, such as transportDomainUdpIpv4, are
         defined in this module.  Other possible values can be
         defined in other MIB modules."             6"Protocol Independent Interfaces (IEEE POSIX 1003.1g)"�"Represents a POSIX Local IPC transport address:

          octets       contents                   encoding
           all         POSIX Local IPC address    string

         The Posix Local IPC transport domain subsumes UNIX domain
         sockets.

         This textual convention SHOULD NOT be used directly in object
         definitions since it restricts addresses to a specific format.
         However, if it is used, it MAY be used either on its own or
         in conjunction with TransportAddressType or TransportDomain
         as a pair.

         When this textual convention is used as a syntax of an
         index object, there may be issues with the limit of 128
         sub-identifiers specified in SMIv2, STD 58. In this case,
         the OBJECT-TYPE declaration MUST include a 'SIZE' clause
         to limit the number of potential instance sub-identifiers."                                         �"This MIB module provides commonly used transport
         address definitions.

         Copyright (C) The Internet Society (2002). This version of
         this MIB module is part of RFC 3419; see the RFC itself for
         full legal notices." �"Juergen Schoenwaelder (Editor)
         TU Braunschweig
         Bueltenweg 74/75
         38106 Braunschweig, Germany
         Phone: +49 531 391-3289
         EMail: schoenw@ibr.cs.tu-bs.de

         Send comments to <mibs@ops.ietf.org>." "200211010000Z" )"Initial version, published as RFC 3419."                   �"The UDP over IPv4 transport domain.  The corresponding
         transport address is of type TransportAddressIPv4 for
         global IPv4 addresses."               �"The UDP over IPv6 transport domain.  The corresponding
         transport address is of type TransportAddressIPv6 for
         global IPv6 addresses."               �"The UDP over IPv4 transport domain.  The corresponding
         transport address is of type TransportAddressIPv4z for
         scoped IPv4 addresses with a zone index."               �"The UDP over IPv6 transport domain.  The corresponding
         transport address is of type TransportAddressIPv6z for
         scoped IPv6 addresses with a zone index."               �"The TCP over IPv4 transport domain.  The corresponding
         transport address is of type TransportAddressIPv4 for
         global IPv4 addresses."               �"The TCP over IPv6 transport domain.  The corresponding
         transport address is of type TransportAddressIPv6 for
         global IPv6 addresses."               �"The TCP over IPv4 transport domain.  The corresponding
         transport address is of type TransportAddressIPv4z for
         scoped IPv4 addresses with a zone index."               �"The TCP over IPv6 transport domain.  The corresponding
         transport address is of type TransportAddressIPv6z for
         scoped IPv6 addresses with a zone index."              	"The SCTP over IPv4 transport domain.  The corresponding
         transport address is of type TransportAddressIPv4 for
         global IPv4 addresses. This transport domain usually
         represents the primary address on multihomed SCTP
         endpoints."              	"The SCTP over IPv6 transport domain.  The corresponding
         transport address is of type TransportAddressIPv6 for
         global IPv6 addresses. This transport domain usually
         represents the primary address on multihomed SCTP
         endpoints."              "The SCTP over IPv4 transport domain.  The corresponding
         transport address is of type TransportAddressIPv4z for
         scoped IPv4 addresses with a zone index. This transport
         domain usually represents the primary address on
         multihomed SCTP endpoints."              "The SCTP over IPv6 transport domain.  The corresponding
         transport address is of type TransportAddressIPv6z for
         scoped IPv6 addresses with a zone index. This transport
         domain usually represents the primary address on
         multihomed SCTP endpoints."               �"The Posix Local IPC transport domain. The corresponding
         transport address is of type TransportAddressLocal.

         The Posix Local IPC transport domain incorporates the
         well-known UNIX domain sockets."               �"The UDP transport domain using fully qualified domain
         names. The corresponding transport address is of type
         TransportAddressDns."               �"The TCP transport domain using fully qualified domain
         names. The corresponding transport address is of type
         TransportAddressDns."               �"The SCTP transport domain using fully qualified domain
         names. The corresponding transport address is of type
         TransportAddressDns."                  