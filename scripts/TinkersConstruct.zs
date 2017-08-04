#Name: TinkersConstruct.zs
#Author: Si_hen

print("Initializing 'TinkersConstruct.zs'...");

#Remove Alloying
mods.tconstruct.Smeltery.removeAlloy(<liquid:manyullyn.molten>);
mods.tconstruct.Smeltery.removeAlloy(<liquid:bronze.molten>);
mods.tconstruct.Smeltery.removeAlloy(<liquid:aluminumbrass.molten>);
mods.tconstruct.Smeltery.removeAlloy(<liquid:alumite.molten>);
mods.tconstruct.Smeltery.removeAlloy(<liquid:invar.molten>);
mods.tconstruct.Smeltery.removeAlloy(<liquid:signalum.molten>);
mods.tconstruct.Smeltery.removeAlloy(<liquid:enderium.molten>);
mods.tconstruct.Smeltery.removeAlloy(<liquid:lumium.molten>);
mods.tconstruct.Smeltery.removeAlloy(<liquid:electrum.molten>);
recipes.removeShapeless(<ThermalFoundation:material:42>);
recipes.removeShapeless(<ThermalFoundation:material:43>);
recipes.removeShapeless(<ThermalFoundation:material:44>);

#remove book recipe
recipes.removeShapeless(<minecraft:book>, [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:string>, <TConstruct:blankPattern>, <TConstruct:blankPattern>]);

#balance some materials
mods.tconstruct.ToolStats.setHarvestLevel("Netherrack", 0);
mods.tconstruct.ToolStats.setHarvestLevel("Steel", 3);

#seared brick
furnace.remove(<TConstruct:materials:2>);
mods.thermalexpansion.Furnace.removeRecipe(<TConstruct:CraftedSoil:1>);
mods.railcraft.CokeOven.addRecipe(<TConstruct:materials:2>, <liquid:water> * 100, <TConstruct:CraftedSoil:1>, 1200);
mods.logistics.hammer.addRecipe(<TConstruct:materials:2> * 2, <TConstruct:Smeltery:2>);

#cobalt & ardite
recipes.remove(<TConstruct:materials:41>);
mods.thermalexpansion.Smelter.addRecipe(18000, <TConstruct:materials:39>, <TConstruct:materials:38> , <TConstruct:materials:41>);

print("Initialized 'TinkersConstruct.zs'");