     "Banner message type."                    �"The private MIB module definition for Banner displays messages in Marvell switching devices.
                  Banner allows users to configure display messages which are displayed on various authentication events.
                  Banner Messages can hold dynamic data such as $(hostname) or $(domain) etc, and display instructions such as: bold, inverse, or blink.
                  Banner Messages can be displayed or hidden with respect to the connection type: via Telnet, SSH or the Console." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200712160000Z" "Initial revision."               '"The table listing the Banner content."                       '"An entry in the rlBannerMessageTable."                       X"This variable identifies the Banner type. There are three types: MOTD, Login and Exec."                      �"This variable identifies a Banner string section in the Banner content.
        The Banner content is limited to 2000 characters. Content is divided into 13 indexed sections. Each section contains 160 octets, except the last used section which can contain less than 160 octets. Once a section of the Banner string contains 160 octets of data, the user can write to the next index. Overwriting is not supported. To delete all Banner content, use the rlBannerMessageClear MIB."                       \"This variable identifies the MIB which holds a section of the Banner content in the table."                       h"The table listing specifying for each connection type which Banner should, or should not be displayed."                       '" An entry in the rlBannerManageTable."                       �"This variable specifies whether the banner type specified
        in the key should or should not be displayed when a user accesses the device via SSH."                     --    DEFVAL      { disabled }
 �"This variable specifies whether the banner type specified
        in the key should or should not be displayed when a user accesses the device via Telnet."                     --    DEFVAL      { disabled }
 �"This variable specifies whether the banner type specified
 in the key should or should not be displayed when a user accesses the device via Console."                     --    DEFVAL      { disabled }
 �"This value, when set, clears the selected Banner type.
        Clearing the Banner type means that
                  the related entry from rlBannerMessageTable is removed."                              