     �"This textual convention describes the various possible public key
         algorithms.  The key algorithm is used to select the PK to be generated
         and is also used when viewing the public keys."               �"This textual convention describes the format used to display the public
         key fingerprint.  The hex format is the format used by PGP and OpenSSH.
         The bubble-babble format is used by SSH.com software."                                                     n"The MIB module describes the private MIB for SSH supported
               by Radlan's software and products." l"5488 Marvell Lane
            Santa Clara, CA 95054
            USA

            Website:  www.marvell.com" "200301030024Z" "200309210024Z" "The second revision" "Editorial changes."       -- September 30, 2002
       +"The MIB version. The current version is 2"                           "This table contains the router's public key.  Each row in this table
     contains a fragment of the key, in printable binhex format.  There may
     be up to 160 characters in every fragment, and they are all combined
     to form one key.  The key is generated by writing to
     rlSshServerRegenerateHostKey.  To cause clients to connect to this router
     without printing warning messages (and also prevent active
     man-in-the-middle), the router's public key must printed out and inserted
     into the client's authorized_keys file"                       %" The row definition for this table."                       4"Identifies the type of public key to be displayed."                       r"Identifies the index of this fragment in the final key.  All segments must
     be combined to form one big key."                       M"A part of the readable text entry for the server's public authorzation key."                       B"This table contains the fingerprint for the router's public key."                       %" The row definition for this table."                       4"Identifies the type of public key to be displayed."                       <"Format of the digest to be displayed (OpenSSH or SSH.com)."                       �"SECSH format fingerprint of the server's public key.  To prevent man in
     the middle attacks, users should make sure the ssh Server's fingerprint,
     as printed in the connection process, is similar to the one printed here."                       �"This table contains public keys for all users who are authorized to access
    the router.  For a user to be able to log in using SSH, the user name must
    appear in this table, and the user's public key must match the one found
    here."                       %" The row definition for this table."                       �"Name of the user who owns this public key.  Both the user name and the
    key bytes must match before a user is authenticated using this key."                       r"Identifies the index of this fragment in the final key.  All segments must
     be combined to form one big key."                       K"A part of the readable text entry for the user's public authorzation key."                       o"Create or delete a fragment of the user's public key.
    A user is deleted if it has no remaining fragments."                      #"This table contains the fingerprints of the public keys for all users who
     are authorized to access the router.
     To prevent man in the middle attacks, users should make sure the
     user's fingerprint, as printed in the connection process, is similar
     to the one printed here."                       %" The row definition for this table."                       �"Name of the user who owns this public key.  Both the user name and the
     key bytes must match before a user is authenticated using this key."                       4"Identifies the type of public key to be displayed."                       <"Format of the digest to be displayed (OpenSSH or SSH.com)."                       �"SECSH format fingerprint of the user's public key.  To prevent man in
     the middle attacks, users should make sure their ssh fingerprint,
     as printed in the connection process, is similar to the one printed here."                       R"Each row in this table corresponds to an active SSH session with
     the server"                       %" The row definition for this table."                       :"Identifies the connection to which this row corresponds."                       A"The network address of the remote host connected to the server."                       E"The source network port of the remote host connected to the server."                       @"The client version of the remote host connected to the server."                       9"SSH authenticated name of user connected to the server."                       1"Data encryption cipher used in this connection."                       6"Message authentication code used in this connection."                       M"Each row in this table corresponds to an active SSH session with the server"                       $"The row definition for this table."                       :"Identifies the connection to which this row corresponds."                       A"The network address of the remote host connected to the server."                       A"The network address of the remote host connected to the server."                       E"The source network port of the remote host connected to the server."                       @"The client version of the remote host connected to the server."                       9"SSH authenticated name of user connected to the server."                       1"Data encryption cipher used in this connection."                       6"Message authentication code used in this connection."                      �"This table can be used for 2 purposes:
     1) Importing public/private key pair to serve as the device key when acting
     as SSH server. This is done by setting entries to this table, according to
     the specified format. When the last entry (footer) is set, the whole key
     pair is checked and if valid, stored in CDB.
     2) Exporting the device SSH server public/private key. This can be done by
     performing GetNext operations on this table."                       %" The row definition for this table."                       ""Identifies the type of key pair."                      "Specifies the format of public/key pair. The following formats are
    supported for import/export:
    1) uuencoded_format - in this format both private and public key are in
    uu-encoded format, and are seperated from one another by header and footer.
    An example of the concateneation of all fragments in this format is:
    -----BEGIN RSA PRIVATE KEY-----
    tDaNkZZoCxXfkLLsLDlZ6T9H8U4Gz637eRV7BYBpapkidAxY1UG0/qgfKLPkbId4wzht6ArV9bE4fMtX
    wSMOxL3q31pOmUdVhjbWYcgZQBDy1DjFSbuIEdP85c96B9bBE2nPv90mSvb/6j8R2NItT/KJeiYMtLtI
    N3m6/zESKJGIrX0jP1RFDjVZSS5chSAFgB0egsLZEyOQn7jAqpX/x/easD2J6F/OjPXlJ9Hff2tMb3NU
    QYyBoWH2J9IxhWB6Vo66R9Y04JGR18uL/rV2sMCtpg5ppkVTEpNTp9qE1yXocR2NmzUfNFap+GJ4IHj8
    CzkVfmJM/kEWaJsYgHbAgLyRg4QVyelfobv1B71aQ+u1z9KGu/QajkWdR04OQfsGOL1CvU2LGYDcRjfH
    jv+jl/UkDRRjoD9kt2WvouT+OL6esvKl0OJBqWbGNXg9TWv/VLtJIwgUno+MLaJuOM4Fh44+wpnqUXwQ
    TFtBFc8pzt5BoOwbv9gXpicTkq4/+GhwXWXxSVFebKhnHAvKSLT+Ba7K7ZeR8EIIxbXdDNFOiS45R2KI
    jxxXLXK44u6KGl5MygCKXUOFlJ+Zhgrq6ZH17z/RVJQ2CWqb5Ekn9GY3kH9QZ3mb4MDPfriWi2lHGXHY
    JmJd4SLQhpBdnOS5tu84QmyU3dNbAdzghDsR+dEY/6g7Cn0kcVkeHNZ0H+mCZik5f6XBD8eplkk43bdR
    FrkwTeAjwurGcKwdiKkR4DlfSq3DKssVBucTqUpqsKqPXLwTIL44rWKhEPXgGPB2XDG0VLvIRKkAgEGI
    LNTwOm091Ro=
    -----END RSA PRIVATE KEY-----

    -----BEGIN RSA PUBLIC KEY-----
    MIGHAoGBAOeIC9gRg3YaEGGMp3C00qNwLINAEDZV/J4BWM5WnWwCWZyHXDs2XiEmFu0ZONAD4gcT2f2f
    NNfCBPye39VVuOkKQuSV0MLLX5800LZ4y1BNcPzPZHpnGaCzl7iAjhfj9MolzAh5VRjeiYt0t1um4dm+
    q9A4BtfpJqDYxCW9uxd/AgEj
    -----END RSA PUBLIC KEY-----
    "                       E"Identifies the index of this fragment in the key pair input/output."                       B"A part of the readable text entry for the key pair input/output."                       ^"Specifies the TCP port used by the SSH 2 Server to listen for incoming
         connections."                       a"Enables listening for incoming SSH2 connections on the port defined in
        rlSshServerPort."                       �"If PK authentication is enabled, incoming SSH connections are
        authenticated using public key authentication (using
        rlSshServerAuthorizedUsersPublicKeyTable), before authenticating using
        the router's standard AAA."                       �"Setting to a value other than none results in the Server (Host) Key
        being regenerated.  The key size is host-specific."                       i"This scalar indicates which of the SSH server keys are default keys
         (automatically generated)."                       �"Setting to a value other than 'none' results in deleting the server self
           key of the chosen type. As a result a default key may be created
           (according to the MTSC..)"                       �"If PK authentication is succesfull and AAA local DB method
        is enabled for SSH line, the username is checked with AAA
        local DB. If present, the user is authenticated automatically
        without prompting for username or password."                       �"If password authentication is enabled, incoming SSH connections are
        authenticated with username/password authentication using
        the router's standard AAA."                          |"Specifies the default user name the ssh client will use when
        authenticating to a remote server. In SCP sessions this global
        user name will be used unless a specific user name has been specified
        for the operation.
        The value of this MIB must not contain charachters ':' or '@' (those
        are used to indicate parameters seperation in SCP copy)."                       ~"Setting to a value other than none results in the client self key
        being regenerated.  The key size is host-specific."                      $"This table contains the router's client self public key.  Each row in
    this table contains a fragment of the key, in printable binhex format.
    There may be up to 160 characters in every fragment, and they are all
    combined to form one key.  The key is generated by writing to
    rlSshClientRegenerateSelfKey.  To cause clients to connect to this router
    without printing warning messages (and also prevent active
    man-in-the-middle), the router's public key must printed out and
    inserted into the client's authorized_keys file"                       %" The row definition for this table."                       r"Identifies the index of this fragment in the final key.  All segments must
     be combined to form one big key."                       4"Identifies the type of public key to be displayed."                       Z"A part of the readable text entry for the router's client public
     authorization key."                       B"This table contains the fingerprint for the client's self key.  "                       %" The row definition for this table."                       4"Identifies the type of public key to be displayed."                       <"Format of the digest to be displayed (OpenSSH or SSH.com)."                       �"SECSH format fingerprint of the client's self key.  To prevent man in
     the middle attacks, users should make sure the ssh Server's fingerprint,
     as printed in the connection process, is similar to the one printed here."                       �"Specifies the global authentication method for SSH client. SSH client
         will apply this authentication method upon connecting to a remote server,
         if no specific authentication method has been defined for this operation."                      �"Specifies the global password for SSH client, to be used for 'password'
         authentication. SSH client will use this password during authentication
         phase (when connecting remote server), in case no specific password has
         been specified for this operation.
         The value of this MIB must not contain charachters ':' or '@' (those
         are used to indicate parameters seperation in SCP copy).
         Upon setting the password, its length must be in range 1-70."                      �"This table allows the user to change the password in a remote SSH server.
     It should be used when working with 'password' authentication with remote
     server in SCP sessions.
     Set operation on this table will initiate SCP session with the SSH server
     whose inet address is specified in the key rlSshClientPasswordChangeInetAddress.
     During this session the password for username rlSshClientPasswordChangeUsername
     will be changed in the server from rlSshClientPasswordChangeOldPassword to
     rlSshClientPasswordChangeNewPassword.
     The Set operation might fail, in case an SCP session is already being
     held. In case 'noError' is returned, the user can poll the fields
     rlSshClientPasswordChangeStatus and rlSshClientPasswordChangeFailureReason
     in order to get information on operation status and possible failure
     reason. Note: up to 3 status records can be saved."                       %" The row definition for this table."                       6"Specifies the inet address type of remote SCP server"                       1"Specifies the inet address of remote SCP server"                       C"Specifies the username for which the password change is required."                       �"Specifies the old password that was in use for rlSshClientPasswordChangeUsername
     until now. Upon setting a value in this entry, length of this field value
     must be 6-70. Password of length 0 will always be returned on GET operations."                      "Specifies the new password that should be in use for
     rlSshClientPasswordChangeUsername from now on. Upon setting a value in this
     entry, length of this field value must be 6-70.
     Password of length 0 will always be returned on GET operations."                      ""Specifies the status of last password change operation on remote server
    identified by rlSshClientPasswordChangeInetAddress. In case this data was
    erased (3 or more password change operations have been performed since
    the operation on this server), the status will be 'noData'."                       t"In case the value of rlSshClientPasswordChangeStatus is 'failed', this
     field will contain the failure reason."                       m"Setting to a value other than 'none' results in deleting the client self
           key of the chosen type."                      �"This table can be used for 2 purposes:
     1) Importing public/private key pair to serve as the device key when acting
     as SSH client. This is done by setting entries to this table, according to
     the specified format. When the last entry (footer) is set, the whole key
     pair is checked and if valid, stored in CDB.
     2) Exporting the device SSH client public/private key. This can be done by
     performing GetNext operations on this table."                       %" The row definition for this table."                       ""Identifies the type of key pair."                      "Specifies the format of public/key pair. The following formats are
    supported for import/export:
    1) uuencoded_format - in this format both private and public key are in
    uu-encoded format, and are seperated from one another by header and footer.
    An example of the concateneation of all fragments in this format is:
    -----BEGIN ENCRYPTED RSA PRIVATE KEY-----
    tDaNkZZoCxXfkLLsLDlZ6T9H8U4Gz637eRV7BYBpapkidAxY1UG0/qgfKLPkbId4wzht6ArV9bE4fMtX
    wSMOxL3q31pOmUdVhjbWYcgZQBDy1DjFSbuIEdP85c96B9bBE2nPv90mSvb/6j8R2NItT/KJeiYMtLtI
    N3m6/zESKJGIrX0jP1RFDjVZSS5chSAFgB0egsLZEyOQn7jAqpX/x/easD2J6F/OjPXlJ9Hff2tMb3NU
    QYyBoWH2J9IxhWB6Vo66R9Y04JGR18uL/rV2sMCtpg5ppkVTEpNTp9qE1yXocR2NmzUfNFap+GJ4IHj8
    CzkVfmJM/kEWaJsYgHbAgLyRg4QVyelfobv1B71aQ+u1z9KGu/QajkWdR04OQfsGOL1CvU2LGYDcRjfH
    jv+jl/UkDRRjoD9kt2WvouT+OL6esvKl0OJBqWbGNXg9TWv/VLtJIwgUno+MLaJuOM4Fh44+wpnqUXwQ
    TFtBFc8pzt5BoOwbv9gXpicTkq4/+GhwXWXxSVFebKhnHAvKSLT+Ba7K7ZeR8EIIxbXdDNFOiS45R2KI
    jxxXLXK44u6KGl5MygCKXUOFlJ+Zhgrq6ZH17z/RVJQ2CWqb5Ekn9GY3kH9QZ3mb4MDPfriWi2lHGXHY
    JmJd4SLQhpBdnOS5tu84QmyU3dNbAdzghDsR+dEY/6g7Cn0kcVkeHNZ0H+mCZik5f6XBD8eplkk43bdR
    FrkwTeAjwurGcKwdiKkR4DlfSq3DKssVBucTqUpqsKqPXLwTIL44rWKhEPXgGPB2XDG0VLvIRKkAgEGI
    LNTwOm091Ro=
    -----END RSA PRIVATE KEY-----

    -----BEGIN RSA PUBLIC KEY-----
    MIGHAoGBAOeIC9gRg3YaEGGMp3C00qNwLINAEDZV/J4BWM5WnWwCWZyHXDs2XiEmFu0ZONAD4gcT2f2f
    NNfCBPye39VVuOkKQuSV0MLLX5800LZ4y1BNcPzPZHpnGaCzl7iAjhfj9MolzAh5VRjeiYt0t1um4dm+
    q9A4BtfpJqDYxCW9uxd/AgEj
    -----END RSA PUBLIC KEY-----
    "                       E"Identifies the index of this fragment in the key pair input/output."                       B"A part of the readable text entry for the key pair input/output."                      "Table for storing fingerprints of remote servers public keys. It is used for
     the purpose of server authentication. An entry can be inserted to this table
     either explicitly by user configuration, or during copy operation, after
     user's approval."                       %" The row definition for this table."                       ""Remote server inet address type."                       "Remote server inet address."                       "Remote server fingerprint."                       "Row status for this row."                      "Setting this field to 'enable' enables remote servers authentication.
     As a result, while opening a session with a remote server, the fingerprint
     of the remote server will be computed and looked for in the table
     rlSshClientRemoteServerPublicKeyFingerprintTable. If an entry with the key
     (server-inet-address, server-fingerprint) is found, the server is considered
     authenticated. Otherwise, the server is not authenticated (unless the user
     specifically approved this server can be trusted)."                       i"This scalar indicates which of the SSH client keys are default keys
         (automatically generated)."                              