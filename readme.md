# VEAF serveurs public DCS

## Introduction

Ce dépot contient tout ce qui permet à nos serveurs DCS de tourner 24/7.

Il est bien sûr obfusqué, mais il est possible de le cloner et de le faire tourner sur votre propre machine.

Pour ce faire, suivez les instructions ci-dessous.

## Pré-requis

Une VM Windows 10 avec les logiciels suivants installés :
- DCS

Optionnel :
- Tacview
- LotATC
- SRS
- PERUN
- OvGME
- NodeJS

## Installation

Il faut installer [le serveur dédié DCS](https://www.digitalcombatsimulator.com/en/downloads/world/server_beta/) dans un répertoire de votre choix, par exemple `c:\DCS World OpenBeta Server`.

Attention, il faut installer la version `OpenBeta` du serveur, et non la version `Stable`.

Si vous installez ailleurs que dans `c:\DCS World OpenBeta Server`, il faudra modifier les scripts de démarrage et d'arrêt des serveurs (e.g. `Users\veaf\just-run-dcs.cmd`). Aussi, nous déconseillons d'installer DCS dans "Program files", parce que ça peut poser des problèmes de droits d'accès.

Ensuite, il faut déclarer des serveurs DCS dans `Saved Games`, comme par exemple `Users\veaf\Saved Games\private_server`.

## Installation des mods

Il faut installer des mods dans le répertoire d'installation de DCS. 

Nous conseillons l'utilisation d'OvGME pour installer les mods, mais c'est possible de le faire manuellement.

Attention : après chaque mise à jour de DCS il faudra réinstaller les mods.

### Mod "Hacks - desanitize for SlMod"

Ce mod permet d'étendre ce qui est possible de faire en LUA dans DCS, ce qui est nécessaire pour que SlMod fonctionne correctement.

Par défaut, DCS désactive (sanitize) certaines fonctions de LUA pour des raisons de sécurité.

Ce mod permet de les réactiver.

Attention : ce mod installe le fichier `Scripts\MissionScripting.lua` dans le répertoire d'installation de DCS, et il doit être identique au fichier de SLMOD qui est présent dans chaque serveur DCS configuré (e.g. `Saved Games\private_server\Scripts\net\Slmodv7_6\SlmodMissionScripting.lua`). Si le fichier est édité à un seul des deux endroits, ça ne fonctionnera pas !

### Mod "Correction - missing launcher  image"

C'est un mod optionnel qui permet d'afficher une image de lancement pour les serveurs DCS. En effet un bug existe depuis des années, qui fait que les fenêtre de lancement des serveurs DCS apparaissent vides.

## Configuration

Le fichier [Architecture des serveurs.md](Architecture%20des%20serveurs.md) contient les données de configuration des serveurs.

Il est très important de le tenir à jour, afin de s'assurer que tout est documenté clairement.

### Liens symboliques

Pour éviter de recopier la même configuration à de nombreux endroits, il est conseillé de créer des liens symboliques.

Pour ça on peut utiliser la commande *mklink* de Windows :

```cmd
MKLINK "C:\Users\veaf\Saved Games\private_server\Slmod\BannedClients.lua" "C:\Users\veaf\Saved Games\BannedClients.lua"
```
Attention, la syntaxe c'est d'abord la cible du lien, puis la source (inversé par rapport au tableau ci-dessous)

En pratique, on créera ces liens :

|Source du lien|Destination du lien|
|---|---|
|`Users\veaf\Saved Games\BannedClients.lua`|`Users\veaf\Saved Games\private_server\Slmod` (1)|
|`Users\veaf\Saved Games\ExemptClients.lua`|`Users\veaf\Saved Games\private_server\Slmod` (1)|
|`Users\veaf\Saved Games\ServerAdmins.lua`|`Users\veaf\Saved Games\private_server\Slmod` (1)|
|`Users\veaf\Saved Games\veaf-pilots.txt`|`Users\veaf\Saved Games\private_server\Scripts\Hooks` (1)|
|`Users\veaf\Saved Games\DCS.missions\configuration.json`|`Users\veaf\Saved Games\DCS.missions\VEAF_OpenTraining-Caucasus` (2)|

(1) On fera un lien par serveur (ici `private_server` est un serveur)

(2) On fera un lien par mission dynamique (ici `VEAF_OpenTraining-Caucasus` est une mission dynamique avec les scripts VEAF)

### Liens sur le bureau

Il faut refaire les liens sur le bureau en fonction des serveurs. 

|Source du lien|Destination du lien|
|---|---|
|`Stop PRIVATE.lnk`|`C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File C:\Users\veaf\stop_private_server.ps1`|
|`Surveillance PRIVATE.lnk`|`C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File C:\Users\veaf\watchdog_private_server.ps1`|
|`Surveillance SRS PRIVATE.lnk`|`C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File C:\Users\veaf\watchdog_SRS_PRIVATE.ps1`|
|`Surveillance PERUN PRIVATE`|`C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File C:\Users\veaf\watchdog_PERUN_PRIVATE.ps1`|

## Installation d'un serveur DCS

### Création d'un serveur DCS

On commence par choisir le nom du serveur, par exemple `private_server`. 

Il faut également sélectionner des ports pour DCS et aussi pour tous les outils.

Le plus simple est de recopier la configuration exemple que nous donnons ici (serveur "private_server"), et de la modifier en fonction des besoins.

Attention : c'est évident, mais il ne faut pas que les ports soient utilisés par un autre serveur DCS !

Il faudra prendre soin d'ouvrir les ports externes dans le pare-feu de Windows. Cela concerne :
- DCS :  *DCS.ext*
- DCS WebGUI : *DCS.webgui_port* (pour que la page "Serveurs" de ED puisse accéder au serveur)
- LotATC : *LotATC.ext*
- SRS : *SRS.ext*
- Tacview : *TACVIEW.remoteControl* et *TACVIEW.realtimeTelemetry*

# DCS TCP inbound rules
New-NetFirewallRule -DisplayName "DCS TCP Inbound" -Direction Inbound -LocalPort 10308 -Protocol TCP -Action Allow

# DCS UDP inbound rules
New-NetFirewallRule -DisplayName "DCS UDP Inbound" -Direction Inbound -LocalPort 10308 -Protocol UDP -Action Allow

# DCS WebGUI TCP inbound  rules
New-NetFirewallRule -DisplayName "DCS WebGUI TCP Inbound" -Direction Inbound -LocalPort 8088 -Protocol TCP -Action Allow

# TacView Realtime Telemetry
New-NetFirewallRule -DisplayName "TacView Realtime Telemetry Inbound" -Direction Inbound -LocalPort 42674 -Protocol TCP -Action Allow

# TacView Remote Control
New-NetFirewallRule -DisplayName "TacView Remote Control Inbound" -Direction Inbound -LocalPort 42675 -Protocol TCP -Action Allow

# DCS SRS TCP1
New-NetFirewallRule -DisplayName "DCS SRS TCP1" -Direction Inbound -LocalPort 5002 -Protocol TCP -Action Allow

# DCS SRS TCP2
New-NetFirewallRule -DisplayName "DCS SRS TCP2" -Direction Inbound -LocalPort 5003 -Protocol TCP -Action Allow

### Installation de 