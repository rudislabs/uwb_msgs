# Enums for covariance type
uint8 COVARIANCE_TYPE_UNKNOWN=0
uint8 COVARIANCE_TYPE_APPROXIMATED=1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN=2
uint8 COVARIANCE_TYPE_KNOWN=3

# Enums for ranging type
uint8 RANGING_TYPE_ONE_WAY = 0
uint8 RANGING_TYPE_TWO_WAY = 1
uint8 RANGING_TYPE_DL_TDOA = 2
uint8 RANGING_TYPE_OWR_AOA = 3

# Enums for mac address indicator (address length)
uint8 MAC_ADDRESS_INDICATOR_SHORT_ADDRESS=0 		# 2 byte address
uint8 MAC_ADDRESS_INDICATOR_EXTENDED_ADDRESS=1 		# 4 byte address

uint64 mac_address                                  # Mac address of sender
uint8 mac_address_indicator 						# Length of mac address indicator
geometry_msgs/PoseWithCovariance pose_covariance	# Calculated pose covariance
uint8 covariance_type 								# Covariance type
uint8 ranging_type 									# Ranging Measurement type