#Name: StevesCarts.zs
#Author: Si_hen

print("Initializing 'StevesCarts.zs'...");

#components
recipes.remove(<StevesCarts:ModuleComponents:9>);
recipes.addShaped(<StevesCarts:ModuleComponents:9>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [<ore:dustRedstone>, <OpenComputers:item:32>, <ore:dustRedstone>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.remove(<StevesCarts:ModuleComponents:18>);
recipes.addShaped(<StevesCarts:ModuleComponents:18> * 2, [[<ore:obsidian>, <ProjRed|Core:projectred.core.part:56>, <ore:obsidian>], [<ProjRed|Core:projectred.core.part:56>, <ore:gemDiamond>, <ProjRed|Core:projectred.core.part:56>], [<ore:obsidian>, <ProjRed|Core:projectred.core.part:56>, <ore:obsidian>]]);
recipes.remove(<StevesCarts:ModuleComponents:21>);
recipes.addShaped(<StevesCarts:ModuleComponents:21> * 5, [[<ore:ingotSteel>, <StevesCarts:ModuleComponents:20>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>] ,[<StevesCarts:ModuleComponents:19>, <StevesCarts:ModuleComponents:19>, <StevesCarts:ModuleComponents:19>]]);
recipes.remove(<StevesCarts:ModuleComponents:44>);
recipes.addShaped(<StevesCarts:ModuleComponents:44>, [[<SolarExpansion:photovoltaicCell>, <SolarExpansion:photovoltaicCell>, <SolarExpansion:photovoltaicCell>], [<ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>], [<ProjRed|Core:projectred.core.part:55>, <ProjRed|Core:projectred.core.part:55>, <ProjRed|Core:projectred.core.part:55>]]);
recipes.remove(<StevesCarts:ModuleComponents:58>);
recipes.addShaped(<StevesCarts:ModuleComponents:58>, [[<StevesCarts:ModuleComponents:44>, null, <StevesCarts:ModuleComponents:44>], [<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:16>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:44>, null, <StevesCarts:ModuleComponents:44>]]);
recipes.remove(<StevesCarts:CartModule:49>);
recipes.addShaped(<StevesCarts:CartModule:49>, [[null, <Railcraft:machine.alpha>, null], [<StevesCarts:ModuleComponents:9>, <ore:ingotIron>, <StevesCarts:ModuleComponents:9>], [<ore:ingotIron>, <StevesCarts:ModuleComponents:16>, <ore:ingotIron>]]);
recipes.remove(<StevesCarts:CartModule:42>);
recipes.addShaped(<StevesCarts:CartModule:42>, [[<ore:ingotIron>, <ore:ingotIron>], [<ImmersiveEngineering:drillhead>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>]]);
recipes.remove(<StevesCarts:CartModule:8>);
recipes.addShaped(<StevesCarts:CartModule:8>, [[<Creator:enderDiamond>, <Creator:enderDiamond>], [<StevesCarts:CartModule:42>, <Creator:enderDiamond>, <Creator:enderDiamond>], [<Creator:enderDiamond>, <Creator:enderDiamond>]]);

#cargo manager
recipes.remove(<StevesCarts:BlockCargoManager>);
recipes.addShaped(<StevesCarts:BlockCargoManager>, [[<StevesCarts:ModuleComponents:36>, <StevesCarts:ModuleComponents:38>, <StevesCarts:ModuleComponents:36>], [<Railcraft:machine.gamma>, <IronChest:BlockIronChest>, <Railcraft:machine.gamma:1>], [<StevesCarts:ModuleComponents:36>, <StevesCarts:ModuleComponents:35>, <StevesCarts:ModuleComponents:36>]]);

#assembler
recipes.remove(<StevesCarts:BlockCartAssembler>);
recipes.addShaped(<StevesCarts:BlockCartAssembler>, [[<Creator:enderDiamond>, <CarpentersBlocks:itemCarpentersHammer>, <Creator:enderDiamond>], [<ImmersiveEngineering:tool>, <Creator:chamberIron>, <Creator:IronHammer>], [<StevesCarts:ModuleComponents:9>, <ThermalExpansion:wrench>, <StevesCarts:ModuleComponents:9>]]);

#railfix
recipes.remove(<StevesCarts:BlockAdvDetector>);
recipes.addShaped(<StevesCarts:BlockAdvDetector>, [[<ore:ingotSteel>, <minecraft:stone_pressure_plate>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:detector_rail>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:stone_pressure_plate>, <ore:ingotSteel>]]);

#Galgadorian
recipes.remove(<StevesCarts:ModuleComponents:46>);
recipes.addShaped(<StevesCarts:ModuleComponents:46> * 3, [[<ProjRed|Core:projectred.core.part:14>, <ore:blockDiamond>, <ProjRed|Core:projectred.core.part:14>], [<StevesCarts:ModuleComponents:45>, <ore:ingotDarkSteel>, <StevesCarts:ModuleComponents:45>], [<StevesCarts:ModuleComponents:21>, <StevesCarts:ModuleComponents:45>, <StevesCarts:ModuleComponents:21>]]);
furnace.remove(<StevesCarts:ModuleComponents:49>);

#glass o'magic
recipes.remove(<StevesCarts:ModuleComponents:5>);
mods.thaumcraft.Crucible.addRecipe("ASPECTS", <StevesCarts:ModuleComponents:5>, <minecraft:glass:*>, "praecantatio 4");

print("Initialized 'StevesCarts.zs'");