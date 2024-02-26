   ("The Syslog Protocol (RFC5424): Table 2"�"This textual convention enumerates the Severity levels
        of syslog messages.

        The Severity levels of syslog messages are numerically
        coded with decimal values.  For interoperability and
        backwards-compatibility reasons, this document specifies
        a normative mapping between a label, which represents a
        Severity level, and the corresponding numeric value.
        This label could be used in, for example, SNMP Manager
        user interfaces.

        The label itself is often semantically meaningless
        because it is impractical to attempt to strictly define
        the criteria for each Severity level, and the criteria
        that is used by syslog originators is, and has
        historically been, implementation-dependent.

        Note that operating system mechanisms for configuring
        syslog, such as syslog.conf, have not yet been standardized
        and might use different sets of Severity labels and/or
        mapping between Severity labels and Severity codes than the
        MIB.

        For example, the foobar application might log messages as
        'crit' based on some subjective criteria.  Yet the operator
        can configure syslog to forward these messages, even though
        the criteria for 'crit' may differ from one originator to
        another.  This is typical current practice, and originators,
        relays, and collectors can be configured to properly handle
        this situation.
        "             ("The Syslog Protocol (RFC5424): Table 1"�"This textual convention enumerates the Facilities that
        originate syslog messages.

        The Facilities of syslog messages are numerically coded
        with decimal values.  For interoperability and backwards-
        compatibility reasons, this document specifies a
        normative mapping between a label, which represents a
        Facility, and the corresponding numeric value.  This label
        could be used in, for example, SNMP Manager user
        interfaces.

        The label itself is often semantically meaningless
        because it is impractical to attempt to enumerate all
        possible Facilities, and many daemons and processes do
        not have an explicitly assigned Facility code or label.
        For example, there is no Facility label corresponding to
        an HTTP service.  An HTTP service implementation might log
        messages as coming from, for example, 'local7' or 'uucp'.
        This is typical current practice, and originators, relays,
        and collectors can be configured to properly handle this
        situation.  For improved accuracy, an application can also
        include an APP-NAME structured data element.

        Note that operating system mechanisms for configuring
        syslog, such as syslog.conf, have not yet been standardized
        and might use different sets of Facility labels and/or
        mapping between Facility labels and Facility codes than the
        MIB.

        In particular, the labels corresponding to Facility codes 4,
        10, 13, and 14, and the code corresponding to the Facility
        label 'cron' are known to vary across different operating
        systems.  To distinguish between the labels corresponding
        to Facility codes 9 and 15, a label of 'cron2' is assigned
        to the Facility code 15.  This list is not intended to be
        exhaustive; other differences might exist, and new
        differences might be introduced in the future.

        The mapping specified here MUST be used in a MIB network
        management interface, even though a particular syslog
        implementation might use a different mapping in a
        different network management interface.
       "                                        �"The MIB module containing textual conventions for syslog
        messages.
        Copyright (c) 2009 IETF Trust and the persons
        identified as authors of the code.  All rights reserved.
        Redistribution and use in source and binary forms, with or
        without modification, are permitted provided that the
        following conditions are met:

        - Redistributions of source code must retain the above
          copyright notice, this list of conditions and the
          following disclaimer.

        - Redistributions in binary form must reproduce the above
          copyright notice, this list of conditions and the
          following disclaimer in the documentation and/or other
          materials provided with the distribution.

        - Neither the name of Internet Society, IETF or IETF
          Trust, nor the names of specific contributors, may be
          used to endorse or promote products derived from this
          software without specific prior written permission.

        THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
        CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED
        WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
        WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
        PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT
        OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
        INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
        (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
        GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
        BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
        LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
        (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
        OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
        POSSIBILITY OF SUCH DAMAGE.

        This version of this MIB module is part of RFC 5427;
        see the RFC itself for full legal notices.
        ""                      Glenn Mansfield Keeni
                   Postal: Cyber Solutions Inc.
                           6-6-3, Minami Yoshinari
                           Aoba-ku, Sendai, Japan 989-3204.
                      Tel: +81-22-303-4012
                      Fax: +81-22-303-4015
                    EMail: glenn@cysols.com
       Support Group EMail: syslog@ietf.org
    " "200903300000Z" -"The initial version, published as RFC 5427."       --  30 March 2009
          