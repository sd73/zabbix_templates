                                                   p"The ELTEX-PROCESS-MIB is used to describe the utilization of CPU and RAM
        resources by system processes" "www.eltex.nsk.ru" "201705020000Z" ("Initial revision of ELTEX-PROCESS-MIB."                       $"A table of overall CPU statistics."                       �"Overall information about the CPU load. Entries in this table come and go
        as CPUs are added and removed from the system."                       �"An index that uniquely represents a CPU (or group of CPUs)
        whose CPU load information is reported by a row in this table.
        This index is assigned arbitrarily by the engine
        and is not saved over reboots."                       8"Time interval for calculating the average load of CPU."                       0"Physical index of a CPU from entPhysicalTable."                       \"The overall CPU busy percentage in the last eltexProcessCPUMonitorInterval
        period."                      "Indicates whether or not the values of eltexProcessCPUMonitorValue 
        contain accurate data. If an instance of this object has the value false, 
        the values of eltexProcessCPUMonitorValidValue in the conceptual row may contain
        inaccurate information."                       �"This field indicates the minimal value of eltexProcessCPUThresholdIndex that
        isn't in use by any threshold configured in eltexProcessCPUThresholdTable and
        which can be used as index to create a new eltexProcessCPUThresholdEntry instance."                          9"This field enables the generation of eltexProcessCPUThresholdNotification
        globally on the device.

        If this object value is 'false', then no eltexProcessCPUThresholdNotification
        will be generated on this device. If this object value is 'true', then
        notification will be generated."                      I"This field enables the generation of eltexProcessCPUThresholdRecoveryNotification
        globally on the device.

        If this object value is 'false', then no eltexProcessCPUThresholdRecoveryNotification
        will be generated on this device. If this object value is 'true', then
        notification will be generated."                      F"This table lists the thresholds severity, relation, and comparison value
        for a CPU.

        List of notification sending conditions:

        Val - eltexProcessCPUMonitorValue
        Thr - eltexProcessCPUThresholdValue
        Int - eltexProcessCPUThresholdFlappingInterval
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
        "                       -"An entry describes the threshold for a CPU."                      "An index unique within a CPU entity. This index permits
        CPU to have thresholds with the same index.

        The first free index can be obtained from the field
        eltexProcessCPUMonitorThresholdFreeIndex in the table 
        eltexProcessCPUMonitorTable."                       4"This object indicates the RowStatus of this entry."                       6"This field indicates value of threshold in percents."                       �"This field indicates the value of flapping interval. This field is
        necessary for determining the moment of sending 
        eltexProcessCPUThresholdRecoveryNotification."                       6"This field indicates the severity of this threshold."                       �"This field indicates the relation between eltexProcessCPUMonitorValue
        and eltexProcessCPUThresholdValue required to trigger the alarm."                      +"This field controls generation of eltexProcessCPUThresholdNotification
        for this threshold.

        When this field is 'true', generation of notifications is enabled for this
        threshold. When this field is 'false', generation of notifications
        is disabled for this threshold."                      5"This field controls generation of eltexProcessCPUThresholdRecoveryNotification
        for this threshold.

        When this field is 'true', generation of notifications is enabled for this
        threshold. When this field is 'disable', generation of notifications
        is disabled for this threshold."                       Q"This field indicates the result of the most recent evaluation of the threshold."                           $"A table of overall RAM statistics."                       $"Overall information about the RAM."                       �"An index that uniquely represents a memory whose 
        load information is reported by a row in this table.
        This index is assigned arbitrarily by the engine
        and is not saved over reboots."                       0"Physical index of a RAM from entPhysicalTable."                       G"The overall CPU wide system memory size which is currently in system."                       �"This object represents the upper 32-bit of eltexProcessMemoryTotal.

        This object needs to be supported only when the value of
        eltexProcessMemoryTotal exceeds 32-bit, otherwise this object value
        would be set to 0."                       �"The overall CPU wide system memory which is currently in system.

        This object is a 64-bit version of eltexProcessMemoryTotal."                       I"The overall CPU wide system memory which is currently free in percents."                       F"The overall CPU wide system memory which is currently free in bytes."                       �"This object represents the upper 32-bit of eltexProcessMemoryFree.

        This object needs to be supported only when the value of
        eltexProcessMemoryFree exceeds 32-bit, otherwise this object value
        would be set to 0."                       �"The overall CPU wide system memory which is currently free.

        This object is a 64-bit version of eltexProcessMemoryFree."                      "This field indicates the minimal value of eltexProcessMemoryThresholdIndex that
        isn't in use by any threshold configured in eltexProcessMemoryThresholdTable and
        which can be used as index to create a new eltexProcessMemoryThresholdEntry instance."                          ?"This field enables the generation of eltexProcessMemoryThresholdNotification
        globally on the device.

        If this object value is 'false', then no eltexProcessMemoryThresholdNotification
        will be generated on this device. If this object value is 'true', then notification
        will be generated."                      P"This field enables the generation of eltexProcessMemoryThresholdRecoveryNotification
        globally on the device.

        If this object value is 'false', then no 
        eltexProcessMemoryThresholdRecoveryNotification will be generated on this device.
        If this object value is 'true', then notification will be generated."                      Q"This table lists the thresholds severity, relation, and comparison value
        for a memory.

        List of notification sending conditions:

        Val - eltexProcessMemoryFreePercent
        Thr - eltexProcessMemoryThresholdValue
        Int - eltexProcessMemoryThresholdFlappingInterval
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
        "                       0"An entry describes the threshold for a memory."                      "An index unique within a memory entity. This index permits
        memory to have thresholds with the same index.

        The first free index can be obtained from the field
        eltexProcessMemoryThresholdFreeIndex in the table 
        eltexProcessMemoryTable."                       4"This object indicates the RowStatus of this entry."                       O"Indicates the value of the threshold for field eltexProcessMemoryFreePercent."                       �"This field indicates the value of flapping interval. This field is
        necessary for determining the moment of sending 
        eltexProcessMemoryThresholdRecoveryNotification."                       +"Indicates the severity of this threshold."                       i"Indicates the relation between sensor value and threshold value,
        required to trigger the alarm."                      "Controls generation of notifications for this threshold.

        When this field is 'true', generation of notifications is enabled for
        this threshold. When this field is 'false', generation of notifications
        is disabled for this threshold."                      "Controls generation of notifications for this threshold.

        When this field is 'true', generation of notifications is enabled for
        this threshold. When this field is 'false', generation of notifications
        is disabled for this threshold."                       F"Indicates the result of the most recent evaluation of the threshold."                              8"The notification is generated when the value of 
        eltexProcessCPUThresholdEvaluation changes from false to true. 

        Notifications can be disabled for a threshold by 
        eltexProcessCPUThresholdNotificationEnable field or globally by 
        eltexProcessCPUThresholdNotificationGlobalEnable."                H"The notification is generated when the value of 
        eltexProcessCPUThresholdEvaluation changes from true to false. 

        Notifications can be disabled for a threshold by 
        eltexProcessCPUThresholdRecoveryNotificationEnable field or globally by 
        eltexProcessCPUThresholdRecoveryNotificationGlobalEnable."                A"The notification is generated when the value of 
        eltexProcessMemoryThresholdEvaluation changes from false to true. 

        Notifications can be disabled for a threshold by 
        eltexProcessMemoryThresholdNotificationEnable field or globally by 
        eltexProcessMemoryThresholdNotificationGlobalEnable."                Q"The notification is generated when the value of 
        eltexProcessMemoryThresholdEvaluation changes from true to false. 

        Notifications can be disabled for a threshold by 
        eltexProcessMemoryThresholdRecoveryNotificationEnable field or globally by 
        eltexProcessMemoryThresholdRecoveryNotificationGlobalEnable."                