     "File permission"                                                                     �"The MIB module describes the private MIB for File Private Extension 
               supported by Marvell MTS software and products." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "201304010000Z" "Added MODULE-IDENTITY"       -- April 1, 2013
       B"Indicates the File System MIB version. The current version is 1."                       S" The (conceptual) table listing all the files
          of the flash file system."                       ." An entry (conceptual row) in the FileTable."                       "The name of the file."                       "permission level bitmap. "                       ."The size of the file in bytes (actual size)."                       �"The time-stamp indicating the date of creation or last
         modification of this file. The format of the time-stamp is
         dd-mmm-yyyy"                       �"The time-stamp indicating the time of creation or last
         modification of this file. The format of the time-stamp is
         hh:mm:ss"                       $"It is used just to delete an entry"                       <"The size allocated for the file in bytes (allocated size)."                       t"The full normalized name - up to max OCTET STRING length and
         not containing '..' and '.' path components."                       " The (conceptual) table listing only one entry at a time
          with parameters needed for performing an action on a file."                       4" An entry (conceptual row) in the FileActionTable."                       "The name of the file."                       7"The new name for the file (in case of action rename)."                       "It is used to create an entry"                        "Perform an action on the file."                       1"Indicates the total size of the flash in bytes."                       2"Indicates the number of free bytes in the flash."                       Y"Controls whether SysLog messages
         should be issued on file rename/delete events"                       /"Indicates the total size of the USB in bytes."                       0"Indicates the number of free bytes in the USB."                              