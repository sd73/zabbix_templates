                                                               5"This private MIB module defines dot1x private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               *"MIB's version, the current version is 1."                       �"A table that contains the session statistics objects
        for the Authenticator PAE associated with each Port.
        An entry appears in this table for each port that may
        authenticate access to itself."                      !"The session statistics information for an Authenticator
        PAE.  This shows the current values being collected for
        each session that is still in progress, or the final
        values for the last valid session on each port where
        there is no session currently active."                       B"The authentication method used to establish the
        session."                       &"indicate if guest vlan is supported."                       1"specify the guest vlan tag , 0 for non exiting."                       1"the ports that can be members in the guest vlan"                       0"indicate if unauthenticated Vlan is supported."                       X"port belong to vlan in all port authenticated state except force unauthenticated table"                       Y" port belong to vlan in all port authenticated state except force unauthenticated entry"                       ]"The row status variable, used according to
       row installation and removal conventions."                       +"indicate if user based Vlan is supported."                       6"the ports that can be members in the user based vlan"                       �"A table of system level information for each port
        supported by the Port Access Entity.  An entry appears
        in this table for each port of this system."                        "The Port number and mac method"                       H"The value of the 802.1x-based, mac-based and web-based authentication."                       b"Defines if treat VLAN ID that received from Radius attributes
         in Radius-Accept message."                       e"Defines if treat ACL Names that received from Radius attributes
          in Radius-Accept message."                       d"Specifies a time range. When the Time Range is not in effect the port state would be Unauthorized."                       /"Specifies if time range is active now or not."                       �"In case that value is not 0,
         This field will define the VLAN ID in case that it is not received from Radius attributes
         in Radius-Accept message."                       l"Maximum number of authenticated hosts allowed on the interface.
         A value of 0 means no limitation."                       �"Maximum number of allowedlogin attempts on the interface.
         A value of 0 means the infinite number of attemtps.
         The configuration is applied only to Web-Based authentication."                       �"Set the number of seconds that if an authorized client did not send traffic during this period,
         then the client is changed to unauthrized.
         The configuration is applied only to Web-Based authentication."                       3"Number of authorized host in multi-sessions mode."                       �"Open access allows clients or devices to gain network access before authentication is performed.
         In the mode the switch performs failure replies received from a Radius server as success."                       %"Operational control mode of 802.1x."                      8"A table that contains the statistics objects for the
         Authenticator PAE associated with each Port and MAC for
         multisession 802.1x mode of operation.
         An entry appears in this table for each port and MAC that have an
         authentication session currently running under way for them."  "9.4.2 Authenticator Statistics"                     6"The statistics information for an Authenticator PAE."                       "Port Number."                       $"Mac of the authentication session."                       e"The number of valid EAPOL frames of any type
        that have been received by this Authenticator." "9.4.2, EAPOL frames received"                     b"The number of EAPOL frames of any type
        that have been transmitted by this Authenticator." !"9.4.2, EAPOL frames transmitted"                     Y"The number of EAPOL Start frames that have
        been received by this Authenticator." $"9.4.2, EAPOL Start frames received"                     Z"The number of EAPOL Logoff frames that have
        been received by this Authenticator." %"9.4.2, EAPOL Logoff frames received"                     Y"The number of EAP Resp/Id frames that have
        been received by this Authenticator." &"9.4.2, EAPOL Resp/Id frames received"                     �"The number of valid EAP Response frames
        (other than Resp/Id frames) that have been
        received by this Authenticator." '"9.4.2, EAPOL Response frames received"                     ["The number of EAP Req/Id frames that have been
        transmitted by this Authenticator." ("9.4.2, EAPOL Req/Id frames transmitted"                     ~"The number of EAP Request frames
        (other than Rq/Id frames) that have been
        transmitted by this Authenticator." )"9.4.2, EAPOL Request frames transmitted"                     �"The number of EAPOL frames that have been
        received by this Authenticator in which the
        frame type is not recognized." &"9.4.2, Invalid EAPOL frames received"                     �"The number of EAPOL frames that have been received
        by this Authenticator in which the Packet Body
        Length field is invalid." )"9.4.2, EAP length error frames received"                    "A table that contains the diagnostics objects for the
         Authenticator PAE associated with each Port and MAC.
         An entry appears in this table for each port and MAC that have an
         authentication session currently running under way for them." !"9.4.3 Authenticator Diagnostics"                     7"The diagnostics information for an Authenticator PAE."                       "Port Number."                       $"Mac of the authentication session."                       }"Counts the number of times that the state machine
        transitions to the CONNECTING state from any other
        state." "9.4.2, 8.5.4.2.1"                     �"Counts the number of times that the state machine
        transitions from CONNECTING to AUTHENTICATING, as a
        result of an EAP-Response/Identity message being
        received from the Supplicant." "9.4.2, 8.5.4.2.3"                    
"Counts the number of times that the state machine
        transitions from AUTHENTICATING to AUTHENTICATED, as a
        result of the Backend Authentication state machine
        indicating successful authentication of the Supplicant
        (authSuccess = TRUE)." "9.4.2, 8.5.4.2.4"                     �"Counts the number of times that the state machine
        transitions from AUTHENTICATING to HELD, as a result
        of the Backend Authentication state machine indicating
        authentication failure (authFail = TRUE)." "9.4.2, 8.5.4.2.6"                     �"Counts the number of times that the state machine
        transitions from AUTHENTICATING to ABORTING, as a result
        of a reauthentication request (reAuthenticate = TRUE)." "9.4.2, 8.5.4.2.7"                     �"Counts the number of times that the state machine
        transitions from AUTHENTICATING to ABORTING, as a result
        of an EAPOL-Start message being received
        from the Supplicant." "9.4.2, 8.5.4.2.8"                     �"Counts the number of times that the state machine
        transitions from AUTHENTICATED to CONNECTING, as a
        result of a reauthentication request
        (reAuthenticate = TRUE)." "9.4.2, 8.5.4.2.10"                     �"Counts the number of times that the state machine
        transitions from AUTHENTICATED to CONNECTING, as a
        result of an EAPOL-Start message being received from the
        Supplicant." "9.4.2, 8.5.4.2.11"                    2"Counts the number of times that the state machine sends
        an initial Access-Request packet to the Authentication
        server (i.e., executes sendRespToServer on entry to the
        RESPONSE state). Indicates that the Authenticator
        attempted communication with the Authentication Server." "9.4.2, 8.5.6.2.1"                    :"Counts the number of times that the state machine
        receives an initial Access-Challenge packet from the
        Authentication server (i.e., aReq becomes TRUE,
        causing exit from the RESPONSE state). Indicates that
        the Authentication Server has communication with
        the Authenticator." "9.4.2, 8.5.6.2.2"                    8"Counts the number of times that the state machine
        sends an EAP-Request packet (other than an Identity,
        Notification, Failure or Success message) to the
        Supplicant (i.e., executes txReq on entry to the
        REQUEST state). Indicates that the Authenticator chose
        an EAP-method." "9.4.2, 8.5.6.2.3"                    �"Counts the number of times that the state machine
        receives a response from the Supplicant to an initial
        EAP-Request, and the response is something other than
        EAP-NAK (i.e., rxResp becomes TRUE, causing the state
        machine to transition from REQUEST to RESPONSE,
        and the response is not an EAP-NAK). Indicates that
        the Supplicant can respond to the Authenticators
        chosen EAP-method." "9.4.2, 8.5.6.2.4"                    C"Counts the number of times that the state machine
        receives an EAP-Success message from the Authentication
        Server (i.e., aSuccess becomes TRUE, causing a
        transition from RESPONSE to SUCCESS). Indicates that
        the Supplicant has successfully authenticated to
        the Authentication Server." "9.4.2, 8.5.6.2.5"                     �"A table that contains the session statistics objects
        for the Authenticator PAE associated with each Port.
        An entry appears in this table for each port that may
        authenticate access to itself." "9.4.4"                    !"The session statistics information for an Authenticator
        PAE.  This shows the current values being collected for
        each session that is still in progress, or the final
        values for the last valid session on each port where
        there is no session currently active."                       "Port Number."                       $"Mac of the authentication session."                       \"The number of octets received in user data
        frames on this Port during the session."  "9.4.4, Session Octets Received"                     _"The number of octets transmitted in user data
        frames on this Port during the session." #"9.4.4, Session Octets Transmitted"                     R"The number of user data frames received
        on this Port during the session."  "9.4.4, Session Frames Received"                     U"The number of user data frames transmitted
        on this Port during the session." #"9.4.4, Session Frames Transmitted"                     |"A unique identifier for the session, in the
        form of a printable ASCII string of at least
        three characters." "9.4.4, Session Identifier"                     )"The duration of the session in seconds." "9.4.4, Session Time"                     H"The User-Name representing the identity of the
        Supplicant PAE." "9.4.4, Session User Name"                     /"VLAN ID that received from Radius attributes."                       7"First filter ID that received from Radius attributes."                       8"Second filter ID that received from Radius attributes."                       +"The monitor result reason of the session."                       ""The current session method type."                       �"A table that contains the configuration objects for the
        Authenticator PAE associated with each port and MAC.
        An entry appears in this table for each port and MAC that may
        authenticate access to itself." #"9.4.1 Authenticator Configuration"                     A"The configuration information for an Authenticator
        PAE."                       "Port Number."                       $"Mac of the authentication session."                       C"The current value of the Authenticator PAE state
        machine."  "9.4.1, Authenticator PAE state"                     H"The current state of the Backend Authentication
        state machine." %"9.4.1, Backend Authentication state"                     Q"The current value of the controlled Port
        status parameter for the Port." !"9.4.1, AuthControlledPortStatus"                     j"Specify that when 802.1x is globally disabled,
        802.1x BPDU packets would be filtered or bridged."                       ?"Specify ACL error handling for the Radius attributes feature."                       +"indicate the guest vlan timeout interval."                       �"Specify if sending traps when a MAC address is successfully
         authenticated by the 802.1X mac-authentication access control."                       �"Specify if sending traps when MAC address was failed
         in authentication of the 802.1X MAC authentication access control."                       �"A table of system level information for each port
        supported by the Port Access Entity.  An entry appears
        in this table for each port of this system."                       !"The Port number and leagcy mode"                       e"Indicates whether in multiple sessions mode
          work according to legacy devices mode or not."                       s"VLAN Tag of 802.1x monitoring VLAN in the System.
         value of 0 means that the monitoring mode is disabled."                       h"Each bit that is set in this portList represent a port that
         its mib counters should be reset."                       w"Specify if sending traps when a client is set in quiet state
         after the maximum sequential attempts of login."                       k"Specify if sending traps per authentication method
         when a session is successfully authenticated."                       O"Specify if sending traps per authentication method when a session was failed."                       T"A table that contains the locked clients information for Web-based authentication."  "9.4.2 Authenticator Statistics"                     \"The locked clients entry that entered silence period timeout for Web-based authentication."                       "Port Number."                       "Mac of the locked client."                       >"The time that is remained till the expiry of silence period."                       "Row status."                       h"Specify if sending traps for 802.1x supplicant 
         when a session is successfully authenticated."                       e"Specify if sending traps for 802.1x supplicant 
         when a session is failed to authenticated."                       p"Specify if try to activate the pending configuration 
		 of a credential - description, username and password."                       M"A table contains the pending credential information for 802.1x supplicants."                       �"The pending credential entry that holds information such as username and password that can be assigned  
         after it to supplicants."                       4"The credential structure name up to 32 characters."                       r"The pending text description for the specific credential. 
          The description can be up to 80 characters."                       g"The pending username for the specific credential.
          The username can be up to 32 characters ."                       g"The pending password for the specific credential.
          The password can be up to 128 characters."                       )"Row status for the specific credential."                       L"A table contains the active credential information for 802.1x supplicants."                       �"The active credential entry that holds information such as username and password that can be assigned  
         after it to supplicants."                       q"The active text description for the specific credential. 
          The description can be up to 80 characters."                       f"The active username for the specific credential.
          The username can be up to 32 characters ."                       f"The active password for the specific credential.
          The password can be up to 128 characters."                       5"The MD5 of the rldot1xSupplicantCredentialPassword."                       <"A table contains the configuration for 802.1x supplicants."                       %"The supplicant configuration entry."                       /"The supplicant configuration credential name."                       �"Specifies the time interval in seconds during which the supplicant waits for a
         response from the Radius server (SUCCESS or FAIL) before restarts authentication."                       �"Specifies in MAC-Based authentication method 
		 if the EAP MD5-Challenge authentication is used or
		 that only Radius (without EAP) authentication with the Service-Type 
		 attribute equals to Call-Check(10) is used."                       �"Specifies the numbers of ASCII characters between delimiters 
		 in usename format that is MAC address in MAC-Based authentication method."                       g"Specifies the delimiter in usename format that is 
		 MAC address in MAC-Based authentication method."                       �"Specifies that the username is coded in the lower case or in the upper case 
		 in usename format that is MAC address in MAC-Based authentication method."                       n"specify a password that will be used for MAC-Based authentication
          instead of the host MAC address."                       M"specify if try to apply reauthentication on MAC-Based authentication users."                       ("The MD5 of the rldot1xMacAuthPassword."                                          