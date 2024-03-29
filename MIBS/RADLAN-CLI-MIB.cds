                                                           #"Remote CLI branch has been added." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "201005250000Z" "200701020000Z" 3"This private MIB module defines CLI private MIBs." "Initial revision."               *"MIB's version, the current version is 3."                       "CLI Password"                       "CLI Timer"                       "CLI File Enable/Disable"                       %"CLI File Enable/Disable After Reset"                          �"Commands that can be given for execution of CLI from remote:
            takeRemoteCLI:      take resources of remote CLI activation
            releaseRemoteCLI:   free resources of remote CLI activation
            applySentCLI:       apply the CLI commands that are currently in
                                rlCLIremoteCLIcommandsTable.
            deleteCommandsCLI:  delete all the CLI commands that are currently in
                                rlCLIremoteCLIcommandsTable.
            setEchoModeCLI:     entered commands will appear before its output
                                in rlCLIremoteCLIoutputsTable.
            unsetEchoModeCLI:   entered commands will not appear
                                in rlCLIremoteCLIoutputsTable."                      �"The execution state of remote CLI:
            notActive: no 'applySentCLI' command has been given.
                       This is the default state. The remote CLI reverts to
                       this state each time when the 1st entry is added to
                       rlCLIremoteCLIcommandsTable.
            inProcess: Executing commands - no output available
            outputAvailable: Some output is already available, although
                             the commands execution may not be finished yet.
            waitingForOutputRetrieval: The rlCLIremoteCLIoutputsTable is full
                                       and remote CLI is waiting for the manager
                                       to retrieve the output.
            done: All the commands in rlCLIremoteCLIcommandsTable
                  have been executed, but there still may be unretrieved output from the commands
			"                       ?"Index of command, which is currently in execution. 0 if none."                      <"Operation mode of remote CLI:
            deleteCLIOutputOnGet: all parts of an output row will be deleted after GET of last part of the row.
                                  Recommended for reliable management channels.
            keepCLIOutputOnGet:   output row will be kept after GET,
                                  will be deleted only explicitly by remote
                                  CLI client or upon release of remote CLI
                                  resources. Recommended for non-reliable
                                  management channels."                       $"A list of CLI commands to execute."                       ."An entry containing a part of a CLI command."                       h"The index of the command. The commands will be executed
                    in order of their indexes."                       �"The part of the command. Long commands will be divided in
                    several parts, which will be concatenated before execution."                       "The text of the command part."                       "The status of this entry."                       �"Activation status of the command. Any value greater than 0
                        indicates that the command has been activated and failed"                       "A list of CLI output rows."                       1"An entry containing a part of a CLI output row."                       "The index of the output row."                       "The part of the output row."                       ""The text of the output row part."                       b"The status of the command part. Only destroy will be accepted
                 as value for SET."                       O"The command index of the command whose activation generated thist output row."                       {"The remote CLI instance. A value of 0xFFFFFFFF indicates that no instance
         corresponding to the client was found."                       B"Indicates whether the rlCLIremoteCLIoutputsTable is empty or not"                              