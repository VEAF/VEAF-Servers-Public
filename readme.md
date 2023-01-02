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

Ensuite, il faut déclarer des serveurs DCS dans `Saved Games`, comme par exemple `Users\veaf\Saved Games\private_server`.

## Configuration

Le fichier [Architecture des serveurs.md](Architecture%20des%20serveurs.md) contient les données de configuration des serveurs.

Il est très important de le tenir à jour.

### Liens symboliques

Pour éviter de recopier la même configuration à de nombreux endroits, il est conseillé de créer des liens symboliques.

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
