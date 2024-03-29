     �"This textual convention describes the various possible public key
         algorithms.  The key algorithm is used to select the PK to be generated
         and is also used when viewing the public keys."                                                                     ,"The private MIB module definition for SSL." l"5488 Marvell Lane
            Santa Clara, CA 95054
            USA

            Website:  www.marvell.com" "200309210000Z" $"Added this MODULE-IDENTITY clause."              �"This table is used for :
    1. generating keys and self signed certificate - saved in flash and RAM
    (not in configuration file)
    2. generating certificate requests - saved in RAM, can be read by
    rlSslCertificateExportTable
    3. generating self signed certificate - saved in flash and RAM (not in
    configuraion file)
    By setting rlSslCertificateGenerationAction to the appropriate
    value this action takes place. The other fields of this table are used for
    each of this actions"                       %" The row definition for this table."                       p"This index is always set to 1 no matter for which certificate or
    certificate request the action refers to."                      
"The device can hold a number of keys/certificates/certificate requests.
    These certificates are always numbered from 1 to N (maximum number of
    certificates in device). This field decides to which
    keys/certificates/certificate requests the action refers."                       ~"Value of country name field that will appear when a new certificate
        request or self signed certificate is generated."                       �"Value of state or province name field that will appear when a new
        certificate or self signed certificate is generated."                       r"Value of locality field that will appear when a new certificate or
        self signed certificate is generated."                       v"Value of organization field that will appear when a new certificate or
        self signed certificate is generated."                       v"Value of organization field that will appear when a new certificate or
        self signed certificate is generated."                       u"Value of common name field that will appear when a new certificate or
        self signed certificate is generated."                       �"When generating self signed certificate this field sets the valid fields.
        'Valid from' is current GMT and 'valid to' current GMT + the value of
        this field."                       }"Setting the RSA key size that will be created when a new key is generated -
         generateRsaKeyAndSelfSignedCertificate"                      �"When a RSA key is generated (generateRsaKeyAndSelfSignedCertificate)
        this passphrase is saved in flash and when the time comes and the
        certificate and the key are exported in PKCS12 format this passphrase
        is used to encrypt it. If the passphrase is empty the key and
        certificate can not be exported. There is no method of obtaining this
        passphrase once a key was generated."                       z"Setting to a regenerateCertificate causes a new certificate to be
        generated and to be used for all new sessions."                       |"Setting the EC key curve that will be created when a new key is generated -
         generateEcKeyAndSelfSignedCertificate"                       ?"This table is used for viewing saved data from RAM and flash."                       %" The row definition for this table."                       P"Identifies the index of this certficate / certificate request the table holds."                       6"Identifies the type of data the current entry shows."                       C"Identifies the index of this fragment in the certificate request."                       @"A part of the readable text entry for the certificate request."                      "Saves data from rlSslCertificateImportTable to RAM and CDB. When
        an external certificate should be copied to the device first we copy
        it to rlSslCertificateImportTable and then this scalar is set to the
        certificate id that we want to save -
        1. All entries in rlSslCertificateImportTable that have this id and
        their format is equal to the current value of rlSslCertificateSaveFormat
        are concatenated.
        2. If the imported certificate format is .. - section 1 result
        is validated against the key with the same index. If validation fails
        for any reason - the certificate is not saved and the setting this
        scalar fails.]
        This scalar is for certificate 1 only... for certificate 2 use
        rlSslCertificateSave2 "                       "."                       "."                       e"This table is used for copying an external certificate to the device -
    see rlSslCertificateSave"                       %" The row definition for this table."                       "The certificate ID."                       "."                       ;"Identifies the index of this fragment in the certificate."                       8"A part of the readable text entry for the certificate."                       ""                       �"if enabled then SSLv2 will be supported , if disabled SSLv2 won't be supported.
         only SSLV3 and TSL1.
         Note: disabling SSLv2 is more secure."                      �"This table can be used for 2 purposes:
     1) Importing public/private key pair to serve as the device key when acting
     as SSL server. This is done by setting entries to this table, according to
     the specified format. When the last entry (footer) is set, the whole key
     pair is checked and if valid, stored in CDB.
     2) Exporting the device SSL server public/private key. This can be done by
     performing GetNext operations on this table."                       %" The row definition for this table."                      "Specifies the format of public/key pair. The following formats are
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
    "                       G"Identifies the SSL server key index (there can be more than one key)."                       E"Identifies the index of this fragment in the key pair input/output."                       ""Identifies the type of key pair."                       B"A part of the readable text entry for the key pair input/output."                      "Saves data from rlSslCertificateImportTable to RAM and CDB. When
        an external certificate should be copied to the device first we copy
        it to rlSslCertificateImportTable and then this scalar is set to the
        certificate id that we want to save -
        1. All entries in rlSslCertificateImportTable that have this id and
        their format is equal to the current value of rlSslCertificateSaveFormat
        are concatenated.
        2. If the imported certificate format is .. - section 1 result
        is validated against the key with the same index. If validation fails
        for any reason - the certificate is not saved and the setting this
        scalar fails.]
        This scalar is for certificate 2 only... for certificate 1 use
        rlSslCertificateSave  "                       �"if set to true then this is the default key , will be configured
         when auto generation is done , will set to try , all other cases will
         be set to false.
          "                       �"if set to true then this is the default key , will be configured
         when auto generation is done , will set to try , all other cases will
         be set to false.
          "                              