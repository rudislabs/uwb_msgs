# Enums for ranging type
uint8 RANGING_TYPE_ONE_WAY = 0
uint8 RANGING_TYPE_TWO_WAY = 1
uint8 RANGING_TYPE_DL_TDOA = 2
uint8 RANGING_TYPE_OWR_AOA = 3

# Enums for mac address indicator (address length)
uint8 MAC_ADDRESS_INDICATOR_SHORT_ADDRESS=0 		# 2 byte address
uint8 MAC_ADDRESS_INDICATOR_EXTENDED_ADDRESS=1 		# 8 byte address

std_msgs/Header header

uint8 ranging_type 									# Ranging Measurement type
uint32 session_id 									# Session id for ranging
uint32 session_sequence 							# Sequence number in session
uint32 ranging_interval 							# Ranging interval in msec
uint8 mac_address_indicator 						# Length of mac address indicator
uint8 measurements 									# Number of ranging measurements
bool authenticated 									# Authentication running or not

DownLinkTimeDifferenceOfArrival[] dl_tdoa_data
#OneWayRanging data (TODO)
TwoWayRanging[] two_way_data
