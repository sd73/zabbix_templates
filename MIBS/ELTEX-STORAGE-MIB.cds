     "The type of memory storage."                                                             ?"The ELTEX-STORAGE-MIB is used for describing storage devices." "www.eltex.nsk.ru" "201705020000Z" ("Initial revision of ELTEX-STORAGE-MIB."                       8"This table contains information about memory storages."                       0"Information about a particular memory storage."                       �"An index that uniquely represents a storage device
        whose information is reported by a row in this table.
        This index is assigned arbitrarily by the engine
        and is not saved over reboots."                       ;"Physical index of a storage device from entPhysicalTable."                       "Memory type"                       $"Available storage memory in bytes."                       �"This object represents the upper 32-bit of eltexStorageDeviceSize.
        This object needs to be supported only when the value of
        eltexStorageDeviceSize exceeds 32-bit, otherwise this object value
        would be set to 0."                       �"The overall storage memory which is currently available at device.
        This object is a 64-bit version of eltexStorageDeviceSize."                       3"Shows whether storage device is removable or not."                       F"This table contains information about partitions on memory storages."                       ="Information about a particular partition on memory storage."                       -"Index of the partition on a storage device."                       0"Shows information about total memory in bytes."                       �"Represents the upper 32-bit of eltexStoragePartitionTotal.

        This object needs to be supported only when the value of
        eltexStoragePartitionTotal exceeds 32-bit, otherwise this object value
        would be set to 0."                       �"Shows information about total memory size in the partition in bytes.

        This object is a 64-bit version of eltexStoragePartitionTotal."                       _"Shows information about currently available free memory in the
        partition in percents."                       \"Shows information about currently available free memory in the
        partition in bytes."                       �"Represents the upper 32-bit of eltexStoragePartitionFree.

        This object needs to be supported only when the value of
        eltexStoragePartitionFree exceeds 32-bit, otherwise this object value
        would be set to 0."                       �"Shows information about currently available free memory in the
        partition in bytes.

        This object is a 64-bit version of eltexStoragePartitionFree."                       �"This field indicates the minimal value of eltexStorageThresholdIndex
        that isn't in use by any threshold configured in eltexStorageThresholdTable
        and which can be used as index to create a new eltexStorageThresholdEntry instance."                          3"This field enables the generation of eltexStorageThresholdNotification
        globally on the device.

        If this object value is 'false', then no eltexStorageThresholdNotification
        will be generated on this device. If this object value is 'true', then
        notification will be generated."                      C"This field enables the generation of eltexStorageThresholdRecoveryNotification
        globally on the device.

        If this object value is 'false', then no eltexStorageThresholdRecoveryNotification
        will be generated on this device. If this object value is 'true', then
        notification will be generated."                      P"This table lists the thresholds severity, relation, and comparison value
        for a storage device.

        List of notification sending conditions:

        Val - eltexStoragePartitionFreePercent
        Thr - eltexStorageThresholdValue
        Int - eltexStorageThresholdFlappingInterval
        abs - absolute value

        +----------------+------------------------+------------------------+
        | Relation       | Notification Condition |   Recovery Condition   |
        +----------------+------------------------+------------------------+
        | greaterThan    |       Val >  Thr       |   Val <  (Thr - Int)   |
        | greaterOrEqual |       Val >= Thr       |   Val <= (Thr - Int)   |
        | lessThan       |       Val <  Thr       |   Val >  (Thr + Int)   |
        | lessOrEqual    |       Val <= Thr       |   Val >= (Thr + Int)   |
        | equalTo        |       Val == Thr       |  abs(Val - Thr) > Int  |
        | notEqualTo     |  abs(Val - Thr) > Int  |       Val == Thr       |
        +----------------+------------------------+------------------------+
        "                       8"An entry describes the threshold for a storage device."                      "An index unique within a partition entity. This index permits
        partition to have thresholds with the same index.

        The first free index can be obtained from the field
        eltexStoragePartitionThresholdFreeIndex in the table
        eltexStoragePartitionTable."                       4"This object indicates the RowStatus of this entry."                       >"This field indicates the value of the threshold in percents."                       �"This field indicates the value of flapping interval. This field is
        necessary for determining the moment of sending 
        eltexStorageFreeMemoryThresholdRecoveryNotification."                       6"This field indicates the severity of this threshold."                       u"This field indicates the relation between storage value
        and threshold value, required to trigger the alarm."                      "This field controls generation of notifications for this
        threshold.

        When this field is 'true', generation of notifications is enabled
        for this threshold. When this field is 'false', generation of
        notifications is disabled for this threshold."                      "This field controls generation of notifications for this
        threshold.

        When this field is 'true', generation of notifications is enabled
        for this threshold. When this field is 'false', generation of
        notifications is disabled for this threshold."                       Y"This field indicates the result of the most recent evaluation of
        the threshold."                              �"The notification is generated when the value of eltexStoragePartitionFreePercent
        satisfies the condition eltexStorageFreeMemoryThresholdRelation. Notifications
        can be disabled for a threshold by eltexStorageFreeMemoryThresholdNotificationEnable
        field or globally by eltexStorageFreeMemoryThresholdNotificationGlobalEnable.

        The notification is generated when the value of 
        eltexStorageThresholdEvaluation changes from false to true. 

        Notifications can be disabled for a threshold by 
        eltexStorageThresholdNotificationEnable field or globally by 
        eltexStorageThresholdNotificationGlobalEnable."                ?"The notification is generated when the value of 
        eltexStorageThresholdEvaluation changes from true to false. 

        Notifications can be disabled for a threshold by 
        eltexStorageThresholdRecoveryNotificationEnable field or globally by 
        eltexStorageThresholdRecoveryNotificationGlobalEnable."                