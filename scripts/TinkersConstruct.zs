#Name: TinkersConstruct.zs
#Author: Si_hen

print("Initializing 'TinkersConstruct.zs'...");

#Remove Gear to Smeltery
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:140>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:139>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:138>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:137>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:136>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:135>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:134>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:133>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:132>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:131>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:130>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:129>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:128>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:13>);
mods.tconstruct.Smeltery.removeMelting(<ThermalFoundation:material:12>);

#Gear Crafting
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:140>, <liquid:enderium.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:139>, <liquid:lumium.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:138>, <liquid:signalum.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:137>, <liquid:bronze.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:136>, <liquid:invar.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:135>, <liquid:electrum.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:134>, <liquid:mithril.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:133>, <liquid:platinum.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:132>, <liquid:nickel.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:131>, <liquid:lead.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:130>, <liquid:silver.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:129>, <liquid:tin.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:128>, <liquid:copper.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:13>, <liquid:gold.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:12>, <liquid:iron.molten> * 720, <BuildCraft|Core:woodenGearItem>, true, 200);

#remove book recipe
recipes.removeShapeless(<minecraft:book>, [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:string>, <TConstruct:blankPattern>, <TConstruct:blankPattern>]);

#flint -- encourage to use TConstruct Tools
recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]);

#seared brick
furnace.remove(<TConstruct:materials:2>);
mods.thermalexpansion.Furnace.removeRecipe(<TConstruct:CraftedSoil:1>);
mods.railcraft.CokeOven.addRecipe(<TConstruct:materials:2>, <liquid:water> * 100, <TConstruct:CraftedSoil:1>, 1200);

print("Initialized 'TinkersConstruct.zs'");