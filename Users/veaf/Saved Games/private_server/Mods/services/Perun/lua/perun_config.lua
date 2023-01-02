-- SERVER-CONFIG-DATA PORTS
-- SERVER-CONFIG-DATA TEXTS


-- Perun for DCS World https://github.com/szporwolik/perun -> DCS Hook config component
local PerunConfig = {}

-- ###################### SETTINGS - DO NOT MODIFY OUTSIDE THIS SECTION #############################
-- Connection
PerunConfig.TCPPerunHost = "localhost"														    -- (string) [default: "localhost"] IP adress of the Perun instance or "localhost"
PerunConfig.TCPTargetPort = 10410	                                    -- (int) [default: 48621] TCP port to send data to
PerunConfig.Instance = 1                                              -- (int) [default: 1] Id number of instance (if multiple DCS instances are to run at the same PC)
PerunConfig.RefreshStatus = 60                                        -- (int) [default: 60] Base refresh rate in seconds to send status update

-- Mission Configuration
PerunConfig.MissionStartNoDeathWindow = 300                           -- (int) [default: 300] Number of secounds after mission start when death of the pilot will not go to statistics, shall avoid death penalty during spawning DCS bugs

-- Localisation
PerunConfig.MOTD_L1 = "Bienvenue sur le serveur privé"                -- (string) Message send to players connecting the server - Line 1
PerunConfig.MOTD_L2 = ""                                              -- (string) Message send to players connecting the server - Line 2
PerunConfig.ConnectionError_L1 = "[Perun] ERROR: Connection broken - contact server admin!"     -- (string) Information to send to players when Perun connection is broken

-- Misc
PerunConfig.BroadcastPerunErrors = 0                                  -- (int) [0 (default),1] Value greater than 0 will broadcast chat message about missing connection to Perun
PerunConfig.RecordChatMessages = false

-- Debug
PerunConfig.DebugMode = 0                                             -- (int) [0 (default),1,2] Value greater than 0 will display Perun information in DCS log file, values: 1 - minimal verbose, 2 - all log information will be logged

-- ###################### END OF SETTINGS - DO NOT MODIFY OUTSIDE THIS SECTION ######################
return PerunConfig
  