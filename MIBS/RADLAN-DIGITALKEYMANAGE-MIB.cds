                                                                           B"This private MIB module defines digital key manage private MIBs." W"5488 Marvell Lane
					Santa Clara, CA 95054
					USA

					Website:  www.marvell.com" "200701020000Z" "Initial revision."               "Key-chains and keys"                       2"Key-chain with key ID that belongs to this chain"                       O"Name of the key-chain to which belongs
         the secret authentication key"                       s"A 8-bit identifier for the secret authentication key.
         This identifier unique only for specific key chain"                       '"The 128-bit secret authentication key"                       k"The time that the router will start accepting packets
          that have been created with the given key"                       R"The time that the router will start using the key
         for packet generation"                       Q"The time that the router will stop using the key
         for packet generation"                       j"The time that the router will stop accepting packets
          that have been created with the given key"                       X"A value of 'true' indicates that given key is valid for
             accepting packets"                       X"A value of 'true' indicates that given key is valid for
             packet generation"                       1"It is used to insert, update or delete an entry"                              