                                   2"The MIB module for RS-232-like hardware devices.""        Bob Stewart
                Postal: Xyplex, Inc.
                        295 Foster Street
                        Littleton, MA 01460

                   Tel: 508-952-4816
                   Fax: 508-952-4887
                E-mail: rlstewart@eng.xyplex.com"               l"The number of ports (regardless of their current
           state) in the RS-232-like general port table."                       b"A list of port entries.  The number of entries is
           given by the value of rs232Number."                       )"Status and parameter values for a port."                      ."The value of ifIndex for the port.  By convention
           and if possible, hardware port numbers map directly
           to external connectors.  The value for each port must
           remain constant at least from one re-initialization
           of the network management agent to the next."                       "The port's hardware type."                       �"The number of input signals for the port in the
           input signal table (rs232PortInSigTable).  The table
           contains entries only for those signals the software
           can detect and that are useful to observe."                       �"The number of output signals for the port in the
           output signal table (rs232PortOutSigTable).  The
           table contains entries only for those signals the
           software can assert and that are useful to observe."                       �"The port's input speed in bits per second.  Note that
           non-standard values, such as 9612, are probably not allowed
           on most implementations."                       �"The port's output speed in bits per second.  Note that
           non-standard values, such as 9612, are probably not allowed
           on most implementations."                       �"The port's type of input flow control.  'none'
           indicates no flow control at this level.
           'ctsRts' and 'dsrDtr' indicate use of the indicated
           hardware signals."                       �"The port's type of output flow control.  'none'
           indicates no flow control at this level.
           'ctsRts' and 'dsrDtr' indicate use of the indicated
           hardware signals."                       a"A list of asynchronous port entries.  Entries need
           not exist for synchronous ports."                       C"Status and parameter values for an asynchronous
           port."                       b"A unique value for each port.  Its value is the
           same as rs232PortIndex for the port."                       +"The port's number of bits in a character."                       !"The port's number of stop bits."                       -"The port's sense of a character parity bit."                      �"A control for the port's ability to automatically
           sense input speed.

           When rs232PortAutoBaud is 'enabled', a port may
           autobaud to values different from the set values for
           speed, parity, and character size.  As a result a
           network management system may temporarily observe
           values different from what was previously set."                       �"Total number of characters with a parity error,
           input from the port since system re-initialization
           and while the port state was 'up' or 'test'."                       �"Total number of characters with a framing error,
           input from the port since system re-initialization
           and while the port state was 'up' or 'test'."                       �"Total number of characters with an overrun error,
           input from the port since system re-initialization
           and while the port state was 'up' or 'test'."                       a"A list of asynchronous port entries.  Entries need
           not exist for synchronous ports."                       A"Status and parameter values for a synchronous
           port."                       b"A unique value for each port.  Its value is the
           same as rs232PortIndex for the port."                       �"Source of the port's bit rate clock. 'split' means
           the tranmit clock is internal and the receive clock
           is external."                       �"Total number of frames with an invalid frame check
           sequence, input from the port since system
           re-initialization and while the port state was 'up'
           or 'test'."                       �"Total number of frames that failed to be
           transmitted on the port since system
           re-initialization and while the port state was 'up'
           or 'test' because data was not available to the
           transmitter in time."                       �"Total number of frames that failed to be received
           on the port since system re-initialization and while
           the port state was 'up' or 'test' because the
           receiver did not accept the data in time."                       �"Total number of frames that failed to be received
           or transmitted on the port due to loss of modem
           signals since system re-initialization and while the
           port state was 'up' or 'test'."                       �"Number of frames aborted on the port due to
           receiving an abort sequence since system
           re-initialization and while the port state was 'up'
           or 'test'."                      #"The role the device is playing that is using this port.
              dte    means the device is performing the role of
                     data terminal equipment
              dce    means the device is performing the role of
                     data circuit-terminating equipment."                       �"The bit stream encoding technique that is in effect
            for this port.
              nrz    for Non-Return to Zero encoding
              nrzi   for Non-Return to Zero Inverted encoding."                      �"The method used to control the Request To Send (RTS)
            signal.

              controlled  when the DTE is asserts RTS each time
                          data needs to be transmitted and drops
                          RTS at some point after data
                          transmission begins.

                          If rs232SyncPortRole is 'dte', the
                          RTS is an output signal. The device
                          will issue a RTS and wait for a CTS
                          from the DCE before starting to
                          transmit.

                          If rs232SyncPortRole is 'dce', the
                          RTS is an input signal. The device
                          will issue a CTS only after having
                          received RTS and waiting the
                          rs232SyncPortRTSCTSDelay interval.

              constant    when the DTE constantly asserts RTS."                      ""The interval (in milliseconds) that the DCE must wait
            after it sees RTS asserted before asserting CTS.  This
            object exists in support of older synchronous devices
            that cannot recognize CTS within a certain interval
            after it asserts RTS."                      �"The mode of operation of the port with respect to the
            direction and simultaneity of data transfer.
              fdx              when frames on the data link can be
                               transmitted and received at the same
                               time

              hdx              when frames can either be received
                               from the data link or transmitted
                               onto the data link but not at the
                               same time.

              simplex-receive  when frames can only be received on
                               this data link.

              simplex-send     when frames can only be sent on this
                               data link."                       0"The bit pattern used to indicate an idle line."                       �"The minimum number of flag patterns this port needs in
            order to recognize the end of one frame and the start
            of the next.  Plausible values are 1 and 2."                       �"A list of port input control signal entries
           implemented and visible to the software on the port,
           and useful to monitor."                       2"Input control signal status for a hardware port."                       S"The value of rs232PortIndex for the port to which
           this entry belongs."                      ;"Identification of a hardware signal, as follows:

               rts    Request to Send
               cts    Clear to Send
               dsr    Data Set Ready
               dtr    Data Terminal Ready
               ri     Ring Indicator
               dcd    Received Line Signal Detector
               sq     Signal Quality Detector
               srs    Data Signaling Rate Selector
               srts   Secondary Request to Send
               scts   Secondary Clear to Send
               sdcd   Secondary Received Line Signal Detector
           " %"EIA Standard RS-232-C, August 1969."                     "The current signal state."                       b"The number of times the signal has changed from
           'on' to 'off' or from 'off' to 'on'."                       �"A list of port output control signal entries
           implemented and visible to the software on the port,
           and useful to monitor."                       3"Output control signal status for a hardware port."                       S"The value of rs232PortIndex for the port to which
           this entry belongs."                      ;"Identification of a hardware signal, as follows:

               rts    Request to Send
               cts    Clear to Send
               dsr    Data Set Ready
               dtr    Data Terminal Ready
               ri     Ring Indicator
               dcd    Received Line Signal Detector
               sq     Signal Quality Detector
               srs    Data Signaling Rate Selector
               srts   Secondary Request to Send
               scts   Secondary Clear to Send
               sdcd   Secondary Received Line Signal Detector
           " %"EIA Standard RS-232-C, August 1969."                     "The current signal state."                       b"The number of times the signal has changed from
           'on' to 'off' or from 'off' to 'on'."                               j"A collection of objects providing information
                applicable to all RS-232-like interfaces."                 s"A collection of objects providing information
                applicable to asynchronous RS-232-like interfaces."                 r"A collection of objects providing information
                applicable to synchronous RS-232-like interfaces."                 �"A collection of objects providing information
                applicable to synchronous RS-232-like interfaces
                running SDLC."                     j"The compliance statement for SNMPv2 entities
               which have RS-232-like hardware interfaces."   �"The Asynch group is mandatory only for those
                SNMPv2 entities which have asynchronous
                interfaces Rs-232-like." �"The Synch group is mandatory only for those
                SNMPv2 entities which have synchronous
                interfaces Rs-232-like."                