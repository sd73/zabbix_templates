                                                                                           m"This private MIB module is used for communication between 
                      SNA client and SNA server." "www.marvell.com" "201505120000Z" "Initial revision."              �"The MIB allows several SNA clients operating at the same time to 
	             receive different session ids. Get operation on this MIB will return 
				 the next free session id number. An SNA client should then issue SET 
				 operation with the value it received. The response will be one of the 
                 following:
                 - noError.
                 - inconsistentValue in case another client has already used this session id.
				 - resourceUnavailable in case the number of active sessions has already 
				   reached the maximum. 
				 In case of success, a new session events database is allocated for the session id."                      �"This table maintains remote agents and MIBs the SNA client wants to poll. The SNA client can add
     an entry to this table, with an session-id of a currently connected client. Once an entry was added,
     the SNA application will poll the requested MIB in the requested agent. This will be done one time
     only or repeatadly (rlSnaClientAgentPollingEnable is set to TRUE). When the client diesconnects, all
     entries relevant to this client session-id are automatically deleted from the table. "                       %" The row definition for this table."                       P"The session-id of a the client that requests the remote agent's MIB/s polling."                       M"Type of Remote Agent IP address, from which the client wants to poll MIB/s."                       L"IP address of the remote agent, from which the client wants to poll MIB/s."                       N"The name of a MIB table/ MIB scalar the SNA client wants to poll its values."                       �"A bit-mask indicating which fields are requeted to be polled. For each requested
     field, the appropriate bit should be turned on. Empty mask means all entry fields
     should be polled."                       �"The name of a secondary MIB table/ MIB scalar to be polled together with the 
     main MIB. In case the length of this value is 0, no MIB is being specified
     to be polled."                       p"Indicates whether the specified MIB should be polled periodically 
     on the remote agent, or one time only."                       3"The time interval to wait until the next polling."                       ^"The status field of the row. The user may use only 'createAndGo'
     and 'active' statuses."                              