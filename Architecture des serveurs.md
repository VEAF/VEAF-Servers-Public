# Liste des versions, des ports et des mots de passes utilisés par les serveurs DCS et outils associés

Ce fichier liste tous les paramètres de chaque serveur.
A chaque fois qu'un paramètre qui est référencé dans ce fichier est modifié, il faut mettre à jour ce fichier.
On peut retrouver les fichiers qui référencent un paramètre en cherchant `SERVER-CONFIG-DATA` partout dans le dépôt.

<!-- SERVER-CONFIG-DATA PORTS -->
<!-- SERVER-CONFIG-DATA PASSWORDS -->
<!-- SERVER-CONFIG-DATA VERSIONS -->

## WINDOWS USERNAME
- username = veaf

|Référencé dans|
|---|
|`Users\veaf\Saved Games\private_server\Config\options.lua`|
|`Users\veaf\Saved Games\private_server\Config\serverSettings-default.lua`|
|`Users\veaf\Saved Games\private_server\DCS-SimpleRadio-Standalone\server.cfg`|
|`Users\veaf\Saved Games\private_server\Scripts\Hooks\DCS-SRS-AutoConnectGameGUI.lua`|
|`Users\veaf\Saved Games\private_server\Slmod\config.lua`|
|`Users\veaf\deleteOldFiles.ps1`|
|`Users\veaf\refresh-opentraining-and-run-dcs.cmd`|
|`Users\veaf\stop_private_server.ps1`|
|`Users\veaf\watchdog_private_server.ps1`|
|`Users\veaf\watchdog_PERUN_PRIVATE.ps1`|
|`Users\veaf\watchdog_SRS_PRIVATE.ps1`|
|`Users\veaf\Desktop\deleteOldFiles.cmd`|
|`Users\veaf\Desktop\relancer les serveurs.cmd`|

## VERSIONS

### DCS
- version = 2.8.1.34667.2

### SRS
- version = 2.0.8.2

|Référencé dans|
|---|
|`Users\veaf\watchdog_SRS_PRIVATE.ps1`|

### LotATC
- version = 2.2.9-1

### Tacview
- version = 1.8.8

### SLMOD
- version = xx.xx.xx

TODO trouver la version

### PERUN
- version = 0.12.1.0

|Référencé dans|
|---|
|`Users\veaf\watchdog_PERUN_PRIVATE.ps1`|

## PRIVATE SERVER

### DCS SERVER
- DCS.webgui_port = 10401
- DCS.webrtc_port = 10402
- DCS.port = 10403
- DCS.password = "BIRDSEED@dietetic6arroyo"

|Référencé dans|
|---|
|`Users\veaf\Saved Games\private_server\Config\autoexec.cfg`|
|`Users\veaf\Saved Games\private_server\Config\serverSettings-default.lua`|

### LotATC
- LotATC = 10404
- LotATC.BLUE = "gone1mulberry@DENGUE"
- LotATC.RED = "polarity_CHIMERIC4peduncle"

|Référencé dans|
|---|
|`Users\veaf\Saved Games\private_server\Mods\services\LotAtc\config.custom.lua`|

### SRS 
- SRS_LotATC = 10405
- SRS = 10406
- SRS.ExternalAwacs_BLUE = "DOXOLOGY2vincible_polyp"
- SRS.ExternalAwacs_RED = "thallium5MATTRESS.threw"
- SRS.domain = srs.mydomain.org

|Référencé dans|
|---|
|`Users\veaf\Saved Games\private_server\DCS-SimpleRadio-Standalone\server.cfg`|
|`Users\veaf\Saved Games\private_server\DCS-SimpleRadio-Standalone\SRS_for_scripting_config.lua`|
|`Users\veaf\Saved Games\private_server\Mods\services\LotAtc\config.custom.lua`|
|`Users\veaf\Saved Games\private_server\Scripts\Hooks\DCS-SRS-AutoConnectGameGUI.lua`|
|`Users\veaf\watchdog_SRS_PRIVATE.ps1`|

### SLMOD
- SLMOD = 10407
- SLMOD.adminPassword = "DOWNWARD1blueing!enceinte"

|Référencé dans|
|---|
|`Users\veaf\Saved Games\private_server\Slmod\config.lua`|

### TACVIEW
- TACVIEW.remoteControl = 10408
- TACVIEW.realtimeTelemetry = 10409
- TACVIEW.tacviewRemoteControlPassword = "singer4EXAMPLE.average"

|Référencé dans|
|---|
|`Users\veaf\Saved Games\private_server\Config\options.lua`|

### PERUN
- PerunConfig.TCPTargetPort = 10410
- PerunConfig.Instance = 1

|Référencé dans|
|---|
|`Users\veaf\Saved Games\private_server\Mods\services\Perun\lua\perun_config.lua`|
|`Users\veaf\watchdog_PERUN_PRIVATE.ps1`|

### BUFFERING SOCKET
- SOCKET = 10411

|Référencé dans|
|---|
|`Saved Games\private_server\Mods\services\BufferingSocket\lua\BufferingSocketConfig.lua`|
