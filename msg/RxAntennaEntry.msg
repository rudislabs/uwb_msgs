# Bitmask indicating which fields are present
uint8 PRESENCE_ANGLE_OF_ARRIVAL     = 1
uint8 PRESENCE_PDOA                 = 2
uint8 PRESENCE_CIR_INDEX_ESTIMATE   = 4
uint8 PRESENCE_FIELD_OF_VIEW_FLAG   = 8
uint8 PRESENCE_FIRST_PATH_SNR       = 16
uint8 PRESENCE_MAIN_PATH_SNR        = 32
uint8 PRESENCE_FIRST_PATH_INDEX_CIR = 64
uint8 PRESENCE_MAIN_PATH_INDEX_CIR  = 128

uint8 field_presence_mask

uint8[<=4] rx_antenna_ids    # RX antenna id's used to form a pair

uint16 angle_of_arrival      # 2 octets signed Q9.7 format
uint16 pdoa                  # signed Q9.7 degrees [-180,180]
uint16 cir_index_estimate    # CIR index estimate at which PDoA [1…N] has been detected, zero if AOA_RESULT_REQ = 0
uint8 field_of_view_flag     # Flag that indicates that peer device is in FoV
uint8 first_path_snr         # SNR of first path in dB
uint8 main_path_snr          # SNR of main path in dB
uint16 first_path_index_cir  # first path index in the whole CIR
uint16 main_path_index_cir   # main path index in the whole CIR
