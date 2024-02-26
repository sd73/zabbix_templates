                                                                   ("Management information for 802.3 MAUs."%"WG-URL: http://www.ieee802.org/3/index.html
       WG-EMail: STDS-802-3-MIB@LISTSERV.IEEE.ORG

       Contact: Howard Frazier
       Postal:  3151 Zanker Road
                San Jose, CA 95134
                USA
       Tel:     +1.408.922.8164
       E-mail:  hfrazier@broadcom.com" "201304110000Z" "201102020000Z" A"Revision, based on an earlier version in IEEE Std 802.3.1-2011." O"Initial version, based on an earlier version published 
        as RFC 4836."       -- April 11, 2013
               �"Table of descriptive and status information
                about the MAU(s) attached to the ports of a
                repeater."                       T"An entry in the table, containing information
                about a single MAU."                      �"This variable uniquely identifies the group
                containing the port to which the MAU described
                by this entry is connected.

                Note:  In practice, a group will generally be
                a field-replaceable unit (i.e., module, card,
                or board) that can fit in the physical system
                enclosure, and the group number will correspond
                to a number marked on the physical enclosure.

                The group denoted by a particular value of this
                object is the same as the group denoted by the
                same value of rptrGroupIndex." "RFC 2108, rptrGroupIndex."                     �"This variable uniquely identifies the repeater
                port within group rpMauGroupIndex to which the
                MAU described by this entry is connected." "RFC 2108, rptrPortIndex."                     �"This variable uniquely identifies the MAU
                described by this entry from among other
                MAUs connected to the same port
                (rpMauPortIndex)." %"IEEE Std 802.3, 30.5.1.1.1, aMAUID."                    L"This object identifies the MAU type. Values for
                standard IEEE 802.3 MAU types are defined in the
                IANA maintained IANA-MAU-MIB module, as
                OBJECT-IDENTITIES of dot3MauType.
                If the MAU type is unknown, the object identifier
                zeroDotZero is returned." '"IEEE Std 802.3, 30.5.1.1.2, aMAUType."                    	"The current state of the MAU. This object may
                  be implemented as a read-only object by those
                  agents and MAUs that do not implement software
                  control of the MAU state. Some agents may not
                  support setting the value of this object to some
                  of the enumerated values.

                  The value other(1) is returned if the MAU is in
                  a state other than one of the states 2 through
                  6.
                  The value unknown(2) is returned when the MAU's
                  true state is unknown; for example, when it is
                  being initialized.

                  A MAU in the operational(3) state is fully
                  functional; it operates, and passes signals to its
                  attached DTE or repeater port in accordance to
                  its specification.

                  A MAU in standby(4) state forces DI and CI to
                  idle, and the media transmitter to idle or fault,
                  if supported. Standby(4) mode only applies to
                  link type MAUs. The state of
                  rpMauMediaAvailable is unaffected.

                  A MAU in shutdown(5) state assumes the same
                  condition on DI, CI, and the media transmitter,
                  as though it were powered down or not connected.
                  The MAU may return other(1) value for the
                  rpMauJabberState and rpMauMediaAvailable objects
                  when it is in this state. For an AUI, this
                  state will remove power from the AUI.

                  Setting this variable to the value reset(6)
                  resets the MAU in the same manner as a
                  power-off, power-on cycle of at least one-half
                  second would. The agent is not required to
                  return the value reset(6).

                  Setting this variable to the value
                  operational(3), standby(4), or shutdown(5)
                  causes the MAU to assume the respective state,
                  except that setting a mixing-type MAU or an AUI
                  to standby(4) will cause the MAU to enter the
                  shutdown state." �"IEEE Std 802.3, 30.5.1.1.7, aMAUAdminState,
                  30.5.1.2.2, acMAUAdminControl, and 30.5.1.2.1,
                  acResetMAU."                    9"This object identifies Media Available state of
                  the MAU, complementary to the rpMauStatus. Values
                  for the standard IEEE 802.3 Media Available states
                  are defined in the IANA maintained IANA-MAU-MIB
                  module, as IANAifMauMediaAvailable TC." ."IEEE Std 802.3, 30.5.1.1.4, aMediaAvailable."                    �"A count of the number of times that
                  rpMauMediaAvailable for this MAU instance leaves
                  the state available(3).

                  Discontinuities in the value of this counter can
                  occur at re-initialization of the management
                  system and at other times, as indicated by the
                  value of rptrMonitorPortLastChange." g"IEEE Std 802.3, 30.5.1.1.5, aLoseMediaCounter.
                  RFC 2108, rptrMonitorPortLastChange"                    F"The value other(1) is returned if the jabber
                  state is not 2, 3, or 4. The agent shall
                  return other(1) for MAU type dot3MauTypeAUI.

                  The value unknown(2) is returned when the MAU's
                  true state is unknown; for example, when it is
                  being initialized.

                  If the MAU is not jabbering the agent returns
                  noJabber(3). This is the 'normal' state.

                  If the MAU is in jabber state the agent returns
                  the jabbering(4) value." 1"IEEE Std 802.3, 30.5.1.1.6, aJabber.jabberFlag."                    w"A count of the number of times that
                  mauJabberState for this MAU instance enters the
                  state jabbering(4). For MAUs of type
                  dot3MauTypeAUI, dot3MauType100BaseT4,
                  dot3MauType100BaseTX, dot3MauType100BaseFX, and
                  all 1000 Mb/s types, this counter will
                  indicate zero.

                  Discontinuities in the value of this counter can
                  occur at re-initialization of the management
                  system and at other times, as indicated by the
                  value of rptrMonitorPortLastChange." k"IEEE Std 802.3, 30.5.1.1.6, aJabber.jabberCounter.
                  RFC 2108, rptrMonitorPortLastChange"                    �"A count of the number of false carrier events
                  during IDLE in 100BASE-X links. This counter
                  does not increment at the symbol rate. It can
                  increment after a valid carrier completion at a
                  maximum rate of once per 100 ms until the next
                  carrier event.

                  This counter increments only for MAUs of type
                  dot3MauType100BaseT4, dot3MauType100BaseTX,
                  dot3MauType100BaseFX, and all 1000 Mb/s types.

                  For all other MAU types, this counter will
                  indicate zero.

                  The approximate minimum time for rollover of
                  this counter is 7.4 hours.

                  Discontinuities in the value of this counter can
                  occur at re-initialization of the management
                  system and at other times, as indicated by the
                  value of rptrMonitorPortLastChange." e"IEEE Std 802.3, 30.5.1.1.10, aFalseCarriers.
                  RFC 2108, rptrMonitorPortLastChange"                     o"Information about the external jacks attached
                  to MAUs attached to the ports of a repeater."                       ["An entry in the table, containing information
                  about a particular jack."                       �"This variable uniquely identifies the jack
                  described by this entry from among other jacks
                  attached to the same MAU (rpMauIndex)."                       Y"The jack connector type, as it appears on the
                  outside of the system."                           g"Table of descriptive and status information
                  about MAU(s) attached to an interface."                       V"An entry in the table, containing information
                  about a single MAU."                       �"This variable uniquely identifies the interface
                  to which the MAU described by this entry is
                  connected." "RFC 2863, ifIndex"                     �"This variable uniquely identifies the MAU
                  described by this entry from among other MAUs
                  connected to the same interface (ifMauIfIndex)." %"IEEE Std 802.3, 30.5.1.1.1, aMAUID."                    0"This object identifies the MAU type. Values for
                standard IEEE 802.3 MAU types are defined in the
                IANA maintained IANA-MAU-MIB module, as
                OBJECT-IDENTITIES of dot3MauType.
                If the MAU type is unknown, the object identifier
                zeroDotZero is returned.

                This object represents the operational type of
                the MAU, as determined by either 1) the result
                of the Auto-Negotiation function or 2) if
                Auto-Negotiation is not enabled or is not
                implemented for this MAU, by the value of the
                object ifMauDefaultType. In case 2), a set to
                the object ifMauDefaultType will force the MAU
                into the new operating mode." '"IEEE Std 802.3, 30.5.1.1.2, aMAUType."                    	"The current state of the MAU. This object may
                  be implemented as a read-only object by those
                  agents and MAUs that do not implement software
                  control of the MAU state. Some agents may not
                  support setting the value of this object to some
                  of the enumerated values.

                  The value other(1) is returned if the MAU is in
                  a state other than one of the states 2 through
                  6.

                  The value unknown(2) is returned when the MAU's
                  true state is unknown; for example, when it is
                  being initialized.

                  A MAU in the operational(3) state is fully
                  functional; it operates, and passes signals to its
                  attached DTE or repeater port in accordance to
                  its specification.

                  A MAU in standby(4) state forces DI and CI to
                  idle and the media transmitter to idle or fault,
                  if supported. Standby(4) mode only applies to
                  link type MAUs. The state of
                  ifMauMediaAvailable is unaffected.

                  A MAU in shutdown(5) state assumes the same
                  condition on DI, CI, and the media transmitter,
                  as though it were powered down or not connected.
                  The MAU may return other(1) value for the
                  ifMauJabberState and ifMauMediaAvailable objects
                  when it is in this state. For an AUI, this
                  state will remove power from the AUI.

                  Setting this variable to the value reset(6)
                  resets the MAU in the same manner as a
                  power-off, power-on cycle of at least one-half
                  second would. The agent is not required to
                  return the value reset(6).

                  Setting this variable to the value
                  operational(3), standby(4), or shutdown(5)
                  causes the MAU to assume the respective state,
                  except that setting a mixing-type MAU or an AUI
                  to standby(4) will cause the MAU to enter the
                  shutdown state." �"IEEE Std 802.3, 30.5.1.1.7, aMAUAdminState,
                  30.5.1.2.2, acMAUAdminControl, and 30.5.1.2.1,
                  acResetMAU."                    9"This object identifies Media Available state of
                  the MAU, complementary to the ifMauStatus. Values
                  for the standard IEEE 802.3 Media Available states
                  are defined in the IANA maintained IANA-MAU-MIB
                  module, as IANAifMauMediaAvailable TC." ."IEEE Std 802.3, 30.5.1.1.4, aMediaAvailable."                    �"A count of the number of times that
                  ifMauMediaAvailable for this MAU instance leaves
                  the state available(3).

                  Discontinuities in the value of this counter can
                  occur at re-initialization of the management
                  system and at other times, as indicated by the
                  value of ifCounterDiscontinuityTime." i"IEEE Std 802.3, 30.5.1.1.5, aLoseMediaCounter.
                  RFC 2863, ifCounterDiscontinuityTime."                    F"The value other(1) is returned if the jabber
                  state is not 2, 3, or 4. The agent shall
                  return other(1) for MAU type dot3MauTypeAUI.

                  The value unknown(2) is returned when the MAU's
                  true state is unknown; for example, when it is
                  being initialized.

                  If the MAU is not jabbering the agent returns
                  noJabber(3). This is the 'normal' state.

                  If the MAU is in jabber state the agent returns
                  the jabbering(4) value." 1"IEEE Std 802.3, 30.5.1.1.6, aJabber.jabberFlag."                    "A count of the number of times that
                  mauJabberState for this MAU instance enters the
                  state jabbering(4). This counter will
                  indicate zero for MAUs of type dot3MauTypeAUI
                  and those of speeds above 10 Mb/s.

                  Discontinuities in the value of this counter can
                  occur at re-initialization of the management
                  system and at other times, as indicated by the
                  value of ifCounterDiscontinuityTime." m"IEEE Std 802.3, 30.5.1.1.6, aJabber.jabberCounter.
                  RFC 2863, ifCounterDiscontinuityTime."                    "A count of the number of false carrier events
                  during IDLE in 100BASE-X and 1000BASE-X links.

                  For all other MAU types, this counter will
                  indicate zero. This counter does not
                  increment at the symbol rate.

                  It can increment after a valid carrier
                  completion at a maximum rate of once per 100 ms
                  for 100BASE-X and once per 10us for 1000BASE-X
                  until the next CarrierEvent.

                  This counter can roll over very quickly. A
                  management station is advised to poll the
                  ifMauHCFalseCarriers instead of this counter in
                  order to avoid loss of information.

                  Discontinuities in the value of this counter can
                  occur at re-initialization of the management
                  system and at other times, as indicated by the
                  value of ifCounterDiscontinuityTime." g"IEEE Std 802.3, 30.5.1.1.10, aFalseCarriers.
                  RFC 2863, ifCounterDiscontinuityTime."                    5"This object identifies the default
                  administrative baseband MAU type to be used in
                  conjunction with the operational MAU type
                  denoted by ifMauType.

                  The set of possible values for this object is
                  the same as the set defined for the ifMauType
                  object.

                  This object represents the
                  administratively-configured type of the MAU. If
                  Auto-Negotiation is not enabled or is not
                  implemented for this MAU, the value of this
                  object determines the operational type of the
                  MAU. In this case, a set to this object will
                  force the MAU into the specified operating mode.

                  If Auto-Negotiation is implemented and enabled
                  for this MAU, the operational type of the MAU
                  is determined by Auto-Negotiation, and the value
                  of this object denotes the type to which the MAU
                  will automatically revert if/when
                  Auto-Negotiation is later disabled.

                  It may be necessary to provide for underlying hardware 
                  implementations which do not follow the exact behavior 
                  specified above. 
                  In particular, when ifMauAutoNegAdminStatus transitions 
                  from enabled to disabled, the agent implementation shall
                  verify that the operational type of the MAU 
                  (as reported by ifMauType) correctly transitions to
                  the value specified by this object, rather than
                  continuing to operate at the value earlier
                  determined by the Auto-Negotiation function." 5"IEEE Std 802.3, 30.5.1.1.1, aMAUID, and 22.2.4.1.4."                     d"This object indicates whether or not
                  Auto-Negotiation is supported on this MAU."                      k"A value that uniquely identifies the set of
                  possible IEEE 802.3 types that the MAU could be.
                  If Auto-Negotiation is present on this MAU, this
                  object will map to ifMauAutoNegCapabilityBits.

                  Note that this MAU may be capable of operating
                  as a MAU type that is beyond the scope of this
                  MIB. This is indicated by returning the
                  bit value bOther in addition to any bit values
                  for standard capabilities that are listed in the
                  IANAifMauTypeListBits TC."                      v"A count of the number of false carrier events
                  during IDLE in 100BASE-X and 1000BASE-X links.

                  For all other MAU types, this counter will
                  indicate zero. This counter does not
                  increment at the symbol rate.

                  This counter is a 64-bit version of
                  ifMauFalseCarriers. Since the 32-bit version of
                  this counter can roll over very quickly,
                  management stations are advised to poll the
                  64-bit version instead, in order to avoid loss
                  of information.

                  Discontinuities in the value of this counter can
                  occur at re-initialization of the management
                  system and at other times, as indicated by the
                  value of ifCounterDiscontinuityTime." g"IEEE Std 802.3, 30.5.1.1.10, aFalseCarriers.
                  RFC 2863, ifCounterDiscontinuityTime."                    �"Generalized nonresettable counter. This counter 
                   has a maximum increment rate of 25 000 000
                   counts per second for 100 Mb/s implementations and 
                   125 000 000 counts per second for 1000 Mb/s 
                   implementations.

                   For 100 Mb/s operation it is a count of the number 
                   of events that cause the PHY to indicate 'Data
                   reception with errors' on the MII (see IEEE Std 802.3 
                   Table 22?2). 
                  
                   For 1000 Mb/s operation it is a count of the
                   number of events that cause the PHY to indicate 'Data 
                   reception error' or 'Carrier Extend Error' on the GMII 
                   (see IEEE Std 802.3, Table 35?2). The contents of this 
                   attribute is undefined when FEC is operating." 3"IEEE Std 802.3, 30.5.1.1.14 aPCSCodingViolations."                    �"A read-only value that indicates if the 
                  PHY supports an optional FEC sublayer for 
                  forward error correction (see IEEE Std 802.3, 65.2 
                  and IEEE Std 802.3, Clause 74).

                  If an IEEE Std 802.3 Clause 45 MDIO Interface to the 
                  PCS is present, then this attribute will map to the 
                  FEC capability register (see IEEE Std 802.3, 45.2.8.2)." *"IEEE Std 802.3, 30.5.1.1.15 aFECAbility."                    "A read-write value that indicates the mode of 
                   operation of the optional FEC sublayer for forward
                   error correction (see IEEE Std 802.3, 65.2 and 
                   IEEE Std 802.3, Clause 74).

                   A GET operation returns the current mode of operation 
                   of the PHY. A SET operation changes the mode of 
                   operation of the PHY to the indicated value. When 
                   IEEE Std 802.3 Clause 73 Auto-Negotiation is enabled
                   a SET operation is not allowed and a GET operation maps 
                   to the variable FEC enabled in Clause 74.
                   
                   If an IEEE Std 802.3 Clause 45 MDIO Interface to the 
                   PCS is present, then this object will map to the FEC 
                   control register (see IEEE Std 802.3 45.2.8.3) for 
                   1000BASE-PX or FEC enable bit in the BASE-R FEC control 
                   register (see IEEE Std 802.3 45.2.1.90)." '"IEEE Std 802.3. 30.5.1.1.16 aFECMode."                    �"********** THIS OBJECT IS DEPRECATED **********

                   Generalized nonresettable counter. This counter 
                   has a maximum increment rate of 1 200 000
                   counts per second for 1000 Mb/s implementations, 
                   and 5 000 000 counts per second for 10 Gb/s
                   implementations.

                   For 1000BASE-PX PHYs or 10GBASE-R PHYs, a count 
                   of corrected FEC blocks. This counter will not 
                   increment for other PHY types.
                   Increment the counter by one for each received block 
                   that is corrected by the FEC function in the PHY.
                   If a Clause 45 MDIO Interface to the PCS is present, 
                   then this object will map to the FEC corrected blocks 
                   counter (see IEEE Std 802.3, 45.2.8.5 and 45.2.1.91)" 2"IEEE Std 802.3. 30.5.1.1.17 aFECCorrectedBlocks."                    �"********** THIS OBJECT IS DEPRECATED **********

                   Generalized nonresettable counter. This counter 
                   has a maximum increment rate of 1 200 000
                   counts per second for 1000 Mb/s implementations, 
                   and 5 000 000 counts per second for 10 Gb/s
                   implementations.

                   For 1000BASE-PX PHYs or 10GBASE-R PHYs, a count 
                   of uncorrectable FEC blocks. This counter will not 
                   increment for other PHY types.
                   Increment the counter by one for each received block 
                   that is determined to be uncorrectable by the FEC 
                   function in the PHY.

                   If a Clause 45 MDIO Interface to the PCS is present, 
                   then this object will map to the FEC uncorrectable 
                   blocks counter (see IEEE Std 802.3 45.2.8.6 and 
                   45.2.1.92)" 6"IEEE Std 802.3. 30.5.1.1.18 aFECUnCorrectableBlocks."                    "The current SNR operating margin measured at the 
                   slicer input for channel A for the 10GBASE-T PMA. 
                   It is reported in units of 0.1 dB to an accuracy of 
                   0.5 dB within the range of -12.7 dB to 12.7 dB. 
                   If an IEEE Std 802.3 Clause 45 MDIO Interface to the 
                   PMA/PMD is present, then this attribute maps to the SNR 
                   operating margin channel A register 
                   (see IEEE Std 802.3, 45.2.1.65)." 0"IEEE Std 802.3, 30.5.1.1.19 aSNROpMarginChnlA."                    "The current SNR operating margin measured at the 
                   slicer input for channel B for the 10GBASE-T PMA. 
                   It is reported in units of 0.1 dB to an accuracy of 
                   0.5 dB within the range of -12.7 dB to 12.7 dB. 
                   If an IEEE Std 802.3 Clause 45 MDIO Interface to the 
                   PMA/PMD is present, then this attribute maps to the SNR 
                   operating margin channel B register 
                   (see IEEE Std 802.3, 45.2.1.66)." 0"IEEE Std 802.3, 30.5.1.1.20 aSNROpMarginChnlB."                    "The current SNR operating margin measured at the 
                   slicer input for channel C for the 10GBASE-T PMA. 
                   It is reported in units of 0.1 dB to an accuracy of 
                   0.5 dB within the range of -12.7 dB to 12.7 dB. 
                   If an IEEE Std 802.3 Clause 45 MDIO Interface to the 
                   PMA/PMD is present, then this attribute maps to the SNR 
                   operating margin channel C register 
                   (see IEEE Std 802.3, 45.2.1.67)." 0"IEEE Std 802.3, 30.5.1.1.21 aSNROpMarginChnlC."                    "The current SNR operating margin measured at the 
                   slicer input for channel D for the 10GBASE-T PMA. 
                   It is reported in units of 0.1 dB to an accuracy of 
                   0.5 dB within the range of -12.7 dB to 12.7 dB. 
                   If an IEEE Std 802.3 Clause 45 MDIO Interface to the 
                   PMA/PMD is present, then this attribute maps to the SNR 
                   operating margin channel D register 
                   (see IEEE Std 802.3, 45.2.1.68)." 0"IEEE Std 802.3, 30.5.1.1.22 aSNROpMarginChnlD."                     �"A read-only list of the possible PHY types for which 
                  the underlying system supports Energy-Efficient Ethernet 
                  (EEE) as defined in IEEE Std 802.3 Clause 78." ."IEEE Std 802.3, 30.5.1.1.23 aEEESupportList."                     �"A count of the number of 10GBASE-T fast retrains 
                   initiated by the local device. The indication reflects 
                   the state of the PHY event counter (see IEEE Std 802.3, 
                   45.2.1.78.2 and 55.4.5.1.)" 2"IEEE Std 802.3, 30.5.1.1.24 aLDFastRetrainCount."                     �"A count of the number of 10GBASE-T fast retrains 
                   initiated by the link partner. The indication reflects 
                   the state of the PHY event counter (see IEEE Std 802.3, 
                   45.2.1.78.1 and 55.4.5.1.)" 2"IEEE Std 802.3, 30.5.1.1.25 aLPFastRetrainCount."                     f"This object indicates whether or not transmit
                  Time Sync is supported on this MAU." 2"IEEE Std 802.3, 30.13.1.1 aTimeSyncCapabilityTX."                     e"This object indicates whether or not receive
                  Time Sync is supported on this MAU." 2"IEEE Std 802.3, 30.13.1.2 aTimeSyncCapabilityRX."                    I"The maximum data delay as specified in IEEE Std 802.3
                   90.7, expressed in units of ns.

                   If an IEEE Std 802.3 Clause 45 MDIO Interface to 
                   PMA/PMD, WIS, PCS, PHY XS, DTE XS and/or TC is 
                   present, then the value stored in this attribute 
                   represents the maximum transmit path data delay 
                   values, consisting of the sum of the values of the 
                   registers in the instantiated sublayers (for each MMD, 
                   in case of multiple instances)" 0"IEEE Std 802.3, 30.13.1.3 aTimeSyncDelayTXmax."                    I"The minimum data delay as specified in IEEE Std 802.3
                   90.7, expressed in units of ns.

                   If an IEEE Std 802.3 Clause 45 MDIO Interface to 
                   PMA/PMD, WIS, PCS, PHY XS, DTE XS and/or TC is 
                   present, then the value stored in this attribute 
                   represents the minimum transmit path data delay 
                   values, consisting of the sum of the values of the 
                   registers in the instantiated sublayers (for each MMD, 
                   in case of multiple instances)" 0"IEEE Std 802.3, 30.13.1.4 aTimeSyncDelayTXmin."                    H"The maximum data delay as specified in IEEE Std 802.3
                   90.7, expressed in units of ns.

                   If an IEEE Std 802.3 Clause 45 MDIO Interface to 
                   PMA/PMD, WIS, PCS, PHY XS, DTE XS and/or TC is 
                   present, then the value stored in this attribute 
                   represents the maximum receive path data delay 
                   values, consisting of the sum of the values of the 
                   registers in the instantiated sublayers (for each MMD, 
                   in case of multiple instances)" 0"IEEE Std 802.3, 30.13.1.5 aTimeSyncDelayRXmax."                    H"The minimum data delay as specified in IEEE Std 802.3
                   90.7, expressed in units of ns.

                   If an IEEE Std 802.3 Clause 45 MDIO Interface to 
                   PMA/PMD, WIS, PCS, PHY XS, DTE XS and/or TC is 
                   present, then the value stored in this attribute 
                   represents the minimum receive path data delay 
                   values, consisting of the sum of the values of the 
                   registers in the instantiated sublayers (for each MMD, 
                   in case of multiple instances)" 0"IEEE Std 802.3, 30.13.1.6 aTimeSyncDelayRXmin."                     d"Information about the external jacks attached
                  to MAUs attached to an interface."                       ["An entry in the table, containing information
                  about a particular jack."                       �"This variable uniquely identifies the jack
                  described by this entry from among other jacks
                  attached to the same MAU."                       Y"The jack connector type, as it appears on the
                  outside of the system."                       c"Table of Per-PCS lane status information
                   about MAUs attached to an interface."                       \"An entry in the table, containing information
                   about a single PCS lane."                      C"This object provides the identification of the 
                    PCS lane for which this ifMauPerPCSLaneStatsEntry
                    is applicable. This object can hold an integer value 
                    from 0 to N-1, where N is the total number of PCS 
                    lanes supported by the given PCS. "                      �"Generalized nonresettable counter. This counter has a 
                  maximum increment rate of 1 200 000 counts per second 
                  for 1000 Mb/s implementations, 5 000 000 counts per 
                  second for 10 Gb/s and 40 Gb/s implementations, and 
                  2 500 000 counts per second for 100 Gb/s implementations.

                  For 1000BASE-PX, 10/40/100GBASE-R PHYs, a count of 
                  corrected FEC blocks received on the PSC lane identified 
                  by ifPCSLaneIndex object. This counter will not increment
                  for other PHY types.

                  Increment the counter by one for each received block that 
                  is corrected by the FE C function in the PHY for the 
                  corresponding lane identified by the ifPCSLaneIndex 
                  object.

                  If a Clause 45 MDIO Interface to the PCS is present, 
                  then this object will map to the FEC corrected blocks 
                  counter for PCS lane number n, identified by the 
                  ifPCSLaneIndex object 
                  (see IEEE Std 802.3 45.2.8.5, 45.2.1.91 , and 45.2.1.93)." "IEEE Std 802.3 30.5.1.1.17"                    "Generalized nonresettable counter. This counter has a 
                    maximum increment rate of 1 200 000 counts per second 
                    for 1000 Mb/s implementations, 5 000 000 counts 
                    per second for 10 Gb/s and 40 Gb/s implementations, 
                    and 2 500 000 counts per second for 100 Gb/s 
                    implementations.

                    For 1000BASE-PX, 10/40/100GBASE-R PHYs, a count of 
                    uncorrectable FEC blocks received on the PSC lane 
                    identified by ifPCSLaneIndex object. This counter will 
                    not increment for other PHY types.

                    Increment the counter by one for each FEC block that 
                    is determined to be uncorrectable by the FEC function 
                    in the PHY for the corresponding lane identified by
                    the ifPCSLaneIndex object.

                    If a Clause 45 MDIO Interface to the PCS is present, 
                    then this object will map to the FEC uncorrectable 
                    blocks counter for PSC lane number n, identified by 
                    the ifPCSLaneIndex object 
                    (see IEEE Std 802.3 45.2.8.6, 45.2.1.92, and 45.2.1.94)." "IEEE Std 802.3 30.5.1.1.18"                    "Generalized nonresettable counter. This counter 
                     has a maximum increment rate of 10 000 counts per 
                     second for 40 Gb/s implementations and 5 000 counts 
                     per second for 100 Gb/ s implementations.

                     For 40/100GBASE-R PHYs, a count of BIP errors on the 
                     PCS lane identified by ifPCSLaneIndex object. This 
                     counter will not increment for other PHY types.

                     Increment the counter by one for each BIP error 
                     detected during alignment marker removal in the 
                     PCS identified by the ifPCSLaneIndex object.

                     If a Clause 45 MDIO Interface to the PCS is 
                     present, then this object will map to the BIP error 
                     counter for PCS lane number n, identified by the 
                     ifPCSLaneIndex object 
                     (see IEEE Std 802.3, 45.2.3.44 and 45.2.3.45)." "IEEE Std 802.3, 30.5.1.1.11"                    "For 40/100GBASE-R PHYs, an array of PCS lane 
                     identifiers. The indices of this array (0 to n?1) 
                     denote the service interface lane number where n is 
                     the number of PCS lanes in use. Each element of 
                     this array contains the PCS lane number for the PCS 
                     lane that has been detected in the corresponding 
                     service interface lane.

                     If a Clause 45 MDIO Interface to the PCS is 
                     present, then this object will map to the Lane 
                     mapping register for PCS lane number n, identified 
                     by the ifPCSLaneIndex object 
                     (see IEEE Std 802.3 45.2.3.46 and 45.2.3.47)." "IEEE Std 802.3 30.5.1.1.12"                        �"A placeholder object to preserve the assignments
                   that follow in the module. The assignment was given
                   to the object broadMauBasicTable in earlier
                   versions of this module. Preserving the assignments that
                   follow is considered important because they are used for
                   the IANA-MAU-MIB to assign as MAU type values." "none"                        �"Configuration and status objects for the
                  Auto-Negotiation function of MAUs attached to
                  interfaces.

                  The ifMauAutoNegTable applies to systems in
                  which Auto-Negotiation is supported on one or
                  more MAUs attached to interfaces. Note that if
                  Auto-Negotiation is present and enabled, the
                  ifMauType object reflects the result of the
                  Auto-Negotiation function."                       �"An entry in the table, containing configuration
                  and status information for the Auto-Negotiation
                  function of a particular MAU."                      "Setting this object to enabled(1) will cause
                  the interface that has the Auto-Negotiation
                  signaling ability to be enabled.

                  If the value of this object is disabled(2) then
                  the interface will act as it would if it had no
                  Auto-Negotiation signaling. Under these
                  conditions, an IEEE 802.3 MAU will immediately
                  be forced to the state indicated by the value of
                  the object ifMauDefaultType.

                  When ifMauAutoNegAdminStatus transitions from enabled
                  to disabled, the agent implementation shall
                  verify that the operational type of the MAU (as
                  reported by ifMauType) correctly transitions to
                  the value specified by the ifMauDefaultType
                  object, rather than continuing to operate at the
                  value earlier determined by the Auto-Negotiation
                  function." k"IEEE Std 802.3, 30.6.1.1.2, aAutoNegAdminState,
                  and 30.6.1.2.2, acAutoNegAdminControl."                    "A value indicating whether the remote end of
                  the link is using Auto-Negotiation signaling. It
                  takes the value detected(1) if and only if,
                  during the previous link negotiation, FLP Bursts
                  were received." I"IEEE Std 802.3, 30.6.1.1.3,
                  aAutoNegRemoteSignaling."                    "A value indicating the current status of the
                  Auto-Negotiation process. The enumeration
                  parallelDetectFail(5) maps to a failure in
                  parallel detection as defined in 28.2.3.1 of
                  IEEE Std 802.3." 1"IEEE Std 802.3, 30.6.1.1.4, aAutoNegAutoConfig."                    x"If the value of this object is set to
                  restart(1) then this will force Auto-Negotiation
                  to begin link renegotiation. If Auto-Negotiation
                  signaling is disabled, a write to this object
                  has no effect.
                  Setting the value of this object to norestart(2)
                  has no effect." L"IEEE Std 802.3, 30.6.1.2.1,
                  acAutoNegRestartAutoConfig."                    �"A value that uniquely identifies the set of
                  capabilities of the local Auto-Negotiation
                  entity. Note that interfaces that support this
                  MIB may have capabilities that extend beyond the
                  scope of this MIB.

                  Note that the local Auto-Negotiation entity may
                  support some capabilities beyond the scope of
                  this MIB. This is indicated by returning the
                  bit value bOther in addition to any bit values
                  for standard capabilities that are listed in the
                  IANAifMauAutoNegCapBits TC." P"IEEE Std 802.3, 30.6.1.1.5,
                  aAutoNegLocalTechnologyAbility."                    �"A value that uniquely identifies the set of
                  capabilities advertised by the local
                  Auto-Negotiation entity.

                  Capabilities in this object that are not
                  available in ifMauAutoNegCapabilityBits cannot
                  be enabled.

                  Note that the local Auto-Negotiation entity may
                  advertise some capabilities beyond the scope of
                  this MIB. This is indicated by returning the
                  bit value bOther in addition to any bit values
                  for standard capabilities that are listed in the
                  IANAifMauAutoNegCapBits TC." U"IEEE Std 802.3, 30.6.1.1.6,
                  aAutoNegAdvertisedTechnologyAbility."                    J"A value that uniquely identifies the set of
                  capabilities received from the remote
                  Auto-Negotiation entity.
                  Note that interfaces that support this MIB may
                  be attached to remote Auto-Negotiation entities
                  that have capabilities beyond the scope of this
                  MIB. This is indicated by returning the bit
                  value bOther in addition to any bit values for
                  standard capabilities that are listed in the
                  IANAifMauAutoNegCapBits TC." S"IEEE Std 802.3, 30.6.1.1.7,
                  aAutoNegReceivedTechnologyAbility."                     �"A value that identifies any local fault
                  indications that this MAU has detected and will
                  advertise at the next Auto-Negotiation
                  interaction for 1000 Mb/s MAUs." U"IEEE Std 802.3, 30.6.1.1.6,
                  aAutoNegAdvertisedTechnologyAbility."                     �"A value that identifies any fault indications
                  received from the far end of a link by the
                  local Auto-Negotiation entity for 1000 Mb/s
                  MAUs." S"IEEE Std 802.3, 30.6.1.1.7,
                  aAutoNegReceivedTechnologyAbility."                        "This trap is sent whenever a managed repeater
                  MAU enters the jabber state.

                  The agent shall limit the generation of
                  consecutive rpMauJabberTraps so that there is at
                  least a five-second gap between them." 3"IEEE Std 802.3, 30.5.1.3.1, nJabber notification."              "This trap is sent whenever a managed interface
                  MAU enters the jabber state.

                  The agent shall limit the generation of
                  consecutive ifMauJabberTraps so that there is at
                  least a five-second gap between them." 3"IEEE Std 802.3, 30.5.1.3.1, nJabber notification."                      G"Compliance for MAUs attached to repeater
                  ports.

                  Note that compliance with this compliance
                  statement requires compliance with the
                  snmpRptrModCompl MODULE-COMPLIANCE statement of
                  the IEEE8023-SNMP-REPEATER-MIB defined in Clause 7."   �"Implementation of this optional group is
                      recommended for MAUs that have 100 Mb/s or
                      greater capability." �"Implementation of this optional group is
                      recommended for MAUs that have one or more
                      external jacks." i"Implementation of this group is recommended
                      for MAUs attached to repeater ports." "Write access is not required."            �"Compliance for MAUs attached to interfaces.

                  Note that compliance with this compliance
                  statement requires compliance with the
                  ifCompliance3 MODULE-COMPLIANCE statement of the
                  IF-MIB (RFC 2863) and the dot3Compliance2
                  MODULE-COMPLIANCE statement of the
                  IEEE8023-EtherLike-MIB defined in Clause 10."   �"Implementation of this optional group is
                      recommended for MAUs that have 100 Mb/s
                      or greater capability." �"Implementation of this group is mandatory
                      for MAUs that have 1000 Mb/s capacity, and
                      is recommended for MAUs that have 100 Mb/s
                      capacity." �"Implementation of this optional group is
                      recommended for MAUs that have one or more
                      external jacks." �"Implementation of this group is mandatory
                      for MAUs that support managed
                      Auto-Negotiation." �"Implementation of this group is mandatory
                      for MAUs that have 1000 Mb/s or greater
                      capability and support managed
                      Auto-Negotiation." e"Implementation of this group is recommended
                      for MAUs attached to interfaces." "Write access is not required." m"Implementation of this optional group is
                       recommended for MAUs that incorporate FEC." �"Implementation of this optional group is
                       recommended for MAUs that report SNR operating
                       margin." ^"Implementation of this group is
                       mandatory for MAUs that support EEE." c"Implementation of this group is
                       mandatory for MAUs that support Time Sync" �"Implementation of this group is
                       mandatory for MAUs that report per-PCS lane
                       statistics."                 �"Basic conformance group for MAUs attached to
                  repeater ports. This group is also the
                  conformance specification for RFC 1515
                  implementations."                 �"Conformance group for MAUs attached to
                  repeater ports with 100 Mb/s or greater
                  capability."                 ^"Conformance group for MAUs attached to
                  repeater ports with managed jacks."                 �"Basic conformance group for MAUs attached to
                  interfaces. This group also provides a
                  conformance specification for RFC 1515
                  implementations."                 Z"Conformance group for MAUs attached to
                  interfaces with managed jacks."                 k"Conformance group for MAUs attached to
                  interfaces with 100 Mb/s or greater capability."                 e"Conformance group for MAUs attached to
                  interfaces with managed Auto-Negotiation."                 o"Conformance group for 1000 Mb/s MAUs attached to
                  interfaces with managed Auto-Negotiation."                 ^"Conformance for high capacity statistics for
                  MAUs attached to interfaces."                 M"Conformance for FEC capable
                  MAUs attached to interfaces."                 a"Conformance for SNR operating margin reporting 
                  MAUs attached to interfaces."                 l"Conformance EEE support and Fast Retrain count 
                   reporting MAUs attached to interfaces."                 e"Conformance Time Sync support and delay 
                   reporting MAUs attached to interfaces."                 a"Conformance Per-PCS lane statistics 
                   reporting MAUs attached to interfaces."                     ""Notifications for repeater MAUs."                     #"Notifications for interface MAUs."                        