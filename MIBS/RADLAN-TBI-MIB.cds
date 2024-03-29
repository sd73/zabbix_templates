     {"Bitmap that includes days of week.
                 Each bit in the bitmap associated with corresponding day of the week."                                                                     2"Time Range Infrastructure MIBs initial version. " Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200602120000Z" 2"Time Range Infrastructure MIBs initial version. "               -"This table specifies Time Based Infra table"                       o"Each entry in this table describes the new
         time range for ACE.
         The index is time range name"                       "Name of time range."                      ="Time of start of absolute time range in following format:
                     month day year hh:mm
                     month: 01-12 (January-December)
                     day:   01-31
                     year:  0-99 (2000-2099)
                     hh:    0-23 (hours)
                     mm:    0-59 (minutes)"                      ;"Time of end of absolute time range in following format:
                     month day year hh:mm
                     month: 01-12 (January-December)
                     day:   01-31
                     year:  0-99 (2000-2099)
                     hh:    0-23 (hours)
                     mm:    0-59 (minutes)"                       P"Shows whether the current time range is active according to the current clock."                       L"Row Status.
         It is used for adding/deleting entries of this table."                       6"This table specifies Time Based Infra Periodic table"                       9"Each entry in this table describes periodic time range."                       ."Time Range Name the periodic is defined on. "                      �"The bitmap allows to user to select periodic time range for several
            days at once. The periodic range will be associated with specific days
            when corresponding bits will be set. If at least one bit has been set in the
            rlTBIPeriodicWeekDayList,
            the weekday in rlTBIPeriodicStart and rlTBIPeriodicEnd
            is not relevant and should be set to zero."                      �"Time of start of periodic time range in following format:
                     weekday hh:mm
                     weekday: 0-7  (0 means the weekday is not specified,
                                    1-7 are weekdays from Monday to Sunday)
                     hh:    0-23 (hours)
                     mm:    0-59 (minutes)
                     Weekday may be 0 only if periodic time range weekdays were specified in
                     rlTBIPeriodicWeekDayList."                      �"Time of end of periodic time range in following format:
                     weekday hh:mm
                     weekday: 0-7  (0 means the weekday is not specified,
                                    1-7 are weekdays from Monday to Sunday)
                     hh:    0-23 (hours)
                     mm:    0-59 (minutes)
                     Weekday may be 0 only if periodic time range weekdays were specified in
                     rlTBIPeriodicWeekDayList."                       L"Row Status.
         It is used for adding/deleting entries of this table."                              