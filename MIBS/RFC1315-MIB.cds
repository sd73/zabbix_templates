                                   �"This trap indicates that the indicated Virtual
                Circuit  has changed state.  It has either been
                created or invalidated, or has toggled  between
                the active and inactive states."                                                 �"The Parameters for the Data Link Connection Management
            Interface for the frame relay service on this
            interface." 7"Draft American National Standard T1.617-1991, Annex D"                     _"The Parameters for a particular Data Link Con-
                nection Management Interface."                       F"The ifIndex value of the  corresponding  ifEn-
                try."                       �"This variable states which Data  Link  Connec-
                tion Management scheme is active (and by impli-
                cation, what DLCI it uses) on the  Frame  Relay
                interface." ."Draft American National Standard T1.617-1991"                     f"This variable states which address  format  is
                in use on the Frame Relay interface."                       �"This variable states which address  length  in
                octets.  In the case of Q922 format, the length
                indicates the entire length of the address  in-
                cluding the control portion."                       _"This is the number of seconds between  succes-
                sive status enquiry messages." Y"Draft American National  Standard  T1.617-1991,
               Section D.7 Timer T391."                     �"Number of status enquiry intervals  that  pass
                before  issuance  of a full status enquiry mes-
                sage." ["Draft American National  Standard  T1.617-1991,
               Section D.7 Counter N391."                     �"This  is  the  maximum  number  of  unanswered
                Status Enquiries the equipment shall accept be-
                fore declaring the interface down." ]"Draft American National  Standard  T1.617-1991,
               Section D.5.1 Counter N392."                    K"This is the number of status polling intervals
                over which the error threshold is counted.  For
                example, if within 'MonitoredEvents' number  of
                events  the  station  receives 'ErrorThreshold'
                number of errors, the interface  is  marked  as
                down." ]"Draft American National  Standard  T1.617-1991,
               Section D.5.2 Counter N393."                    s"The maximum number of Virtual Circuits allowed
                for  this  interface.   Usually dictated by the
                Frame Relay network.

                In response to a SET, if a value less than zero
                or  higher  than the agent's maximal capability
                is configured, the agent  should  respond  bad-
                Value"                       d"This indicates whether the Frame Relay  inter-
                face is using a multicast service."                       �"A table containing information about specific Data
            Link Connection Identifiers and corresponding virtual
            circuits."                       X"The information regarding a single  Data  Link
                Connection Identifier."                       Z"The ifIndex Value of the ifEntry this  virtual
                circuit is layered onto."                       R"The Data Link Connection Identifier  for  this
                virtual circuit." O"Draft American National  Standard  T1.618-1991,
               Section 3.3.6"                    �"Indicates whether the particular virtual  cir-
                cuit  is operational.  In the absence of a Data
                Link Connection Management  Interface,  virtual
                circuit  entries  (rows) may be created by set-
                ting virtual  circuit  state  to  'active',  or
                deleted by changing Circuit state to 'invalid'.
                Whether or not the row actually  disappears  is
                left  to the implementation, so this object may
                actually read as 'invalid' for  some  arbitrary
                length  of  time.   It is also legal to set the
                state of a virtual  circuit  to  'inactive'  to
                temporarily disable a given circuit."                       �"Number of frames received from the network in-
                dicating  forward  congestion since the virtual
                circuit was created." O"Draft American National  Standard  T1.618-1991,
               Section 3.3.3"                     �"Number of frames received from the network in-
                dicating  backward congestion since the virtual
                circuit was created." O"Draft American National  Standard  T1.618-1991,
               Section 3.3.4"                     _"The number of frames sent  from  this  virtual
                circuit since it was created."                       _"The number of octets sent  from  this  virtual
                circuit since it was created."                       _"Number of frames received  over  this  virtual
                circuit since it was created."                       _"Number of octets received  over  this  virtual
                circuit since it was created."                       �"The value of sysUpTime when the  virtual  cir-
                cuit was created, whether by the Data Link Con-
                nection Management Interface  or  by  a  SetRe-
                quest."                       e"The value of sysUpTime when last there  was  a
                change in the virtual circuit state"                       �"This variable indicates the maximum amount  of
                data,  in  bits,  that  the  network  agrees to
                transfer under normal  conditions,  during  the
                measurement interval." P"Draft American National  Standard  T1.617-1991,
               Section 6.5.19"                   (-- the default indicates no commitment
`"This variable indicates the maximum amount  of
                uncommitted data bits that the network will at-
                tempt to deliver over the measurement interval.

                By default, if not configured when creating the
                entry, the Excess Information Burst Size is set
                to the value of ifSpeed." P"Draft American National  Standard  T1.617-1991,
               Section 6.5.19"                    �"Throughput is the average number of 'Frame Re-
                lay  Information  Field'  bits  transferred per
                second across a user network interface  in  one
                direction, measured over the measurement inter-
                val.

                If the  configured  committed  burst  rate  and
                throughput  are  both non-zero, the measurement
                interval
                T=frCircuitCommittedBurst/frCircuitThroughput.

                If the  configured  committed  burst  rate  and
                throughput  are  both zero, the measurement in-
                terval
                       T=frCircuitExcessBurst/ifSpeed." P"Draft American National  Standard  T1.617-1991,
               Section 6.5.19"                   <-- the default value of Throughput is
-- "no commitment".
 X"A table containing information about Errors on the
            Frame Relay interface."                       L"The error information for a single frame relay
                interface."                       F"The ifIndex Value of the  corresponding  ifEn-
                try."                       L"The type of error that was last seen  on  this
                interface."                      "An octet string containing as much of the  er-
                ror  packet as possible.  As a minimum, it must
                contain the Q.922 Address or  as  much  as  was
                delivered.   It is desirable to include all in-
                formation up to the PDU."                       K"The value of sysUpTime at which the error  was
                detected."                           g"This variable  indicates  whether  the  system
                produces the frDLCIStatusChange trap."                          