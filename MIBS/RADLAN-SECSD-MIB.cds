    ?"The Security Sensitive Data channels:
         secure            - secure channels as console, ssh, scp, https.
         insecure          - insecure channels as telnet, http.
         secure-xml-snmp   - SNMPv3 with privacy or XML over https.
         insecure-xml-snmp - SNMPv1/v2/v3 without privacy, xml over http."              ["The Security Sensitive Data channels access users.
         user-name      - the rule is per rlSecSdRuleUserName.
         default-user   - the rule is per the default system user name.
         all-users      - all users which their user level permission is less then 15.
         level-15-users - users which their user level permission is 15."               �"The Security Sensitive Data rule owner:
         default - default rule which is defined by the device.
         user    - rule which is defined by user."              d"The Security Sensitive Data (SSD) channels access per session:
         exclude           - Security Sensitive Data can not retrieved.
         include-encrypted - SSD can retrieved as encrypted only.
         include-decrypted - SSD can retrieved as decrypted only.
         default           - Set to the default SSD access as defined by the SSD rules."               "The Security Sensitive Data channels default read/write access action:
         exclude           - Security Sensitive Data can not retrieved/set.
         include-encrypted - SSD can retrieved/set as encrypted only.
         include-decrypted - SSD can retrieved/set as decrypted only."              p"The Security Sensitive Data channels access permit read/write action:
         exclude           - Security Sensitive Data can not retrieved/set.
         include-encrypted - SSD can retrieved/set as encrypted only.
         include-decrypted - SSD can retrieved/set as decrypted only.
         include-all       - SSD can retrieved/set as encrypted or as decrypted."                                                                    1"The private MIB module definition for Security Sensitive Data (SSD),
                  contains the MIB tables and scalars to manage the access through
                  the different management channels as CLI, WEB and others,
                  for sensitive data as user names and passwords in system." �"5488 Marvell Lane
                        Santa Clara, CA 95054
                        USA

                        Website:  www.marvell.com" "201108310000Z" "Initial revision."               �"The table holding the Security Sensitive Data access rules per:
            user name / user level and management channel.
            Allow to add/edit/remove Security Sensitive Data rules."                       $"An entry in the rlSecSdRulesTable."                       B"Contains the Rule user type as described in RlSecSdRuleUserType."                       �"Contains the Rule user name when rlSecSdRuleUser value is user-name,
                     Otherwise it contains an empty string"                      O"Contains the Rule management channel type as described in RlSecSdChannelType.
            secure-xml-snmp and insecure-xml-snmp management channels have no include-encrypted capability
            thus their rlSecSdRulePermitRead and rlSecSdRuleRead can have only RlSecSdAccessType values of
            exclude or include-decrypted."                       �"Contains the Rule default read access level as described in RlSecSdAccessType,
            must be lower or equal access from rlSecSdRulePermitRead"                       \"Contains the Rule maximum permission access level as described in RlSecSdPermitAccessType."                       c"true  - Rule has created by the by the system.
             false - Rule has created by the user."                       �"Contains the current Rule ownership as defined in RlSecSdRuleOwnerType.
            when rlSecSdRuleIsDefault is true, rlSecSdRuleOwner allowed to change
            default rule to user rule and vice versa."                       b"The status of a table entry.
            It is used to Add/Edit/Delete an entry from this table."                       �"The table holding Security Sensitive Data management sessions.
            Allowing to get management channel, user name, user level."                       *"An entry in the rlSecSdMngSessionsTable."                       �"Contains the Security Sensitive Data management session identifier,
             rlSecSdCurrentSessionId is used to get the current management session identifier"                       L"Contains the Security Sensitive Data management session user access level."                       D"Contains the Security Sensitive Data management session user name."                       j"Contains the Security Sensitive Data management session channel type as described in RlSecSdChannelType."                      "Action scalar which set the default read access of Security Sensitive Data.
            Affect only on session which from this scalar is configured.
            Scalar Get value is the default-display/read of the session which from
            this scalar is retrieved."                       v"Get the current SSD management channel identifier,
            used to get information from rlSecSdMngSessionsTable."                       �"Set the passphrase for the SSD encryptyption / decryption key.
             on set, passphrase is in plain text format.
             on get, passphrase is encrypted."                      >"File Passphrase control provides an additional level of protection on passphrase and configurations.
            restricted - a device restricts its passphrase from being inserted into a configuration file.
            unrestricted - (default) a device will include its passphrase when creating a configuration file."                       �"File integrity control provides a validation of configuration file.
            enable - Validate the configuration file digest when downloading the file to startup configuration.
            disable - Do not validate."                       �"SSD block in configuration file integrity digest, auxiliary action scalar for
             internal system using during configuration download."                       �"SSD configuration file integrity digest, auxiliary action scalar for
             internal system using during configuration download."                       �"Retrieve configuration file SSD indicator.
             set value: configuration file name.
             get value: Exclude, Encrypted, Plaintext"                              