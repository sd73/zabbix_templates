     '"Specifies port-statistic counter-name"               ."Specifies port-statistic sample clock-source"               #"Specifies port-statistic sub-type"                                                     -"This private MIB module for Port-Statistics" "marvell.com" "201504060000Z" "Initial revision."               B"Port-set to determine from which port to collect port-statistics"                       V"Action MIB for clearing port-statistics history on a
         list of selected ports"                       p"The table holds port-statistics for Ethernet ports
         This is a read-only MIB for presentation purposes."                       %"Entry in the rlPortStatSampleTable."                       L"Interface Index.
         This variable is a key in port-statistics table."                       T"Port-statistic sub-type.
         This variable is a key in port-statistics table."                       X"Port-statistic counter-name.
         This variable is a key in port-statistics table."                       J"Statistics ID.
         This variable is a key in port-statistics table."                       7"Port-statistic collection time interval (in seconds)."                       Z"The system up-time when the samples were taken, 
         formatted in posix-time format"                       Y"The absolute time when the samples were taken, 
         formatted in posix-time format"                       �"The absolute time when the samples were taken, 
         in string format - 'hhmmssddMMYYYYw'
         where 'w' stands for weekDay (1-7)"                       "Port-Statistics counter value"                       X"Indicates whether the collected statistics for
         the current entry are partial."                       c"Indicates the clock-source used for marking the 
         collection-time of the collected sample"                       t"The table holds the last sample from port-statistics. 
         This is a read-only MIB for presentation purposes."                       )"Entry in the rlPortStatLastSampleTable."                       L"Interface Index.
         This variable is a key in port-statistics table."                       T"Port-statistic sub-type.
         This variable is a key in port-statistics table."                       X"Port-statistic counter-name.
         This variable is a key in port-statistics table."                       J"Statistics ID.
         This variable is a key in port-statistics table."                       7"Port-statistic collection time interval (in seconds)."                       Z"The system up-time when the samples were taken, 
         formatted in posix-time format"                       Y"The absolute time when the samples were taken, 
         formatted in posix-time format"                       �"The absolute time when the samples were taken, 
         in string format - 'hhmmssddMMYYYYw'
         where 'w' stands for weekDay (1-7)"                       "Port-Statistics counter value"                       X"Indicates whether the collected statistics for
         the current entry are partial."                       c"Indicates the clock-source used for marking the 
         collection-time of the collected sample"                       �"This table holds records of the last time an ether-like counter
         changed its value and time when the change had occoured.
         This is a read-only MIB for presentation purposes."                       ("Entry in the rlPortStatLastEventTable."                       G"Interface Index.
         This variable is a key in last-event table."                       �"Port-statistic counter-name.
         use 'anyCounter' (0) enum value to extract the 
         last event that occoured in a given port / ifIndex.
         This variable is a key in last-event table."                       K"The system up-time of the event, 
         formatted in posix-time format"                       J"The absolute time of the event, 
         formatted in posix-time format"                       |"The absolute time of the event, 
         in string format - 'hhmmssddMMYYYYw'
         where 'w' stands for weekDay (1-7)"                       "Port-statistic counter-name"                       "Port-Statistics counter value"                       f"Action MIB for clearing port-statistics POE consumption history on a
         list of selected ports"                       W"POE cumulative energy savings per system due to time-range feature in Watt*Hour units"                       H"Green Ethernet cumulative energy savings per system in Watt*Hour units"                       �"Green Ethernet estimated anual energy savings per system in Watt*Hour units
		 Annual estimate is based on the saving during the previous week multiplied by 52"                       r"Scalar for determining the type of counters to be cleared 
		 when invoking rlPortStatClearPortEvents action MIB"                       \"Action MIB for clearing port-statistics event history on a
         list of selected ports"                       �"PoE estimated anual energy savings per system in Watt*Hour units
		 Annual estimate is based on the saving during the previous week multiplied by 52"                       �"Determines wether PoE estimated anual energy savings is available.
		 Annual estimate is available when device contains energy-savings statistics from
		 previous week."                       �"Determines wether Green Ethernet estimated anual energy savings is available.
		 Annual estimate is available when device contains energy-savings statistics from
		 previous week."                       T"POE current energy savings per system due to time-range feature in Watt*Hour units"                       N"Action MIB for setting Green-Ethernet-Cumulative-Energy-Saved value to zero."                       C"Determine whether port-statistics is globally enabled or disabled"                              