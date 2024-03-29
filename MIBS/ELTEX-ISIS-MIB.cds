     "A Link State PDU Identifier."               /"Do we use 1195 style Metrics or wide metrics."               "Network Entity Title address"               �"Wide Metric for IS Neighbors.  ISO 10589 provides a
             6 bit metric.  Traffic Engineering extensions provide
             24 bit metrics."               "A system ID."               '"Integer sub-range for IS-IS priority."               "Identifies a level."              A"What to do with padding in hello packets?

           - disabled (0) - Disable padding in all hello packets.
           - enabled  (1) - Add padding in all hello packets.
           - adaptive (2) - Enable padding in hello packets before
                            establishing a connection with a neighbor.
          "               "The authentication type."               a"Type used in enabling and disabling a row.
                     Values match those in RFC 2863."               /"The current operational state of ISIS entity."                                                             5"The MIB module for management of the ISIS protocol." "eltex-co.ru"        -- Mon Jun 06 00:00:00 GMT 2019
               b"The set of instances of the Integrated IS-IS
                   protocol existing on the system."                       }"Each row defines information specific to a single
                   instance of the IS-IS protocol existing on the system."  "{ISIS.poi cLNSISISBasic-P (1)}"                     �"The unique identifier of the Integrated IS-IS
                   instance to which this row corresponds.
                   This object follows the index behavior."                       �"At which levels is the Intermediate System
                   running? This object follows the
                   replaceOnlyWhileDisabled behavior." "{ISIS.aoi iSType (2)}"                     O"The ID for this instance of the Integrated IS-IS
                   protocol." "{ISIS.aoi systemId (119)}"                    "The administrative state of this instance of the
                   Integrated IS-IS protocol.  Setting this object to the
                   value 'on' when its current value is 'off' enables operation
                   of this instance of the Integrated IS-IS protocol."                       8"The current operational status of this IS-IS instance."                      '"The state of the IS-IS router.  Turning this to
                   state 'destroy' forces the router to forget all
                   the current configuration.  Setting the state to
                   'notInService' stops protocol processing, but
                   retains the configuration."                       �"Value to place in RemainingLifeTime field of
                   the LSPs we generate.
                   This should be at least 300 seconds greater than
                   eltexIsisSysMaxLSPGenInt."                      �"Maximum interval, in seconds, between generated LSPs
             by this instance of the protocol. This object follows
             the resettingTimer behavior.  The value must be
             greater than any value configured for
             eltexIsisSysLevelMinLSPGenInt, and should be at least 300
             seconds less than eltexIsisSysMaxAge.

             Note that this value is specified in seconds whereas
             eltexIsisSysLevelMinLSPGenInt is specified in milliseconds."                      �"The maximum delay before the Routing Table is
           recalculated following a change to the Link State
           Database.  (Recalculation is delayed to reduce the
           frequency of recalculations of the Routing Table).

           This parameter has units of milliseconds.  A value of
           0 indicates that a routing calculation will
           immediately follow an update to the database."                      !"This parameter can be used to override the routing
           calculation delay indicated by the eltexIsisSysCalcMaxDelay
           parameter when the number of updates to the Link State
           Database reaches a threshold value.

           This parameter specifies the threshold number of updates
           that can be made to the Link State Database such that any
           subsequent update to the database causes a full routing
           calculation to start immediately.

           - 0 indicates that a routing calculation will immediately
             follow an update to the database.

           - 0xFFFFFFFF indicates that this threshold is infinite, and
             hence the timing of a routing calculation is determined
             solely by the configured calculation delay."                      �"This parameter can be used to interrupt a full routing
           calculation when the number of pending updates to the Link
           State Database has reached a threshold value.

           This parameter specifies the threshold number of updates
           that can be made to the Link State Database such that any
           subsequent update to the database causes the current
           routing  calculation to be interrupted, and a new
           calculation to start using an up to date Link State
           Database.

           - 0 indicates that an update to the Link State Database
             will cause any current routing calculation to be
             interrupted and a new one to start.

           - 0xFFFFFFFF indicates that this threshold is infinite, and
             hence no number of pending updates to the database will
             cause a routing calculation to be interrupted."                      �"This parameter limits the number of consecutive times a
           routing calculation can be interrupted by new updates.
           This guarantees that the routing calculation will actually
           complete.

           - 1 indicates that once a calculation has been interrupted
             once, it will not be interrupted again.

           - 0xFFFFFFFF indicates that the calculation can always be
             interrupted."                       �"Enable translation from System ID to hostname.

             Advertise hostname to other Intermediate Systems in the
             Dynamic Hostname TLV."                       U"The set of NET addresses configured on this
                   Intermediate System." %"{ISIS.aoi manualAreaAddresses (10)}"                     ["Each entry contains one NET address manually configured
                   on this system"                       q"A manually configured NET address for this system.  This
                   object follows the index behavior. "                       )"The state of the eltexIsisNetAddrEntry."                       %"The set of hostnames and system ID."                       G"Each entry tracks information about one peer at
           one level."                       #"The System ID of the Router Peer."                       ("The level of this Intermediate System."                       ."The hostname listed in LSP, or NULL if none."                       8"Level specific information about an instance of IS-IS."                       0"Describe variables defined for Area or Domain."                       &"The level that this entry describes."                       �"Minimum interval, in milliseconds, between successive
           generation of LSPs with the same LSPID at this level
           by this instance of the protocol.  This object
           follows the resettingTimer behavior."                       L"Which style of Metric do we generate in our LSPs
           at this level?"                       ;"Authentication type for area/domain level authentication."                       �"Authentication key for area/domain level
           authentication. If the field eltexIsisSysLevelAuthKeyChain
           is set and key chain with this name is present in the
           configuration, then this field is ignored."                       D"Name of key chain for area/domain level
           authentication."                       �"The maximum size of LSPs and SNPs originated by
           this Intermediate System at this level.

           This field can only be changed if the eltexIsisSysAdminState
           field is set to off."                           d"The table of circuits used by each instance of
                   Integrated IS-IS on this system." %"{ISIS.aoi manualAreaAddresses (10)}"                     8"Each entry contains configuration of one IS-IS circuit"                       ^"The value of ifIndex for the interface to which this
                   circuit corresponds."                       )"The state of the eltexIsisNetAddrEntry."                       *"The administrative state of the circuit."                       ("The operational state of this circuit."                       _"Indicates which type of packets will be sent and
                   accepted on this circuit."                       �"Specify if normal transmission and interpretation of IS-IS
           PDUs are suppressed on this circuit. If set to 'true', 
           the interface is included in LSPs but can't set up 
           adjacency with any neighbor router."                       �"Specify interface type like point to point.

           This field can only be changed if the eltexIsisCircAdminState
           field is set to off."                       +"What to do with padding in hello packets?"                       �"Maximum size of PDU that can be sent or received over this
           circuit.

           This field can only be changed if the eltexIsisCircAdminState
           field is set to off."                       :"Level specific information about circuits used by IS-IS."                       8"Each entry contains configuration of one IS-IS circuit"                       &"The level that this entry describes."                       +"The state of the eltexIsisCircLevelEntry."                      X"The metric value of this circuit for this level.

           This metric should not be configured with a zero value
           unless the circuit is a passive circuit.  If a non-passive
           circuit is configured with a zero metric, it is treated as
           having metric 1 for LSP generation and SPF calculation
           purposes."                       7"Authentication type for circuit level authentication."                       �"Authentication key for circuit level authentication.
            If the field eltexIsisCircLevelAuthKeyChain is set
            and key chain with this name is present in the
            configuration, then this field is ignored."                       5"Name of key chain for circuit level authentication."                       3"The operational values of level-specific circuit."                       Q"Each entry contains operational values of one
                   IS-IS circuit."                       2"The metric value of this circuit for this level."                           3"The table of adjacencies to Intermediate Systems."                       f"Each entry corresponds to one adjacency to an
                   Intermediate System on this system."                       �"A unique value identifying the IS adjacency from all
                   other such adjacencies on this circuit. This value is
                   automatically assigned by the system when the adjacency
                   is created."                       "The state of the adjacency."  "{ISIS.aoi adjacencyState (78)}"                     �"The 3Way state of the adjacency.  These are picked
                   to match the historical on-the-wire representation
                   of the 3Way state, and are not intended to match
                   eltexIsisISAdjState." "{ RFC 3373 }"                     -"The SNPA address of the neighboring system." &"{ISIS.aoi neighbourSNPAAddress (79)}"                     %"The type of the neighboring system." %"{ISIS.aoi neighbourSystemType (80)}"                     J"The system ID of the neighboring Intermediate
                   System." $"{ISIS.aoi neighbourSystemIds (83)}"                     k"The 4 byte Extended Circuit ID learned from the
                   Neighbor during 3-way handshake, or 0."                      	"How is the adjacency used?  On a point-to-point link,
                   this might be level1and2, but on a LAN, the usage will
                   be level1 on the adjacency between peers at L1,
                   and level2 for the adjacency between peers at L2."  "{ISIS.aoi adjacencyUsage (82)}"                     �"The holding time in seconds for this adjacency.
                   This value is based on received IIH PDUs and
                   the elapsed time since receipt." "{ISIS.aoi holdingTimer (85)}"                     u"Priority of the neighboring Intermediate System for
                   becoming the Designated Intermediate System." "{ISIS.aoi lANPriority (86)}"                     �"If the eltexIsisISAdjState is in state 'up', the value
                   of sysUpTime when the adjacency most recently
                   entered the state 'up',  or 0 if it has never
                   been in state 'up'."                       �"Does the neighbor support restart signalling?

                   This object is set to 'true' if the peer includes the
                   restart TLV in IIH PDUs."                      D"Is the peer currently restarting?

                   Set to 'notRestarting' if the neighbor is not restarting
                   (is not including a restart TLV in the IIH, or is not setting the
                   RR bit).

                   Set to 'restartingNoHelp' if the neighbor is restarting
                   (is including a restart TLV with the RR bit in IIH PDUs), but
                   the local node is not helping the restart.

                   Set to 'helpingRestart' if the neighbor is restarting and the
                   local node is helping the restart."                      $"Has the peer requested that the adjacency be suppressed?
                   If set to 'true', the adjacency will not be added to the
                   local LSP.

                   This object is set to 'true' if the peer sets the SA bit in
                   the restart TLV in IIH PDUs."                      �"On a broaeltexast circuit, the LAN ID reported by the
                   neighbor for the Designated Intermediate System on this
                   circuit at this level.  For a non-broadcast circuit, or if,
                   for any reason, the neighbor is not partaking in the
                   relevant Designated Intermediate System election process,
                   then the value returned is the zero length OCTET STRING."                       }"The hostname corresponding to eltexIsisISAdjNeighSysID.
                   This is the null string if no hostname is known."                       �"The hostname corresponding to the system ID part of the
                   eltexIsisISAdjNeighLanID object.
                   This is the null string if no hostname is known."                       �"This table contains the set of Area Addresses of
                   neighboring Intermediate Systems as reported in received
                   IIH PDUs." *"{ISIS.aoi areaAddressesOfNeighbour (84)}"                     x"Each entry contains one Area Address reported by a
                   neighboring Intermediate System in its IIH PDUs."                       w"An index for the areas associated with one neighbor.
                   This provides a simple way to walk the table."                       Y"One Area Address as reported in IIH PDUs received from
                   the neighbor."                       �"This table contains the set of IP Addresses of
                   neighboring Intermediate Systems as reported in received
                   IIH PDUs."                       v"Each entry contains one IP Address reported by a
                   neighboring Intermediate System in its IIH PDUs."                       i"An index to this table which identifies the IP addresss
                   to which this entry belongs."                       c"The type of one IP Address as reported in IIH PDUs
                   received from the neighbor."                       W"One IP Address as reported in IIH PDUs received from the
                   neighbor."                           "The table of LSP Headers."                       d"Each entry provides a summary describing an
                   LSP currently stored in the system."                       &"At which level does this LSP appear?"                       d"The 8 byte LSP ID, consisting of the SystemID,
                   Circuit ID, and Fragment Number."                       #"The sequence number for this LSP."                       *"Is this LSP being purged by this System?"                       "The 16 bit Fletcher Checksum."                      �"The remaining lifetime in seconds for this LSP.

                   For a current LSP (eltexIsisLSPZeroLife is 'false'), this
                   indicates the time remaining before the LSP will expire.
                   For an LSP being purged from the system (eltexIsisLSPZeroLife
                   is 'true'), the LSP remains in the database for
                   ZeroAgeLifetime, and this will indicate the time remaining
                   before final deletion of the LSP."                       "The length of this LSP."                       "Flags carried by the LSP."                       �"The hostname corresponding to the system ID part of the
                   eltexIsisLSPID object.

                   This is the null string if no hostname is known."                      