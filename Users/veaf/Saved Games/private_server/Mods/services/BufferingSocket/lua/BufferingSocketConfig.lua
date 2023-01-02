-- SERVER-CONFIG-DATA PORTS

local config = {}

-- ###################### SETTINGS - DO NOT MODIFY OUTSIDE THIS SECTION #############################
config.host         = "127.0.0.1" -- (string) [default: "127.0.0.1"] IP adress of the socket server
config.port         = 10411       -- (int) [default: 38181] TCP port to send data to
config.refreshDelay = 10          -- (int) [default: 1] number of seconds between the data to send is computed
config.rippleDelay  = 1           -- (int) [default: 1] number of seconds between each packet (ripple mode in the export script)
config.activate     = 0           -- (int) [default: 1] if 0, disabled ; enabled else
-- ###################### END OF SETTINGS - DO NOT MODIFY OUTSIDE THIS SECTION ######################
return config
