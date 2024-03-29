                                                       \"The ELTEX-ENTITY-SENSOR-MIB is used as extension of 
        ENTITY-SENSOR-MIB (RFC 3433)." "www.eltex.nsk.ru" "201705020000Z" ."Initial revision of ELTEX-ENTITY-SENSOR-MIB."                       �"This table contains one row per physical sensor represented by an associated 
        row in the entPhysicalTable and extends entPhySensorTable."                       }"An entry describes a physical sensor and contains summary
        information of all thresholds configured for this sensor."                      "This field indicates the minimal value of eltexEntitySensorThresholdIndex
        that isn't in use by any threshold configured in eltexEntitySensorThresholdTable
        and which can be used as index to create a new eltexEntitySensorThresholdEntry instance."                          M"This field enables the generation of
        eltexEntitySensorThresholdNotification globally
        on the device.

        If this object value is 'false', then
        no eltexEntitySensorThresholdNotification will
        be generated on this device. If this object value is 'true',
        then notification will be generated."                      ]"This field enables the generation of
        eltexEntitySensorThresholdRecoveryNotification globally
        on the device.

        If this object value is 'false', then
        no eltexEntitySensorThresholdRecoveryNotification will
        be generated on this device. If this object value is 'true',
        then notification will be generated."                      d"This table lists the thresholds severity, relation, and comparison
        value, for a sensor listed in the ENTITY-SENSOR-MIB.

        List of notification sending conditions:

        Val - entPhySensorValue
        Thr - eltexEntitySensorThresholdValue
        Int - eltexEntitySensorThresholdFlappingInterval
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
        "                       �"An entry describes the threshold for a sensor:
        the threshold severity, the threshold value,
        the relation, and the evaluation of the threshold."                       �"An index unique within a sensor entity.

        The first free index can be obtained from the field
        eltexEntitySensorThresholdFreeIndex in the 
        eltexEntitySensorTable."                       4"This object indicates the RowStatus of this entry."                       2"This field indicates the value of the threshold."                       �"This field indicates the value of flapping interval. This field is
        necessary for determining the moment of sending notifications."                       6"This field indicates the severity of this threshold."                       �"This field indicates the relation between sensor value
        (entPhySensorValue) and threshold value (eltexEntitySensorThresholdValue),
        required to trigger the alarm."                      g"This field controls generation of eltexEntitySensorThresholdNotification
        for this threshold.

        When This field is 'true', generation of
        eltexEntitySensorThresholdNotification is enabled for this
        threshold. When This field is 'false', generation of
        eltexEntitySensorThresholdNotification is disabled for this threshold."                      "This field controls generation of eltexEntitySensorThresholdRecoveryNotification
        for this threshold.

        When This field is 'true', generation of
        eltexEntitySensorThresholdRecoveryNotification is enabled for this
        threshold. When This field is 'false', generation of
        eltexEntitySensorThresholdRecoveryNotification is disabled for this threshold."                       Y"This field indicates the result of the most recent evaluation of
        the threshold."                              >"The notification is generated when the value of 
        eltexEntitySensorThresholdEvaluation changes from false to true. 

        Notifications can be disabled for a threshold by 
        eltexEntitySensorThresholdNotificationEnable field or globally by 
        eltexEntitySensorThresholdNotificationGlobalEnable."                K"The notification is generated when the value of 
        eltexEntitySensorThresholdEvaluation changes from true to false. 
        Notifications can be disabled for a threshold by
        eltexEntitySensorThresholdRecoveryNotificationEnable field or globally by
        eltexEntitySensorThresholdRecoveryNotificationGlobalEnable."                