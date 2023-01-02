-- SERVER-CONFIG-DATA PORTS
-- SERVER-CONFIG-DATA PASSWORDS

lotatc_inst.options =  {
  -------------------------------------------------------------------
  --- Rename this file as config.custom.lua to set options on your server
  --- Here is the common values
  --- See config.lua to see all available value
  -------------------------------------------------------------------
  -------------------- Options that cannot be added yet in DCS Options
  -- Enable LotAtc
  -- (default=true)
    use_atc = true,
  -- LotAtc server port
  -- (default=10310)
    port = 10404,

  -- Passwords
  -- Put "" disable password for red
  -- (default="red")
	red_password    = "polarity_CHIMERIC4peduncle",
  -- Put "" disable password for blue
  -- (default="blue")
	blue_password   = "gone1mulberry@DENGUE",

  ---------------------- Dedicated mode only
  -- Dedicated mode enable
  -- Profile will be set to the dedicated_profile below
  -- (default=false)
    dedicated_mode = true,

  -- For dedicated mode enabled, this will set the profile
  -- (default="realistic.lua")
    dedicated_profile = "realistic.lua",
  
  ---------------------- SRS options
  -- Enable SRS transponder function
  -- (default=true)
    srs_use_transponder = true,

  -- SRS transponder port
  -- (default=10712)
    srs_transponder_port = 10405,
}
