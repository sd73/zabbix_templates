                                              �"The MIB module for managing Power Source Equipment
               (PSE) working according to the IEEE 802.af Powered
               Ethernet (DTE Power via MDI) standard.

                The following terms are used throughout this
                MIB module.  For complete formal definitions,
                the IEEE 802.3 standards should be consulted
                wherever possible:

                Group - A recommended, but optional, entity
                defined by the IEEE 802.3 management standard,
                in order to support a modular numbering scheme.
                The classical example allows an implementor to
                represent field-replaceable units as groups of
                ports, with the port numbering matching the
                modular hardware implementation.

              Port - This entity identifies the port within the group
              for which this entry contains information.  The numbering
              scheme for ports is implementation specific.

             Copyright (c) The Internet Society (2003).  This version
             of this MIB module is part of RFC 3621; See the RFC
             itself for full legal notices."5"
          WG Charter:
          http://www.ietf.org/html.charters/hubmib-charter.html

         Mailing lists:
          General Discussion: hubmib@ietf.org
          To Subscribe: hubmib-requests@ietf.org
          In Body: subscribe your_email_address

         Chair: Dan Romascanu
          Avaya
          Tel:  +972-3-645-8414
          Email: dromasca@avaya.com

         Editor: Avi Berger
          PowerDsine Inc.
          Tel:    972-9-7755100 Ext 307
          Fax:    972-9-7755120
          E-mail: avib@PowerDsine.com
         " "200311240000Z" )"Initial version, published as RFC 3621."       -- November 24, 2003
          F" This Notification indicates if Pse Port is delivering or
               not power to the PD.  This Notification SHOULD be sent on
               every status change except in the searching mode.
               At least 500 msec must elapse between notifications
               being emitted by the same object instance."                " This Notification indicate PSE Threshold usage
               indication is on, the usage power is above the
               threshold.  At least 500 msec must elapse between
               notifications being emitted by the same object
               instance."                 �" This Notification indicates PSE Threshold usage indication
               off, the usage power is below the threshold.
               At least 500 msec must elapse between notifications being
               emitted by the same object instance."                    q"A table of objects that display and control the power
            characteristics of power Ethernet ports on a Power Source
            Entity (PSE) device.  This group will be implemented in
            managed power Ethernet switches and mid-span devices.
            Values of all read-write objects in this table are
            persistent at restart/reboot."                       s"A set of objects that display and control the power
               characteristics of a power Ethernet PSE port."                      �"This variable uniquely identifies the group
            containing the port to which a power Ethernet PSE is
            connected.  Group means box in the stack, module in a
            rack and the value 1 MUST be used for non-modular devices.
            Furthermore, the same value MUST be used in this variable,
            pethMainPseGroupIndex, and pethNotificationControlGroupIndex
            to refer to a given box in a stack or module in the rack."                       �"This variable uniquely identifies the power Ethernet PSE
            port within group pethPsePortGroupIndex to which the
            power Ethernet PSE entry is connected."                       �"true (1) An interface which can provide the PSE functions.
         false(2) The interface will act as it would if it had no PSE
         function." 4"IEEE Std 802.3af Section 30.9.1.1.2 aPSEAdminState"                    b"Describes the capability of controlling the power pairs
         functionality to switch pins for sourcing power.
         The value true indicate that the device has the capability
         to control the power pairs.  When false the PSE Pinout
         Alternative used cannot be controlled through the
         PethPsePortAdminEnable attribute." J"IEEE Std 802.3af Section 30.9.1.1.3
       aPSEPowerPairsControlAbility"                    7"Describes or controls the pairs in use.  If the value of
         pethPsePortPowerPairsControl is true, this object is
         writable.
         A value of signal(1) means that the signal pairs
         only are in use.
         A value of spare(2) means that the spare pairs
         only are in use." 4"IEEE Std 802.3af Section 30.9.1.1.4 aPSEPowerPairs"                    W"Describes the operational status of the port PD detection.
         A value of disabled(1)- indicates that the PSE State diagram
         is in the state DISABLED.
         A value of deliveringPower(3) - indicates that the PSE State
         diagram is in the state POWER_ON for a duration greater than
         tlim max (see IEEE Std 802.3af Table 33-5 tlim).
         A value of fault(4) - indicates that the PSE State diagram is
         in the state TEST_ERROR.
         A value of test(5) - indicates that the PSE State diagram is
         in the state TEST_MODE.
         A value of otherFault(6) - indicates that the PSE State
         diagram is in the state IDLE due to the variable
         error_conditions.
         A value of searching(2)- indicates the PSE State diagram is
         in a state other than those listed above." F"IEEE Std 802.3af Section 30.9.1.1.5
       aPSEPowerDetectionStatus"                    �"This object controls the priority of the port from the point
         of view of a power management algorithm.  The priority that
         is set by this variable could be used by a control mechanism
         that prevents over current situations by disconnecting first
         ports with lower power priority.  Ports that connect devices
         critical to the operation of the network - like the E911
         telephones ports - should be set to higher priority."                       �"This counter is incremented when the PSE state diagram
             transitions directly from the state POWER_ON to the
             state IDLE due to tmpdo_timer_done being asserted." C"IEEE Std 802.3af Section 30.9.1.1.11
       aPSEMPSAbsentCounter"                     �"A manager will set the value of this variable to indicate
         the type of powered device that is connected to the port.
         The default value supplied by the agent if no value has
         ever been set should be a zero-length octet string."                      )"Classification is a way to tag different terminals on the
        Power over LAN network according to their power consumption.
        Devices such as IP telephones, WLAN access points and others,
        will be classified according to their power requirements.

        The meaning of the classification labels is defined in the
        IEEE specification.

       This variable is valid only while a PD is being powered,
        that is, while the attribute pethPsePortDetectionStatus
        is reporting the enumeration deliveringPower." E"IEEE Std 802.3af Section 30.9.1.1.6
       aPSEPowerClassification"                     f"This counter is incremented when the PSE state diagram
         enters the state SIGNATURE_INVALID." M"IEEE Std 802.3af Section 30.9.1.1.7
           aPSEInvalidSignatureCounter"                     e"This counter is incremented when the PSE state diagram
             enters the state POWER_DENIED." D"IEEE Std 802.3af Section 30.9.1.1.8
       aPSEPowerDeniedCounter"                     i"This counter is incremented when the PSE state diagram
             enters the state ERROR_DELAY_OVER." A"IEEE Std 802.3af Section 30.9.1.1.9
       aPSEOverLoadCounter"                     j"This counter is incremented when the PSE state diagram
             enters the state ERROR_DELAY_SHORT." ?"IEEE Std 802.3af Section 30.9.1.1.10
       aPSEShortCounter"                     2"See IEEE Std 802.3, 30.9.1.1.12 aPSEActualPower." ."IEEE Std 802.3, 30.9.1.1.12 aPSEActualPower."                     4"See IEEE Std 802.3, 30.9.1.1.13 aPSEPowerAccuracy." 0"IEEE Std 802.3, 30.9.1.1.13 aPSEPowerAccuracy."                     7"See IEEE Std 802.3, 30.9.1.1.14 aPSECumulativeEnergy." 3"IEEE Std 802.3, 30.9.1.1.14 aPSECumulativeEnergy."                        C"A table of objects that display and control attributes
            of the main power source in a PSE  device.  Ethernet
            switches are one example of boxes that would support
            these objects.
            Values of all read-write objects in this table are
            persistent at restart/reboot."                       S"A set of objects that display and control the Main
             power of a PSE. "                      �"This variable uniquely identifies the group to which
           power Ethernet PSE is connected.  Group means (box in
           the stack, module in a rack) and the value 1 MUST be
           used for non-modular devices.  Furthermore, the same
           value MUST be used in this variable, pethPsePortGroupIndex,
           and pethNotificationControlGroupIndex to refer to a
           given box in a stack or module in a rack."                       2"The nominal power of the PSE expressed in Watts."                       )"The operational status of the main PSE."                       *"Measured usage power expressed in Watts."                       �"The usage threshold expressed in percents for
                comparing the measured power and initiating
                an alarm if the threshold is exceeded."                           �"A table of objects that display and control the
            Notification on a PSE  device.
            Values of all read-write objects in this table are
            persistent at restart/reboot."                       8"A set of objects that control the Notification events."                      �"This variable uniquely identifies the group.  Group
            means box in the stack, module in a rack and the value
            1 MUST be used for non-modular devices.  Furthermore,
            the same value MUST be used in this variable,
            pethPsePortGroupIndex, and
            pethMainPseGroupIndex to refer to a given box in a
            stack or module in a rack. "                       �"This object controls, on a per-group basis, whether
             or not notifications from the agent are enabled.  The
             value true(1) means that notifications are enabled; the
             value false(2) means that they are not."                               W"Describes the requirements for conformance to the
               Power Ethernet MIB."   h"The pethMainPseGroup is mandatory for PSE systems
                that implement a main power supply." u"The pethMainPowerNotificationGroup is mandatory for
               PSE systems that implement a main power supply."                 "PSE Port objects."                 "Main PSE Objects. "                 !"Notification Control  Objects. "                 "Pse Port Notifications."                     "Main PSE Notifications."                        