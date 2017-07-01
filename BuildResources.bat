bin\x64\Tools-x64.exe /build Dialog\Loading.rsc
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad0
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad1
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad2
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad3
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad4
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad5
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad6
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad7
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad8
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad9
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad10
bin\x64\Tools-x64.exe /build Dialog\Loading.rsc:gameLoad11
bin\x64\Tools-x64.exe /build Game\GlobalResources.rsc
bin\x64\Tools-x64.exe /build Game\MenuResources.rsc
bin\x64\Tools-x64.exe /build Game\GameResources.rsc

if not exist bin\WinData\Save\ md bin\WinData\Save\
copy resource\Save\*.sav bin\WinData\Save\

