#Name: BinniesMods.zs
#Author: Si_hen

print("Initializing 'BinniesMods.zs'...");

#misc
recipes.remove(<Genetics:misc>);
recipes.addShaped(<Genetics:misc>, [[<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:22>, <Forestry:hardenedMachine>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>]]);
recipes.remove(<Genetics:misc:9>);
recipes.addShaped(<Genetics:misc:9>, [[<Forestry:thermionicTubes:11>, <Forestry:thermionicTubes:10>, <Forestry:thermionicTubes:7>], [<Forestry:thermionicTubes:6>, <Forestry:chipsets:3>, <Forestry:thermionicTubes:6>], [<Forestry:thermionicTubes:7>, <Forestry:thermionicTubes:10>, <Forestry:thermionicTubes:11>]]);
recipes.remove(<Genetics:misc:11>);
recipes.addShaped(<Genetics:misc:11>, [[<Genetics:misc:9>, <Genetics:misc:10>, <Genetics:misc:9>], [<Genetics:misc:10>, <Genetics:misc>, <Genetics:misc:10>], [<Genetics:misc:9>, <Genetics:misc:10>, <Genetics:misc:9>]]);

#lab stand
recipes.remove(<Genetics:labMachine>);
recipes.addShaped(<Genetics:labMachine>, [[<Creator:itemCrystal:1>, <StevesCarts:ModuleComponents:49>, <Creator:itemCrystal:1>], [<StevesCarts:ModuleComponents:49>, <Genetics:misc:11>, <StevesCarts:ModuleComponents:49>], [<TConstruct:materials:3>, <gendustry:PowerModule>, <TConstruct:materials:3>]]);

#isolator
recipes.remove(<Genetics:machine>);
recipes.addShaped(<Genetics:machine>, [[<Creator:compactPhasedGoldPlate>, <gendustry:GeneticsProcessor>, <Creator:compactPhasedGoldPlate>], [<BuildCraft|Factory:tankBlock>, <Genetics:labMachine>, <gendustry:BeeReceptacle>], [<Genetics:misc:3>, <Creator:gearVibrant>, <Genetics:misc:3>]]);

#sequencer
recipes.remove(<Genetics:machine:1>);
#recipes.addShaped(<Genetics:machine:1>, [[], [], []]);

print("Initialized 'BinniesMods.zs'");