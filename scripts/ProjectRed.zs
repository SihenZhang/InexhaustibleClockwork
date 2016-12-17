#Name: ProjectRed.zs
#Author: Si_hen

print("Initializing 'ProjectRed.zs'...");

#Electrotine
mods.forestry.Carpenter.addRecipe(<Creator:dustHydratedRedstone>, [[<minecraft:redstone>, null, null],
                                                                   [null, null, null], 
                                                                   [null, null, null]], <liquid:water> * 500, 200);
mods.tconstruct.Drying.addRecipe(<Creator:dustHydratedRedstone>, <ProjRed|Core:projectred.core.part:56>, 3600);

#Silicon
furnace.remove(<ProjRed|Core:projectred.core.part:11>);
mods.thermalexpansion.Furnace.removeRecipe(<ProjRed|Core:projectred.core.part:41>);
mods.railcraft.BlastFurnace.addRecipe(<ProjRed|Core:projectred.core.part:41>, false, false, 1600, <ProjRed|Core:projectred.core.part:11>);

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

print("Initialized 'ProjectRed.zs'");