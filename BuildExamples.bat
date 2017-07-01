bin\x64\Tools-x64.exe /build Package.rsc:list /pathres ../example/translation /pathdat ../example/translation/bin
bin\x64\Tools-x64.exe /mod Package.rsc:translationExample /pathres ../example/translation /pathdat ../example/translation/bin

bin\x64\Tools-x64.exe /build apiaryResources.rsc /pathres ../example/building /pathdat ../example/building/bin
bin\x64\Tools-x64.exe /mod Package.rsc:apiary /pathres ../example/building /pathdat ../example/building/bin

bin\x64\Tools-x64.exe /build lettuceResources.rsc /pathres ../example/crop /pathdat ../example/crop/bin
bin\x64\Tools-x64.exe /mod Package.rsc:lettuce /pathres ../example/crop /pathdat ../example/crop/bin

bin\x64\Tools-x64.exe /build figResources.rsc /pathres ../example/tree /pathdat ../example/tree/bin
bin\x64\Tools-x64.exe /mod Package.rsc:fig /pathres ../example/tree /pathdat ../example/tree/bin

bin\x64\Tools-x64.exe /build whiteChickenResources.rsc /pathres ../example/animal /pathdat ../example/animal/bin
bin\x64\Tools-x64.exe /mod Package.rsc:whiteChicken /pathres ../example/animal /pathdat ../example/animal/bin
