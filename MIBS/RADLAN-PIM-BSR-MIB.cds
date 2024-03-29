     0"The desired administrative state of a MIB row."               �"The current operational state of a MIB row.  This set of values
            is used by many Data Connection products written before 2006."                                                                     �"The (conceptual) table listing the IP multicast group
               prefixes for which the local router is to advertise
               itself as a Candidate-RP."                       L"An entry (conceptual row) in the
                rlPimBsrCandidateRPTable."                       ,"The Inet address type of the Candidate-RP."                      +"The (unicast) address that will be advertised as a
               Candidate-RP.  The InetAddressType is given by the
               rlPimBsrCandidateRPAddressType object.

               If this is not an address on the local router,
               DC-PIM will not advertise it as an C-RP address."                      �"Identifies a standard access list containing the
               set of IP multicast group prefixes for which the
               local router will advertise itself as a Candidate-RP
               with the given RP address.

               If there is any rule in the list with
               aallStdAccessListIncluded set to 'false',
               DC-PIM does not advertise this RP address as a
               Candidate-RP.  Otherwise DC-PIM advertises the
               RP address as a Candidate-RP for every IP multicast
               group prefix corresponding to a rule in the access list
               with row status 'active' and admin status 'up'.

               rlPimBsrCandidateRPGroupPrefixList defaults to an empty string, which
               indicates that no access list has yet been specified.

               rlPimBsrCandidateRPStatus can only be set to 'active' if a
               non-empty string has been specified for
               rlPimBsrCandidateRPGroupPrefixList."                      "If this object is set to TRUE, this group range is
               advertised with this RP as a BIDIR-PIM group range. If
               it is set to FALSE, it is advertised as a PIM-SM group
               range.

               DC-PIM only supports the value FALSE for this object."                      �"The time remaining before the local router next sends
               a Candidate-RP-Advertisement to the elected BSR.

               This will be zero if the C-RP is shutting down or any of
               the following conditions are true:
                - the entity is not active
                - the row is inactive
                - the group prefix list is invalid
                - the configured C-RP address is not local."                       �"The priority for this Candidate RP advertised in
                Candidate-RP-Advertisements.  Numerically higher values
               for this object indicate lower priorities, with the value
               zero denoting the highest priority." #"I-D.ietf-rlPim-sm-bsr section 3.2"                     �"A Candidate RP generates Candidate-RP-Advertisements
               periodically. This object represents the time interval
               in seconds between two consecutive advertisements." 1"I-D.ietf-rlPim-sm-bsr section 3.2 and section 5"                     r"Holdtime for this Candidate RP. The amount of time (in
               seconds) this Candidate-RP entry is valid." #"I-D.ietf-rlPim-sm-bsr section 4.2"                     �"The status of this row, by which new entries may be
               created, or old entries deleted from this table.

               All writable objects in this entry can be modified
               when the status of this entry is active(1)."                              