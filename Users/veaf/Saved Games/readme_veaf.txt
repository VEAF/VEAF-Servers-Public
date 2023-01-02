Les fichiers ServerAdmins.lua et veaf-pilots.txt sont les originaux qui doivent être tenus à jour.

Ils sont censés avoir un hardlink dans les répertoires des serveurs :
 - <serveur>\Slmod pour ServerAdmins.lua
 - <serveur>\Scripts\Hooks pour veaf-pilots.txt
 
Deux hooks à installer dans tous les serveurs (<serveur>\Scripts\Hooks) :
 - VEAF-Server-hook.lua
 - VEAF-specific-server-hook.lua ; dans ce dernier, éditer la constante veafSpecificServerHook.serverName qui sera injectée dans veaf.config.SERVER_NAME dans la mission (si elle embarque les scripts VEAF)