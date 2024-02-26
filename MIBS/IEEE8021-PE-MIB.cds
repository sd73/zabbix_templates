     �"An integer that uniquely identifies a bridge port, as
        specified in 17.3.2.2 of IEEE 802.1ap.
        This value is used within the spanning tree
        protocol to identify this port to neighbor bridges."               J"Indicates the bandwidth in percent assigned to a
        traffic class."               0"Textual convention of an E-Channel Identifier."              "An integer that uniquely identifies a bridge port, as
        specified in 17.3.2.2 of IEEE 802.1ap.  The value 0
        means no port number, and this must be clarified in the
        DESCRIPTION clause of any object defined using this
        TEXTUAL-CONVENTION."              "The component identifier is used to distinguish between the
        multiple virtual bridge instances within a PB or PBB.  Each
        virtual bridge instance is called a component.  In simple
        situations where there is only a single component the default
        value is 1.  The component is identified by a component
        identifier unique within the BEB and by a MAC address unique
        within the PBBN.  Each component is associated with a Backbone
        Edge Bridge (BEB) Configuration managed object."               �"Indicates the Traffic Selection Algorithm
        0: Strict Priority
        1: Credit-based shaper
        2: Enhanced transmission selection
        3-254: Reserved for furture standardization
        255: Vendor specific"               O"Indicates a traffic class. Values 0-7 correspond to
        traffic classes."                                                                s"The PE MIB module for managing devices that support
        Bridge Port Extension.

        Unless otherwise indicated, the references in this MIB
        module are to IEEE Std 802.1BR-2012.

        Copyright (C) IEEE.
        This version of this MIB module is part of 
        IEEE 802.1BR-2012; see the specification itself
        for full legal notices."�"WG-URL: http:////www.ieee802.org/1/
            WG-EMail: stds-802-1-L@IEEE.ORG

             Contact: Tony Jeffree
              Postal: C/O IEEE 802.1 Working Group
                      IEEE Standards Association
                      445 Hoes Lane
                      Piscataway
                      NJ 08854
                      USA
              E-mail: stds-802-1-L@IEEE.ORG" "201201220000Z" ="Initial version published as part of IEEE Std. 802.1BR-2012"       -- January 22, 2012, 0000Z
              3"A table that contains per port information
        related to Port Extension.  A row is created in this
        table for any port on a Controlling Bridge that is
        extended using Port Extension, including those ports
        that provide communication to the Port Extenders
        themselves." "10.2.1"                     ,"A list of per port Port Extension objects."                       �"The component identifier is used to distinguish between the
        multiple virtual bridge instances within a PBB. In simple
        situations where there is only a single component the default
        value is 1."                       c"The port number of the port for which this entry
        contains bridge management information."                      %"The operational mode of a port participating in
        Port Exension.  The enumerated values are:
        pepCascade - the port is operating as a Cascade port
        pepUpstream - the port is operating as an Upstream port
        pepExtended - the port is operating as an Extended port" "10.2.1"                    ="The MAC address used for communication of the PE CSP
        protocol of the device connected to the upstream port
        of the Port Extender (which may be the Controlling 
        Bridge or an upstream Port Extender).  This provides
        the hierarchal relationship in a cascade of Port
        Extenders" "10.2.1"                     s"The default ECID assigend to this port and the port
        on the Port Extender to which this port corresponds." "10.2.1"                     b"The Port number on the of the Port on the Port Extender,
        or zero for the Upstream Port." "10.2.1"                    �"The value of sysUpTime on the most recent occasion at which
        any one or more of the counters in this conceptaul row
        suffered a discontinuity.  The relevant counters are the
        specific instances associated with this conceptual row of 
        any Counter32 or Counter64 object. If no such discontinuities
        have occurred since the last re-initialization of the local 
        management subsystem, then this object contains a zero value."                       j"The number of PE CSP flow control overflow errors
        that have occured for requests on the Bridge." "10.2.1"                     k"The number of PE CSP flow control overflow errors
        that have occured for responses on the Bridge." "10.2.1"                     q"The number of PE CSP flow control overflow errors
        that have occured for requests on the Port Extender." "10.2.1"                     r"The number of PE CSP flow control overflow errors
        that have occured for responses on the Port Extender." "10.2.1"                     �"Indicates whether the Port Exender supports
        modification of the priority code point
        table (true) or not (false)." "10.2.1"                     �"Indicates whether the Port Extender supports
        rows in the PCP table in addition to the 8P0D
        row (true)or not (false)." "10.2.1"                     �"Indicates whether the Port Extender supports
        encoding of the Drop Eligible Indicatior (true)
        or not (false)." "10.2.1"                     f"Indicates whether the Port Extender supports
        Congestion Notification (true) or not (false)." "10.2.1"                     r"Indicates whether the Port Extender supports
        Priority-based flow control(true) or
        not (false)." "10.2.1"                     ["Indicates the number of Extended Port
        E-channels supported by the Port Extender." "10.2.1"                     `"Indicates the number of Remote Replication
        E-channels supported by the Port Extender." "10.2.1"                     R"Indicates the number of traffic clasees
        supported by the Port Extender." "10.2.1"                     Q"Indicates the number of untagged VLANs
        supported by the Port Extender." "10.2.1"                     e"A table that contains one row for each Remote Replication
        entry in the filtering database." "10.3.1"                     '"A list of Remote Replication objects."                       H"The ECID assigend to this Remote Replication
        filtering entry." "10.3.1"                     B"The list of ports to which a frame is to be
        replicated." "10.3.1"                    9"A table that contains per port information
        related to Enhanced Transmission Selection.
        A row is created in this table for any port on a
        Controlling Bridge that corresponds to a Cascade
        Port. These objects refer to the ETS configuration 
        of the attached Upstream Port" "10.2.2"                     )"A list of per Cascade Port ETS objects."                       F"Indicates the traffic class to
        which this bandwidth applies" "10.2.3"                     S"Inticates the Traffic Selection Algorthm 
        assigned to this traffic class" "10.2.3"                     9"Indicates the bandwidth assigned to this traffic class." "10.2.3"                             Y"The collection of objects used to represent
        Port Extension management objects."                     Y"The compliance statement for devices supporting PE
        as defined in IEEE 802.1BR."                          