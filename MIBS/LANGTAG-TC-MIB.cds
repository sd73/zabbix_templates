   "RFC 4646 BCP 47""A language tag, constructed in accordance with BCP 47.

            Only lowercase characters are allowed.  The purpose of this
            restriction is to provide unique language tags for use as
            indexes.  BCP 47 recommends case conventions for user
            interfaces, but objects using this TEXTUAL-CONVENTION MUST
            use only lowercase.

            Values MUST be well-formed language tags, in conformance
            with the definition of well-formed tags in BCP 47.  An
            implementation MAY further limit the values it accepts to
            those permitted by a 'validating' processor, as defined in
            BCP 47.

            In theory, BCP 47 language tags are of unlimited length.
            The language tag described in this TEXTUAL-CONVENTION is of
            limited length.  The analysis of language tag lengths in BCP
            47 confirms that this limit will not pose a problem in
            practice.  In particular, this length is greater than the

            minimum requirements set out in Section 4.3.1.

            A zero-length language tag is not a valid language tag.
            This can be used to express 'language tag absent' where
            required, for example, when used as an index field."                                         b"This MIB module defines a textual convention for
            representing BCP 47 language tags." Q"EMail: ops-area@ietf.org
                  Home page: http://www.ops.ietf.org/" "200711090000Z" �"Initial revision, published as RFC 5131.

            Copyright (C) The IETF Trust (2007).  This version of this
            MIB module is part of RFC 5131; see the RFC itself for full
            legal notices."       -- 9 November 2007
          