-- SERVER-CONFIG-DATA PORTS
-- SERVER-CONFIG-DATA PASSWORDS
-- SERVER-CONFIG-DATA TEXTS
-- SERVER-CONFIG-DATA WINDOWS_USERNAME

cfg = 
{
    ["current"] = 1,
    ["listStartIndex"] = 1,
    ["description"] = "Serveur privé\
========================\
Server description\
========================",
    ["require_pure_textures"] = false,
    ["advanced"] = 
    {
        ["allow_change_tailno"] = true,
        ["disable_events"] = false,
        ["allow_ownship_export"] = true,
        ["allow_object_export"] = true,
        ["pause_on_load"] = false,
        ["allow_sensor_export"] = true,
        ["event_Takeoff"] = false,
        ["pause_without_clients"] = true,
        ["client_outbound_limit"] = 0,
        ["client_inbound_limit"] = 0,
        ["server_can_screenshot"] = false,
        ["allow_players_pool"] = true,
        ["voice_chat_server"] = false,
        ["allow_change_skin"] = true,
        ["event_Connect"] = true,
        ["event_Ejecting"] = false,
        ["event_Kill"] = false,
        ["event_Crash"] = false,
        ["event_Role"] = false,
        ["allow_dynamic_radio"] = true,
        ["allow_trial_only_clients"] = false,
        ["resume_mode"] = 2,
        ["maxPing"] = 0,
    }, -- end of ["advanced"]
    ["port"] = 10403,
    ["mode"] = 0,
    ["bind_address"] = "",
    ["isPublic"] = true,
    ["listShuffle"] = false,
    ["password"] = "BIRDSEED@dietetic6arroyo",
    ["listLoop"] = false,
    ["name"] = "Serveur privé",
    ["require_pure_scripts"] = false,
    ["missionList"] = 
    {
      [001] = "C:\\Users\\veaf\\Saved Games\\DCS.missions\\empty-caucasus.miz",
      [002] = "C:\\Users\\veaf\\Saved Games\\DCS.missions\\empty-syria.miz",
      [003] = "C:\\Users\\veaf\\Saved Games\\DCS.missions\\empty-persiangulf.miz",
    }, -- end of ["missionList"]
    ["uri"] = "startServer",
    ["require_pure_clients"] = false,
    ["require_pure_models"] = false,
    ["maxPlayers"] = "64",
} -- end of cfg
