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

#New Alloying
mods.thermalexpansion.Transposer.addFillRecipe(2000, <Creator:dustTincosi>, <ThermalFoundation:material:42>, <liquid:redstone> * 250);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <Creator:dustTincosi>, <ThermalFoundation:material:43>, <liquid:glowstone> * 250);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <Creator:dustTincosi>, <ThermalFoundation:material:44>, <liquid:ender> * 250);
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

#flint -- it is encouraged to use TConstruct Tools
recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]);

#iron tools
mods.tconstruct.Casting.addTableRecipe(<TConstruct:pickaxeHead:2>, <liquid:iron.molten> * 432, <TConstruct:pickaxeHead:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:shovelHead:2>, <liquid:iron.molten> * 432, <TConstruct:shovelHead:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:hatchetHead:2>, <liquid:iron.molten> * 432, <TConstruct:hatchetHead:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:binding:2>, <liquid:iron.molten> * 216, <TConstruct:binding:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:toolRod:2>, <liquid:iron.molten> * 216, <TConstruct:toolRod:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:swordBlade:2>, <liquid:iron.molten> * 432, <TConstruct:swordBlade:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:wideGuard:2>, <liquid:iron.molten> * 216, <TConstruct:wideGuard:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:handGuard:2>, <liquid:iron.molten> * 216, <TConstruct:handGuard:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:crossbar:2>, <liquid:iron.molten> * 216, <TConstruct:crossbar:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:knifeBlade:2>, <liquid:iron.molten> * 216, <TConstruct:knifeBlade:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:frypanHead:2>, <liquid:iron.molten> * 432, <TConstruct:frypanHead:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:signHead:2>, <liquid:iron.molten> * 432, <TConstruct:signHead:3>, true, 200);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:chiselHead:2>, <liquid:iron.molten> * 216, <TConstruct:chiselHead:3>, true, 200);

#ingot pattern
recipes.addShaped(<TConstruct:metalPattern>, [[null, <ore:ingotBrick>, null], [<ore:ingotBrick>, null, <ore:ingotBrick>], [null, <ore:ingotBrick>, null]]);

#ban wooden and stone tools
mods.tconstruct.ToolStats.setDurability("Wood", 0);
mods.tconstruct.ToolStats.setSpeed("Wood", 0);
mods.tconstruct.ToolStats.setDamage("Wood", 0);
mods.tconstruct.ToolStats.setDurability("Stone", 0);
mods.tconstruct.ToolStats.setSpeed("Stone", 0);
mods.tconstruct.ToolStats.setDamage("Stone", 0);

#balance some materials
mods.tconstruct.ToolStats.setHarvestLevel("Netherrack", 0);
mods.tconstruct.ToolStats.setHarvestLevel("Steel", 3);

#seared brick
furnace.remove(<TConstruct:materials:2>);
mods.thermalexpansion.Furnace.removeRecipe(<TConstruct:CraftedSoil:1>);
mods.railcraft.CokeOven.addRecipe(<TConstruct:materials:2>, <liquid:water> * 100, <TConstruct:CraftedSoil:1>, 1200);

#cobalt & ardite
recipes.remove(<TConstruct:materials:41>);
mods.thermalexpansion.Smelter.addRecipe(18000, <TConstruct:materials:39>, <TConstruct:materials:38> , <TConstruct:materials:41>);

print("Initialized 'TinkersConstruct.zs'");