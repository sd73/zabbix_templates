     "Component type."                                     G"The private MIB module definition for Hardware & software components." \"5488 Marvell Lane
							Santa Clara, CA 95054
							USA
							Website:  www.marvell.com" "201904030000Z" "Initial version of this MIB."               k"For each module (board) there is an entry describing its hardware & software info in this
         module"                       2"A entry of this table specifies a module (board)"                       H"The unit number (for stackable devices) or 1 for 'stand alone' device."                      Q"Hardware or Software Type:
            cpu(1),
            packetProcessor(2),
            phy(3),
            flash(4),
            sfp(5),
            poe(6),
            cpld(7),
            image(8),
            kernel(9),
            bootloader(10),
            fanController(11),
            ssh(12),
            ssl(13)
        "                       "The index of the component."                       %"The vendor of the wanted component."                       ("The Device ID of the wanted component."                       8"The hardware version/revision of the wanted component."                       8"The software version/revision of the wanted component."                       9"Alias for identical component type with different name."                              