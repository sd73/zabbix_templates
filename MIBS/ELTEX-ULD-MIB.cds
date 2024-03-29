I-- -----------------------------------------------------------------------------
-- MIB NAME : Eltex ULD
-- FILE NAME: ELTEX-ULD-V2.mib
-- DATE     : 2013/01/28
-- VERSION  : 1.00
-- PURPOSE  : MIB structure of Unidirectional Link Detection
-- -----------------------------------------------------------------------------
                                     /"The unidirectioanl link detection module MIB." "http://www.eltex.nsk.ru"                   �"A eltexULDLinkStatusChanged notification is sent when a local
       link status has been changed. This event should not be sent
       more then one per second."                     B"The management information of the unidirectional link detection."                       3"A list of information contained in eltexULDTable."                       O"This object indicates the unidirectional link detection configuration status."                      "This object is determined by local and remote port supporting OAM and unidirectional detection.
                                If both local and remote port support OAM and unidirectional detection, it is enabled(1),else it
                                is disabled(2)."                       "This object indicates the mode for unidirectional link detection.
                                  shutdown: if any unidirectional link is detected, disable the port and log an event.
                                  normal: only log an event when a unidirectional link is detected."                       �"This object indicates the neighbor discovery time for unidirectional link detection.
                                 If the discovery time ends, the unidirectional link detection starts."                      �"This object indicates the mode for
						 		   unidirectional link detection protocol.
                                   If true then port is considered to be
                                   UNIDIRECTIONAL if there is no answer
                                   from remote side during discovery
                                   timeout. If false then port is considered to be
                                   UNKNOWN."                       \"This object indicates the link status, which is a result of unidirectional link detection."                      