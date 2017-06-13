#Name: StevesCarts.zs
#Author: Si_hen

print("Initializing 'StevesCarts.zs'...");

#components
recipes.remove(<StevesCarts:ModuleComponents:9>);
recipes.addShaped(<StevesCarts:ModuleComponents:9>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [<ore:dustRedstone>, <OpenComputers:item:32>, <ore:dustRedstone>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.remove(<StevesCarts:ModuleComponents:18>);
recipes.addShaped(<StevesCarts:ModuleComponents:18> * 4, [[<ore:obsidian>, <ProjRed|Core:projectred.core.part:56>, <ore:obsidian>], [<ProjRed|Core:projectred.core.part:56>, <ore:gemDiamond>, <ProjRed|Core:projectred.core.part:56>], [<ore:obsidian>, <ProjRed|Core:projectred.core.part:56>, <ore:obsidian>]]);
recipes.remove(<StevesCarts:ModuleComponents:21>);
recipes.addShaped(<StevesCarts:ModuleComponents:21> * 5, [[<ore:ingotSteel>, <StevesCarts:ModuleComponents:20>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>] ,[<StevesCarts:ModuleComponents:19>, <StevesCarts:ModuleComponents:19>, <StevesCarts:ModuleComponents:19>]]);
recipes.remove(<StevesCarts:ModuleComponents:30>);
mods.logistics.hammer.addRecipe(<minecraft:chest>, <StevesCarts:ModuleComponents:30> * 16);
recipes.remove(<StevesCarts:ModuleComponents:44>);
recipes.addShaped(<StevesCarts:ModuleComponents:44>, [[<SolarExpansion:photovoltaicCell>, <SolarExpansion:photovoltaicCell>, <SolarExpansion:photovoltaicCell>], [<ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>], [<ProjRed|Core:projectred.core.part:55>, <ProjRed|Core:projectred.core.part:55>, <ProjRed|Core:projectred.core.part:55>]]);
recipes.remove(<StevesCarts:ModuleComponents:58>);
recipes.addShaped(<StevesCarts:ModuleComponents:58>, [[<StevesCarts:ModuleComponents:44>, null, <StevesCarts:ModuleComponents:44>], [<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:16>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:44>, null, <StevesCarts:ModuleComponents:44>]]);
recipes.remove(<StevesCarts:CartModule:49>);
recipes.addShaped(<StevesCarts:CartModule:49>, [[null, <Railcraft:machine.alpha>, null], [<StevesCarts:ModuleComponents:9>, <ore:ingotIron>, <StevesCarts:ModuleComponents:9>], [<ore:ingotIron>, <StevesCarts:ModuleComponents:16>, <ore:ingotIron>]]);
recipes.remove(<StevesCarts:CartModule:42>);
recipes.addShaped(<StevesCarts:CartModule:42>, [[<ore:ingotIron>, <ore:ingotIron>], [<ImmersiveEngineering:drillhead>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>]]);
recipes.remove(<StevesCarts:CartModule:8>);
recipes.addShaped(<StevesCarts:CartModule:8>, [[<RandomThings:ingredient:6>, <RandomThings:ingredient:6>], [<StevesCarts:CartModule:42>, <RandomThings:ingredient:6>, <RandomThings:ingredient:6>], [<RandomThings:ingredient:6>, <RandomThings:ingredient:6>]]);
recipes.remove(<StevesCarts:ModuleComponents:1>);
recipes.addShaped(<StevesCarts:ModuleComponents:1>, [[null, <ore:ingotIron>], [<ore:ingotIron>, <StevesCarts:ModuleComponents>, <ore:ingotIron>], [null, <ore:ingotIron>]]);
recipes.remove(<StevesCarts:ModuleComponents:23>);
recipes.addShaped(<StevesCarts:ModuleComponents:23>, [[null, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:1>, <StevesCarts:ModuleComponents:22>], [null, <StevesCarts:ModuleComponents:22>]]);

#upgrades
recipes.remove(<StevesCarts:upgrade>);
recipes.addShaped(<StevesCarts:upgrade>, [[<ProjRed|Core:projectred.core.part:10>, <ProjRed|Core:projectred.core.part:10>, <ProjRed|Core:projectred.core.part:10>], [<ProjRed|Core:projectred.core.part:10>, <Magneticraft:item.battery:101>, <ProjRed|Core:projectred.core.part:10>], [<ProjRed|Core:projectred.core.part:10>, <StevesCarts:ModuleComponents:59>, <ProjRed|Core:projectred.core.part:10>]]);
recipes.remove(<StevesCarts:upgrade:1>);
recipes.addShaped(<StevesCarts:upgrade:1>, [[<RandomThings:ingredient:6>, <ore:dustGlowstone>, <RandomThings:ingredient:6>], [<ore:dustGlowstone>, <ore:gemEmerald>, <ore:dustGlowstone>], [<RandomThings:ingredient:6>, <StevesCarts:upgrade>, <RandomThings:ingredient:6>]]);
recipes.remove(<StevesCarts:upgrade:4>);
recipes.addShaped(<StevesCarts:upgrade:4>, [[<StevesCarts:ModuleComponents:9>, <minecraft:enchanted_book>.withTag({ench: [{lvl: 1 as short, id: 32 as short}]}), <StevesCarts:ModuleComponents:9>], [<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:16>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:59>, <StevesCarts:ModuleComponents:22>]]);

#cargo manager
recipes.remove(<StevesCarts:BlockCargoManager>);
recipes.addShaped(<StevesCarts:BlockCargoManager>, [[<StevesCarts:ModuleComponents:36>, <StevesCarts:ModuleComponents:38>, <StevesCarts:ModuleComponents:36>], [<Railcraft:machine.gamma>, <EnhancedInventories:improvedChest:1>.withTag({frameName: "frame.mc.iron"}), <Railcraft:machine.gamma:1>], [<StevesCarts:ModuleComponents:36>, <StevesCarts:ModuleComponents:35>, <StevesCarts:ModuleComponents:36>]]);

#assembler
recipes.remove(<StevesCarts:BlockCartAssembler>);
recipes.addShaped(<StevesCarts:BlockCartAssembler>, [[<RandomThings:ingredient:6>, <CarpentersBlocks:itemCarpentersHammer>, <RandomThings:ingredient:6>], [<ImmersiveEngineering:tool>, <Creator:chamberIron>, <Creator:IronHammer>], [<StevesCarts:ModuleComponents:9>, <ThermalExpansion:wrench>, <StevesCarts:ModuleComponents:9>]]);

#railfix
recipes.remove(<StevesCarts:BlockAdvDetector>);
recipes.addShaped(<StevesCarts:BlockAdvDetector>, [[<ore:ingotSteel>, <minecraft:stone_pressure_plate>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:detector_rail>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:stone_pressure_plate>, <ore:ingotSteel>]]);

#Galgadorian
#recipes.remove(<StevesCarts:ModuleComponents:46>);
#recipes.addShaped(<StevesCarts:ModuleComponents:46> * 3, [[<ProjRed|Core:projectred.core.part:14>, <ore:blockDiamond>, <ProjRed|Core:projectred.core.part:14>], [<StevesCarts:ModuleComponents:45>, <ore:ingotCarbide>, <StevesCarts:ModuleComponents:45>], [<StevesCarts:ModuleComponents:21>, <StevesCarts:ModuleComponents:45>, <StevesCarts:ModuleComponents:21>]]);
furnace.remove(<StevesCarts:ModuleComponents:49>);

#glass o'magic
recipes.remove(<StevesCarts:ModuleComponents:5>);
mods.thaumcraft.Crucible.addRecipe("ASPECTS", <StevesCarts:ModuleComponents:5>, <minecraft:glass:*>, "praecantatio 4");

print("Initialized 'StevesCarts.zs'");