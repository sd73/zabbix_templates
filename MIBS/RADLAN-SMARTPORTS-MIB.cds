     "Smart Ports macro type."               "Macro name."               "Macro name."                                                    "The private MIB module definition for Smart Ports -
                  provide a convenient way to save and share common configurations.
                  Smart Ports group a group of command to be applied on a port or a trunk
                  OR on a global configuration context. In addition Smart port
                  application provide a database per interface (or global configuration)
                  to list applied macros.
                  Each smart port macro can either a user-defined or pre-defined." "www.Marvell.com" "200807300000Z" "Initial revision."              �" The table listing available smart ports macros,
        holding:
        macro name
        macro type: user defined,
                    Marvell provided per interface
                    Marvell provided globally
        and matches a macro index to be used as identifier in
        rlSmartPortsMacroContentTable where the macro content really IS
        Allow to add/remove user defined macros."                       0" An entry in the rlSmartPortsMacroManageTable."                       "Macro name."                       �"This variable identifies the macro's index.
        An arbitrary incremental Index used as identifier in
        rlSmartPortsMacroContentTable where the macro content really IS."                       �"This variable identifies the  macro type: user defined,
                                                   Marvell provided per interface
                                                   Marvell provided globally"                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       &"List of Macro Keywords. if there are"                       *"List of Macro descriptions. if there are"                       3"continue List of Macro descriptions. if there are"                       �"The table holds smart ports macro's content.
        Entries are allowed to be added ONLY on macro indexes that
        1) has a corresponding entry in rlSmartPortsMacroManageTable
        2) has rlSmartPortsMacroType = rlSmartPortsMacroUserCreated"                       0" An entry in the elSmartPortsMacroManageTable."                       �"This variable identifies the line number in the macro's content text.
        To allow full macro size of 3k =  19 * 160 = 3040"                       "Macro content."                       �"The table holds smart ports macro's name
        globally (rlSmartPortsMacroDescriptionIndex == 0)
        interface (port or trunk)."                       3" An entry in the rlSmartPortsMacroInterfaceTable."                       �"This variable identifies global configuration when equals 0 OR
        local port or trunk on which the user saved Macro's name."                       "Macro name."                       Y"The status of a table entry.
        It is used to delete/Add an entry from this table."                       J"Returns free index to set in rlSmartPortsMacroIndex when macro is added."                       m"In case the last macro had failed you will get this name from the
         specific terminal you had used ."                       p"In case the last macro had failed you will get i'ts line number from
         specific terminal you had used ."                       x"In case the last macro had failed you will get i'ts command line number
         from specific terminal you had used ."                      "disabled    - in macro description macro such as x no_x will be removed
            enabled     - in macro description macro such as x no_x will not be removed
            when condense mode is enabled (by default) each time a macro with the name
            no_x is applied and prior to that a macro x was applied , they will be removed
            from the list...

             "                              