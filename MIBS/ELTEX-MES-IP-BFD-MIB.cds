     "A common BFD diagnostic code."               )"The BFD interval delay in milliseconds."               "A common BFD state code."                                 <"This private MIB module defines End of Eltex private MIBs." "www.eltex.nsk.ru" "201403280000Z" "Initial revision."              F"The BFD Session parameter configuration table allows static
                 configuration of BFD session parameters.
                 Changing of any configuration parameter in this entry will 
                 cause an automatic BFD session restart and may result in L3
                 routing protocol adjacency restart."                       }"BFD Session parameter configuration which applies to
                 BFD sessions matching the identification information."                       j"This object specifies the interface index of the
          interface that this configuration applies to."                      ;"The type of the address of the peer associated with this
          BFD session parameter configuration.

          This object specifies how the value of the
          eltIpBfdSessConfigAddr object should be interpreted.

          A value of unknown(0) is used if the configuration applies
          to all peers"                       �"The address of the peer associated with this BFD session
          parameter configuration.

          This field is only valid if eltIpBfdSessConfigAddrType is
          non-zero.  Otherwise, it should be set to a zero-length
          address."                      "The type of the local IP address associated with this BFD
          session.

          This object specifies how the value of the
          eltIpBfdSessConfigLocalAddr object should be interpreted.

          Only values unknown(0), ipv4(1) or ipv6(2) have to be
          supported."                       �"This object specifies the local IP address associated with
          this BFD session.

          This field is only valid if eltIpBfdSessConfigLocalAddrType
          is non-zero.  Otherwise, it should be set to a zero-length
          address."                       W"This variable is used to create, modify, and/or
          delete a row in this table."                       �"This object specifies the minimum interval, in
          milliseconds, that the local system would like to use
          when transmitting BFD Control packets."                       �"This object specifies the minimum interval, in
          milliseconds, between received BFD Control packets that the
          local system is willing to accept."                       3"This object specifies the Detect time multiplier."                       c"The BFD Session state table allows the user to query BFD
                 protocol session state."                       j"The BFD Session State Table shows the state and
                 dignostics of the BFD sessions created."                       �"The configured interface index of the interface that reaches
                   the peer associated with this BFD protocol session, or zero if
                   no interface index was configured."                       �"The type of the configured address of the peer associated with
                   this BFD protocl session.

                   This object specifies how the value of the
                   eltIpBfdSessStatePeerAddr object should be interpreted."                      "The configured address of the peer associated with this BFD
                   protocol session.

                   This field is only valid if eltIpBfdSessStatePeerAddrType is
                   non-zero.  Otherwise, it should be set to a zero-length
                   address."                      k"The type of the configured local IP address associated with
                  this BFD protocol session.

                  This object specifies how the value of the
                  eltIpBfdSessStateLocalAddr object should be interpreted.

                  Only values unknown(0), ipv4(1) or ipv6(2) have to be
                  supported.

                  A value of unknown(0) is allowed when the outgoing
                  interface is of type point-to-point, the BFD protocol
                  session is not associated with a specific interface, or
                  when the local IP address is not known."                      *"This object specifies the configured local IP address
                  associated with this BFD protocol session.

                  This field is only valid if eltIpBfdSessStateLocalAddrType is
                  non-zero.  Otherwise, it should be set to a zero-length
                  address."                       ;"The session discriminator specified for this BFD session."                       2"The perceived state of the BFD protocol session."                       �"A diagnostic code specifying the local system's reason for
                   the last transition of the BFD protocol session from up(1)
                   to some other state."                      �"The interface index of the interface that reaches the peer
                   associated with this BFD protocol session.  If the peer is
                   not directly connected, then this object has the value
                   zero.

                   If no interface index was configured for the session, then
                   this shows the interface index that is actually being used
                   for the session."                      �"The type of the address of the peer associated with this
                   BFD protocl session.

                   This object specifies how the value of the
                   eltIpBfdSessStateOperPeerAddr object should be interpreted.

                   If no peer address was configured for the session, then
                   this shows the type of the peer address that is actually
                   being used for the session."                      �"The address of the peer associated with this BFD protocol
                   session.

                   This field is only valid if eltIpBfdSessStateOperPeerAddrType
                   is non-zero.  Otherwise, it should be ignored.

                   If no peer address was configured for the session, then
                   this shows the peer address that is actually being used
                   for the session."                      A"The type of the configured local IP address associated
                   with this BFD protocol session.

                   This object specifies how the value of the
                   eltIpBfdSessStateOperLocalAddr object should be interpreted.

                   Only values unknown(0), ipv4(1) or ipv6(2) have to be
                   supported.

                   A value of unknown(0) is allowed when the outgoing
                   interface is of type point-to-point, the BFD protocol
                   session is not associated with a specific interface, or
                   when the local IP address is not known.

                   If no local address was configured for the session, then
                   this shows the type of the local address that is actually
                   being used for the session."                      �"This object specifies the configured local IP address
                   associated with this BFD protocol session.

                   This field is only valid if eltIpBfdSessStateOperLocalAddrType
                   is non-zero.  Otherwise, it should be set to a zero-length
                   address.

                   If no local address was configured for the session, then
                   this shows the local address that is actually being used
                   for the session."                      +"The session discriminator chosen by the remote system for
                   this BFD session.

                   If no remote discriminator was configured for the session,
                   then this shows the remote discriminator that is actually
                   being used for the session."                                  