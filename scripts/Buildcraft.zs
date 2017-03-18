#Name: Buildcraft.zs
#Author: Si_hen

import mods.nei.NEI;

print("Initializing 'Buildcraft.zs'...");

#engines
recipes.remove(<BuildCraft|Core:engineBlock:2>);
recipes.remove(<BuildCraft|Core:engineBlock:1>);
recipes.remove(<BuildCraft|Core:engineBlock>);
recipes.addShaped(<BuildCraft|Core:engineBlock>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<Creator:IronHammer>.anyDamage().transformDamage(), <Forestry:chipsets>, <Creator:IronWrench>.anyDamage().transformDamage()], [<ore:gearCopper>, <minecraft:piston>, <ore:gearCopper>]]);
recipes.addShaped(<BuildCraft|Core:engineBlock:1>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<Creator:IronHammer>.anyDamage().transformDamage(), <Forestry:chipsets:2>, <Creator:IronWrench>.anyDamage().transformDamage()], [<ore:thermalexpansion:machineIron>, <minecraft:piston>, <ore:thermalexpansion:machineIron>]]);
<BuildCraft|Core:engineBlock:2>.addTooltip(format.red("This machine has no recipe now!"));

#laser
recipes.remove(<BuildCraft|Silicon:laserBlock>);
mods.avaritia.ExtremeCrafting.addShaped(<BuildCraft|Silicon:laserBlock>, [[null, <ProjRed|Core:projectred.core.part:10>, <ProjRed|Core:projectred.core.part:10>, <ProjRed|Core:projectred.core.part:10>, <ProjRed|Core:projectred.core.part:10>, <ProjRed|Core:projectred.core.part:10>, null, null, null], [null, <ProjRed|Core:projectred.core.part:10>, <Forestry:thermionicTubes:5>, <Forestry:thermionicTubes:5>, <Forestry:thermionicTubes:5>, <ProjRed|Core:projectred.core.part:10>, null, null, null], [null, <ProjRed|Core:projectred.core.part:10>, <Forestry:thermionicTubes:5>, <ThermalExpansion:material:1>, <Forestry:thermionicTubes:5>, <ProjRed|Core:projectred.core.part:10>, null, null, null], [null, <ProjRed|Core:projectred.core.part:10>, <ThermalExpansion:material:1>, <ProjRed|Core:projectred.core.part:14>, <ThermalExpansion:material:1>, <ProjRed|Core:projectred.core.part:10>, null, null, null], [null, <ProjRed|Core:projectred.core.part:10>, <ImmersiveEngineering:coil:1>, <ImmersiveEngineering:coil:1>, <ImmersiveEngineering:coil:1>, <ProjRed|Core:projectred.core.part:10>, null, null, null], [<ore:blockObsidian>, <Magneticraft:item.ingotTungsten>, <Magneticraft:item.ingotTungsten>, <ThermalExpansion:Cell:1>, <Magneticraft:item.ingotTungsten>, <Magneticraft:item.ingotTungsten>, <ore:blockObsidian>, null, null], [<ore:blockObsidian>, <ore:blockObsidian>, <ore:blockObsidian>, <ImmersiveEngineering:metalDevice:2>, <ore:blockObsidian>, <ore:blockObsidian>, <ore:blockObsidian>, null, null]]);

#AssemblyTable
recipes.remove(<BuildCraft|Silicon:laserTableBlock>);
recipes.addShaped(<BuildCraft|Silicon:laserTableBlock>, [[<ProjRed|Core:projectred.core.part:55>, <ore:gemRuby>, <ProjRed|Core:projectred.core.part:55>], [<ore:gearDiamond>, <Mekanism:ControlCircuit:2>, <Forestry:thermionicTubes:5>], [<Magneticraft:item.ingotTungsten>, <IronChest:BlockIronChest>, <Magneticraft:item.ingotTungsten>]]);

#refinery
recipes.remove(<BuildCraft|Factory:refineryBlock>);
<BuildCraft|Factory:refineryBlock>.addTooltip(format.red("This machine has no recipe now!"));

#machines
recipes.remove(<BuildCraft|Factory:miningWellBlock>);
recipes.remove(<BuildCraft|Core:markerBlock>);
recipes.remove(<BuildCraft|Builders:fillerBlock>);
recipes.remove(<BuildCraft|Factory:floodGateBlock>);
recipes.remove(<BuildCraft|Factory:pumpBlock>);
recipes.remove(<BuildCraft|Builders:builderBlock>);
mods.extraUtils.QED.addShapedRecipe(<BuildCraft|Factory:miningWellBlock>, [[<Creator:compactSteelPlate>, <ore:chipsetDiamond>, <Creator:compactSteelPlate>], [<ore:thermalexpansion:machineGold>, <OpenComputers:case3>, <ore:thermalexpansion:machineGold>], [<Creator:compactSteelPlate>, <StevesCarts:CartModule:9>, <Creator:compactSteelPlate>]]);
mods.extraUtils.QED.addShapedRecipe(<BuildCraft|Builders:fillerBlock>, [[<BuildCraft|Core:markerBlock>, <Creator:compactTinPlate>, <BuildCraft|Core:markerBlock>], [<Creator:compactTinPlate>, <BuildCraft|Factory:miningWellBlock>, <Creator:compactTinPlate>], [<ore:gearDiamond>, <Creator:compactTinPlate>, <ore:gearDiamond>]]);
mods.extraUtils.QED.addShapedRecipe(<BuildCraft|Factory:floodGateBlock>, [[<ore:ingotIron>, <ore:gearIron>, <ore:ingotIron>], [<ore:gearIron>, <BuildCraft|Factory:pumpBlock>, <ore:gearIron>], [<ore:ingotIron>, <ore:gearIron>, <ore:ingotIron>]]);
recipes.addShapeless(<BuildCraft|Core:markerBlock>, [<Forestry:thermionicTubes:11>, <minecraft:redstone_torch>]);
mods.extraUtils.QED.addShapedRecipe(<BuildCraft|Factory:pumpBlock>, [[<BuildCraft|Factory:tankBlock>, <OpenComputers:case1>, <BuildCraft|Factory:tankBlock>], [<ore:gearIron>, <ImmersiveEngineering:metalDevice2:6>, <ore:gearIron>], [null, <Magneticraft:item.iron_pipe>, null]]);
mods.extraUtils.QED.addShapedRecipe(<BuildCraft|Builders:builderBlock>, [[<ore:dyeBlack>, <BuildCraft|Core:markerBlock>, <ore:dyeBlack>], [<ore:dyeYellow>, <BuildCraft|Builders:fillerBlock>, <ore:dyeYellow>], [<ore:gearDiamond>, <IronChest:BlockIronChest>, <ore:gearDiamond>]]);

#quarry
recipes.remove(<BuildCraft|Builders:machineBlock>);
mods.extraUtils.QED.addShapedRecipe(<BuildCraft|Builders:machineBlock>, [[<ore:chipsetDiamond>, <Mekanism:AtomicAlloy>, <Forestry:thermionicTubes:5>], [<ThermalExpansion:Frame:11>, <BuildCraft|Builders:builderBlock>, <ThermalExpansion:Cell:4>], [<Mekanism:ControlCircuit:3>, <BuildCraft|Factory:miningWellBlock>, <Mekanism:ControlCircuit:3>]]);

#pipes
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipepowerwood>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipepowercobblestone>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipepowerstone>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipepowerquartz>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipepoweriron>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipepowergold>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipepowerdiamond>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipepoweremerald>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipepowersandstone>);
NEI.hide(<BuildCraft|Transport:item.buildcraftPipe.pipepowerwood>);
NEI.hide(<BuildCraft|Transport:item.buildcraftPipe.pipepowercobblestone>);
NEI.hide(<BuildCraft|Transport:item.buildcraftPipe.pipepowerstone>);
NEI.hide(<BuildCraft|Transport:item.buildcraftPipe.pipepowerquartz>);
NEI.hide(<BuildCraft|Transport:item.buildcraftPipe.pipepoweriron>);
NEI.hide(<BuildCraft|Transport:item.buildcraftPipe.pipepowergold>);
NEI.hide(<BuildCraft|Transport:item.buildcraftPipe.pipepowerdiamond>);
NEI.hide(<BuildCraft|Transport:item.buildcraftPipe.pipepoweremerald>);
NEI.hide(<BuildCraft|Transport:item.buildcraftPipe.pipepowersandstone>);
<BuildCraft|Transport:item.buildcraftPipe.pipepowerwood>.addTooltip(format.red("This pipe has no recipe now!"));
<BuildCraft|Transport:item.buildcraftPipe.pipepowercobblestone>.addTooltip(format.red("This pipe has no recipe now!"));
<BuildCraft|Transport:item.buildcraftPipe.pipepowerstone>.addTooltip(format.red("This pipe has no recipe now!"));
<BuildCraft|Transport:item.buildcraftPipe.pipepowerquartz>.addTooltip(format.red("This pipe has no recipe now!"));
<BuildCraft|Transport:item.buildcraftPipe.pipepoweriron>.addTooltip(format.red("This pipe has no recipe now!"));
<BuildCraft|Transport:item.buildcraftPipe.pipepowergold>.addTooltip(format.red("This pipe has no recipe now!"));
<BuildCraft|Transport:item.buildcraftPipe.pipepowerdiamond>.addTooltip(format.red("This pipe has no recipe now!"));
<BuildCraft|Transport:item.buildcraftPipe.pipepoweremerald>.addTooltip(format.red("This pipe has no recipe now!"));
<BuildCraft|Transport:item.buildcraftPipe.pipepowersandstone>.addTooltip(format.red("This pipe has no recipe now!"));
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemswood:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsemerald:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemscobblestone:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsstone:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsquartz:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsiron:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsgold:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsobsidian:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemslapis:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsdaizuli:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemssandstone:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsvoid:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsemzuli:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsstripes:*>);
recipes.remove(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay:*>);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemswood>, [[<ore:logWood>, <minecraft:glass>, <ore:logWood>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsemerald> * 4, [[<ore:gemEmerald>, <minecraft:glass>, <ore:gemEmerald>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemscobblestone> * 2, [[<ExtraUtilities:cobblestone_compressed>, <minecraft:glass>, <ExtraUtilities:cobblestone_compressed>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsstone>, [[<minecraft:stone>, <minecraft:glass>, <minecraft:stone>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsquartz> * 2, [[<minecraft:quartz_block>, <minecraft:glass>, <minecraft:quartz_block>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsiron> * 2, [[<ore:ingotIron>, <minecraft:glass>, <ore:ingotIron>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsgold> * 4, [[<ore:ingotGold>, <minecraft:glass>, <ore:ingotGold>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond> * 4, [[<ore:gemDiamond>, <minecraft:glass>, <ore:gemDiamond>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsobsidian>, [[<ore:blockObsidian>, <minecraft:glass>, <ore:blockObsidian>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemslapis> * 4, [[<minecraft:lapis_block>, <minecraft:glass>, <minecraft:lapis_block>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsdaizuli> * 4, [[<minecraft:lapis_block>, <minecraft:glass>, <ore:gemDiamond>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemssandstone>, [[<minecraft:sandstone>, <minecraft:glass>, <minecraft:sandstone>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsvoid> * 2, [[<ExtraUtilities:trashcan>, <minecraft:glass>, <ExtraUtilities:trashcan>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsemzuli> * 4, [[<minecraft:lapis_block>, <minecraft:glass>, <ore:gemEmerald>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsstripes> * 8, [[<ore:gearElectrum>, <minecraft:glass>, <ore:gearElectrum>]]);
recipes.addShaped(<BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay>, [[<minecraft:clay>, <minecraft:glass>, <minecraft:clay>]]);

print("Initialized 'Buildcraft.zs'");