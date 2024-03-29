                                                       ,"Configuration of MAC notification feature." "www.eltex.nsk.ru" "201511050000Z" "201511190000Z" %"Initial version of this MIB module." '"Deprecate all objects in this module."       -- November 19, 2015    
              O"Specifies whether the MAC Flapping notification feature is 
         currently running in the device.

         Setting this object to false(2) disables the MAC Flapping 
         notification feature globally.

         Setting this object to true(1) will start the MAC Flapping 
         notification feature running in the device."                      �"Specifies whether eltMnFlappingNotification notifications
          will or will not be sent when a MAC flapping is detected by
          the MAC flapping notification feature.

          Setting this object to false(2) will not send the
          eltMnFlappingNotification notifications.
   
          Setting this object to true(1) will send the 
          eltMnFlappingNotification notifications."                      a"Indicates the MAC address that is flapping between
          eltMnFlappingFirstPortId and eltMnFlappingSecondPortId on 
          eltMnFlappingVlanNumber. 

          This object is instantiated only when eltMnFlappingFeatureEnabled 
          value is set to true(1) and a MAC flapping is detected by the MAC 
          flapping notification feature."                      O"Indicates the VLAN on which the eltMnFlappingAddress is flapping
          between eltMnFlappingFirstPortId to eltMnFlappingSecondPortId.

          This object is instantiated only when eltMnFlappingFeatureEnabled 
          value is set to true(1) and a MAC flapping is detected by the MAC 
          flapping notification feature."                      O"The first value of dot1dBasePort for the bridge port on which 
          the eltMnFlappingAddress is flapping on eltMnFlappingVlanNumber.

          This object is instantiated only when eltMnFlappingFeatureEnabled 
          value is set to true(1) and a MAC flapping is detected by the MAC 
          flapping notification feature." &"dot1dBasePort is defined in RFC1493."                    P"The second value of dot1dBasePort for the bridge port on which 
          the eltMnFlappingAddress is flapping on eltMnFlappingVlanNumber.

          This object is instantiated only when eltMnFlappingFeatureEnabled 
          value is set to true(1) and a MAC flapping is detected by the MAC 
          flapping notification feature." &"dot1dBasePort is defined in RFC1493."                    O"The value of sysUpTime when a eltMnFlappingAddress is flapping 
          between eltMnFlappingFirstPortId and eltMnFlappingSecondPortId.

          This object is instantiated only when eltMnFlappingFeatureEnabled 
          value is set to true(1) and a MAC flapping is detected by the MAC 
          flapping notification feature."                               i"This notification is generated when a MAC address is 
         flapping between two or more interfaces."                            