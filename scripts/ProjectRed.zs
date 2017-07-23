#Name: ProjectRed.zs
#Author: Si_hen

import mods.nei.NEI;

print("Initializing 'ProjectRed.zs'...");

#Electrotine
mods.forestry.Carpenter.addRecipe(<Creator:dustHydratedRedstone>, [[<minecraft:redstone>, null, null],
                                                                   [null, null, null], 
                                                                   [null, null, null]], <liquid:water> * 500, 200);
mods.tconstruct.Drying.addRecipe(<Creator:dustHydratedRedstone>, <ProjRed|Core:projectred.core.part:56>, 3600);

#Electontine Manufactory
mods.magneticraft.OilDistillery.addRecipe(<liquid:redstone> * 10, <liquid:deeper fantasy> * 10, 200);
mods.magneticraft.Refinery.addRecipe(<liquid:deeper fantasy> * 10, <liquid:redstone> * 8, <liquid:new fantasy> * 1, <liquid:lava> * 1);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <ProjRed|Core:projectred.core.part:56>, <ProjRed|Core:projectred.core.part:56>*2, <liquid:new fantasy> * 100);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <minecraft:iron_ingot>, <ProjRed|Core:projectred.core.part:57>, <liquid:new fantasy> * 600);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <ProjRed|Core:projectred.core.part:12>, <ProjRed|Core:projectred.core.part:58>, <liquid:new fantasy> * 600);

#Electrontine Meltdown
mods.thermalexpansion.Crucible.addRecipe(5000, <ProjRed|Core:projectred.core.part:56>, <liquid:new fantasy> * 100);

#circuit plate
furnace.remove(<ProjRed|Core:projectred.core.part>);
mods.thermalexpansion.Furnace.removeRecipe(<minecraft:stone>);
furnace.addRecipe(<ProjRed|Core:projectred.core.part>, <PracticalLogistics:StonePlate>);
mods.thermalexpansion.Furnace.addRecipe(1600, <PracticalLogistics:StonePlate>, <ProjRed|Core:projectred.core.part>);

#Silicon
furnace.remove(<ProjRed|Core:projectred.core.part:11>);
mods.thermalexpansion.Furnace.removeRecipe(<ProjRed|Core:projectred.core.part:41>);
mods.immersiveengineering.CokeOven.addRecipe(<ProjRed|Core:projectred.core.part:11>, 0, <ProjRed|Core:projectred.core.part:41>, 1600);

#Glowing Silicon Compound
recipes.remove(<ProjRed|Core:projectred.core.part:43>);
recipes.addShaped(<ProjRed|Core:projectred.core.part:43>, [[<Creator:Sunnarium>, <Creator:Sunnarium>, <Creator:Sunnarium>], [<Creator:Sunnarium>, <ProjRed|Core:projectred.core.part:12>, <Creator:Sunnarium>], [<Creator:Sunnarium>, <Creator:Sunnarium>, <Creator:Sunnarium>]]);

#redalloy
recipes.remove(<ProjRed|Core:projectred.core.part:40>);
mods.railcraft.Rolling.addShaped(<ProjRed|Core:projectred.core.part:40>, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>], 
                                                                          [<minecraft:redstone>, <ore:ingotIron>, <minecraft:redstone>],
                                                                          [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:redstone>, <minecraft:iron_ingot>);
mods.tconstruct.Smeltery.removeAlloy(<liquid:redmetal.molten>);
mods.tconstruct.Smeltery.removeMelting(<ProjRed|Core:projectred.core.part:10>);
mods.tconstruct.Casting.removeTableRecipe(<ProjRed|Core:projectred.core.part:10>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:redstone>, <minecraft:iron_ingot>);

#ban backpack
recipes.remove(<ProjRed|Exploration:projectred.exploration.backpack:*>);
<ProjRed|Exploration:projectred.exploration.backpack:*>.addTooltip(format.gray("I think Forestry Bag maybe a better choice."));
<ProjRed|Exploration:projectred.exploration.backpack:*>.addTooltip(format.gray("我觉得林业的背包或许是个更好的选择。"));
NEI.hide(<ProjRed|Exploration:projectred.exploration.backpack:*>);

#something useless
recipes.remove(<ProjRed|Core:projectred.core.part:15>);
recipes.remove(<ProjRed|Core:projectred.core.part:16>);
recipes.remove(<ProjRed|Core:projectred.core.part:17>);
recipes.remove(<ProjRed|Core:projectred.core.part:18>);
recipes.remove(<ProjRed|Core:projectred.core.part:35>);
recipes.remove(<ProjRed|Core:projectred.core.part:36>);
recipes.remove(<ProjRed|Core:projectred.core.drawplate>);
recipes.remove(<ProjRed|Exploration:projectred.exploration.woolgin>);
recipes.remove(<ProjRed|Exploration:projectred.exploration.barrel>);
furnace.setFuel(<ProjRed|Exploration:projectred.exploration.barrel>, 0);
NEI.hide(<ProjRed|Core:projectred.core.drawplate>);
NEI.hide(<ProjRed|Exploration:projectred.exploration.woolgin>);
NEI.hide(<ProjRed|Exploration:projectred.exploration.barrel>);

print("Initialized 'ProjectRed.zs'");