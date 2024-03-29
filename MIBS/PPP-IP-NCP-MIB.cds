               g"Table containing the IP parameters and
                         statistics for the local PPP entity."                       N"IPCP status information for a particular PPP
                         link."                       �"The operational status of the IP network
                         protocol. If the value of this object is up
                         then the finite state machine for the IP
                         network protocol has reached the Opened state."                      K"The IP compression protocol that the local
                         PPP-IP entity uses when sending packets to the
                         remote PPP-IP entity. The value of this object
                         is meaningful only when the link has reached
                         the open state (pppIpOperStatus is opened)."                      K"The IP compression protocol that the remote
                         PPP-IP entity uses when sending packets to the
                         local PPP-IP entity. The value of this object
                         is meaningful only when the link has reached
                         the open state (pppIpOperStatus is opened)."                      �"The Max-Slot-Id parameter that the remote node
                         has advertised and that is in use on the link.
                         If vj-tcp header compression is not in use on
                         the link then the value of this object shall be
                         0. The value of this object is meaningful only
                         when the link has reached the open state
                         (pppIpOperStatus is opened)."                      �"The Max-Slot-Id parameter that the local node
                         has advertised and that is in use on the link.
                         If vj-tcp header compression is not in use on
                         the link then the value of this object shall be
                         0. The value of this object is meaningful only
                         when the link has reached the open state
                         (pppIpOperStatus is opened)."                       k"Table containing configuration variables for
                         the IPCP for the local PPP entity."                       -"IPCP information for a particular PPP link."                      �"The immediate desired status of the IP network
                         protocol. Setting this object to open will
                         inject an administrative open event into the IP
                         network protocol's finite state machine.
                         Setting this object to close will inject an
                         administrative close event into the IP network
                         protocol's finite state machine."                      �"If none(1) then the local node will not
                         attempt to negotiate any IP Compression option.
                         Otherwise, the local node will attempt to
                         negotiate compression mode indicated by the
                         enumerated value. Changing this object will
                         have effect when the link is next restarted." ["Section 4.0, Van Jacobson TCP/IP Header
                         Compression of RFC1332."                                