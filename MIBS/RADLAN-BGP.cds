                                           <"The private MIB module definition for RND BGP private MIB." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200406010000Z" "Initial version of this MIB."               -"BGP4 Mib version, the current version is 1."                       n"BGP peer table. Contains one entry per BGP peer,
          information about the connections with BGP peers."                       O"Entry containing information about the connection with
          a BGP peer. "                      �"The row status variable, used according to installation
         and removal conventions for conceptual rows. Setting this
         object to active(1) or createAndGo(4) results in the
         addition of the remote address of the peer.
         Destroying the entry or setting it to notInService(2)
         removes the remote address associated with the peer.
         The use of other values is implementation-dependent."                      �"This value indicates whether the given peer is a
          reflector client of this router, or not.
          A value of client indicates that this peer is a
          reflector client that is not fully meshed with
          other reflector clients. A value of meshedClient
          indicates that the peer is a reflector client and
          is fully meshed with all other clients because
          there is no route reflection. The default value
          is meshedClient."                       W"This value indicates whether the given peer is in
          our confederation or not."                       <"The remote autonomous system number which is configurable."                       |"The configured Cluster-ID of the local router. A
          value of 0.0.0.0 indicates the absence of this
          value."                       �"The local Confederation Identification
              Number. A value of zero (0) indicates the
              absence of this value."                       L"This value indicates whether BGP is enable on
         this router or not."                       c"This value indicates whether route reflection extension is enable on
         this router or not."                       c"This value indicates whether AS confederation extension is enable on
         this router or not."                       g"This value indicates whether route flap dampening extension is enable
         on this router or not."                       b"This value indicates whether BGP communities extension is enable on
         this router or not."                       o"This value indicates whether BGP capabilities negotiation extension
         is enable on this router or not."                       �"The configured Multi-Exit Descriminator of the local router.
            A value of -1 indicates the absence of this attribute."                       y"The configured Local Preference of the local router.
            A value of -1 indicates the absence of this attribute."                       K"The local autonomous system number, which is
               configurable."                       �"The BGP-4 Received Path Attribute Table contains
          information about paths to destination networks
          received from all BGP4 peers."                       ("Information about a path to a network."                      "The Originator-ID identifying the router that initially
                     advertised this destination to a Route Reflector.  A
                     value of 0.0.0.0 indicates the absence of this attribute.
                     This attribute is defined in [RFC2796]."                      �"A sequence of four octet long values representing the
                     reflection path that the route has passed.  Each four
                     octet long value represents the ID of a cluster that
                     the route has traversed.  A length of zero (0) indicates
                     the absence of this attribute.  This attribute is defined
                     in [RFC2796]."                      e"A sequence of four octet long values representing the
                     community that was received with the route.  The values
                     of each of the individual octets may have semantic meaning.
                     A length of zero (0) indicates the absence of this attribute.
                     This attribute is defined in [RFC1997]."                       �"A numeric value that is compared with the penalty. If the penalty
               is greater than the suppress limit, the route is suppressed.
               Default value is 2000."                       �"A configurable numeric value that is compared with the penalty.
               If the penalty is less than the reuse limit, a suppressed route
               that is up will no longer be suppressed. Default value is 750."                       �"A configurable numeric value that describes the time required to
               reduce the penalty by one half. Default value is 15."                       �"A configurable numeric value that describes the maximum time a
               route can be suppressed no matter how unstable it has been prior
               to this period ofstability. Default value is 4*rlBgpHalfLifeTime."                                      