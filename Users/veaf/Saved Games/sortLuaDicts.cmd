rem Script that reads the sortLuaDicts-options_filesList.txt and sort the LUA config files `options.lua`
rem It's used to more easily compare a stored options file (e.g. in a github repo) with a DCS-server live options file.

FOR /F "tokens=*" %%f IN (sortLuaDicts-options_filesList.txt) DO "C:\Program Files (x86)\Lua\5.1\lua.exe" dictionaryNormalizer.lua "%%f" > "%%f.sorted.lua"
