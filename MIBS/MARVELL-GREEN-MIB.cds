     k"Green saving types:
         energyDetect(1)  uses energy detect
         shortReach(2)  uses Short Reach"              /"Reason why Green Ethernet is not activated saving on a port
         NP(1)                  Port is not present - Applicable in ED & SR
         LT(2)                  Link Type is not supported(fiber, auto media setect) - Applicable in ED & SR
         LU(3)                  Port link is up - Applicable only in ED
         LS(4)                  Link speed is not supported (100M,10M,10G) - Applicable only in SR
         LL(5)                  Link length received from VCT test exceed threshold - Applicable only in SR
         ER(6)                  Errors detected on line and port revered back to Long Reach(only in enhanced mode) - Applicable only in SR
         LD(7)                  Port link is Down - Applicable only in SR
         unknown(8)             In case that green Active or disable on port"               @"cable length calculated when link is up
		Relevant only for SR"                                     M"The private MIB module definition for Green Ethernet Energy Detect feature." Q"5488 Marvell Lane
			Santa Clara, CA 95054
			USA

			Website:  www.marvell.com" "200808150000Z" b"Add Green Ethernet Energy Detect and Short Reach support per port and per system rlGreenEthernet"     -- August 15, 2008
         9"This scalar defines Green Ethernet Enrgy-Detect Globaly"                       8"This scalar defines Green Ethernet Short-Reach Globaly"                      _"This scalar define Green Ethernet all modes current Energy consumption per system in mWatt
         in order to calculate current energy consumption in percent proportional to Consumption without Green Ethernet feature
         please use the following formula:
         (rlGreenEthCurrentEnergyConsumption/rlGreenEthCurrentMaxEnergyConsumption)*100"                       �"This scalar define Green Ethernet current maximum consumption Energy consumption per system in mWatt,
         as it was without Green Ethernet feature."                       Q"This scalar define Green Ethernet cumulative power save per system in Watt*Hour"                       i"The usage threshold expressed in meter for
                determinate the cable length for Short-Reach"                       �"The rlGreenEthCumulativePowerSaveMeterReset indicates that rlGreenEthCumulativePowerSaveMeter
            should be set to ziro.

            This object behaviors as write-only than
            reading this object will always return 'false'."                       !"A table of green state of ports"                       !"An entry of green state of port"                       "Green saving types"                       "Active\non Active"                       "Active\non Active"                       )"Reason why saving mode is not activated"                       )"cable length calculated when link is up"                       r"The ports that forced enable the Green Ethernet Short Reach configuration
          not considering VCT results."                     -- empty octet string
 5"Mask all ports led  according to the configuration."                                  