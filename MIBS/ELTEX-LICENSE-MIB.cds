     "Status of installed license"                                                                             �"This MIB module provides object to manage and view license
         files that are installed in the system. It also provides
         information about features and services that are activated
         in the system by installed licenses." "www.eltex-co.ru" "201807310000Z" "Initial version."                           b"This table contains information about all the licenses
                 installed on the device."                       r"Each entry contains information about a license that 
                 was successfully installed on the device."                       ^"A numeric value that uniquely identifies a license 
                installed in the system."                       5"Name of the file that contains license information."                      C"A version of the license. Two higher bytes are the major
                 version number and two lower bytes are the minor version.

                 Minimum and maximum supported license versions are shown 
                 in eltexLicenseMinVersionSupported
                 and eltexLicenseMaxVersionSupported objects."                        "Current status of the license."                       �"The serial number of a device which this license is valid for.
                 A serial number alongside with base MAC address identifies
                 a device this license should be installed on."                       �"The base MAC address of a device which this license is valid for.
                 A base MAC address alongside with serial number identifies
                 a device this license should be installed on."                       "A name of device vendor."                       "A name of device model."                           b"This table contains information about all the features
                 licensed for the device."                       e"Each entry contains information about a feature that 
                 is licensed for this device."                       "The name of licensed feature."                      V"Indicates if the feature is now active in the system.

                 On some devices, the features can be activated only during
                 initialization. This field can be 'false' if a device wasn't 
                 rebooted after license installation or license credentials 
                 are not matching the current device."                      �"Indicates if the number of utilized resources is licensed
                 for this feature.

                 The licensed feature can utilize the number of resources no
                 more than the sum of all countable licenses for this
                 feature. The maximum possible number of resources is 
                 shown in the field eltexLicenseFeatureLicensesInstalled.
                 The current utilization is shown in 
                 fieldeltexLicenseFeatureLicensesUsed."                       �"The number of installed licenses for this feature.
                 If the feature uses countable licenses, this field shows
                 the maximum number of resources which the feature can
                 utilize."                       �"The number of licenses that are used by feature at the moment.
                 If the feature uses countable licenses, this field shows
                 the current utilization of resources by this feature."                       a"This table contains the lists of features that contained
                 in each license file."                       R"Each entry contains a link between license ID and feature
                 name."                       `"Indicates the number of resources the licensed feature is
                 allowed to utilize."                                  