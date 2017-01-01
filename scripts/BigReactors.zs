#Name: BigReactors.zs
#Author: Si_hen

print("Initializing 'BigReactors.zs'...");

#remove craft Ludicrite Block with Enderium Block(enderium becomes cheap)
recipes.removeShaped(<BigReactors:BRMetalBlock:4>, [[<BigReactors:BRIngot:3>, <minecraft:blaze_rod>, <BigReactors:BRIngot:3>], [<ThermalFoundation:Storage:12>, null, <ThermalFoundation:Storage:12>], [<BigReactors:BRIngot:3>, <minecraft:blaze_rod>, <BigReactors:BRIngot:3>]]);

#Graphite
furnace.remove(<BigReactors:BRIngot:2>);
mods.thermalexpansion.Furnace.removeRecipe(<BigReactors:BRIngot:6>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <BigReactors:BRIngot:6>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<BigReactors:BRIngot:2>);
mods.mekanism.Compressor.addRecipe(<ImmersiveEngineering:metal:20> * 9, <gas:liquidOsmium>, <BigReactors:BRMetalBlock:2>);

#Cyanite
recipes.removeShapeless(<BigReactors:BRIngot:1>, [<BigReactors:BRIngot>, <minecraft:sand>]);
furnace.remove(<BigReactors:BRIngot:1>);
mods.thermalexpansion.Smelter.addRecipe(30000, <BigReactors:BRIngot>, <StevesCarts:ModuleComponents:22>, <BigReactors:BRIngot:1>);


#reactor/turbine building materials
recipes.remove(<BigReactors:YelloriumFuelRod>);
recipes.addShaped(<BigReactors:YelloriumFuelRod>, [[<ore:blockGlassHardened>, <ore:blockGraphite>, <ore:blockGlassHardened>], [<ore:blockGlassHardened>, <BigReactors:BRIngot>, <ore:blockGlassHardened>], [<ore:blockGlassHardened>, <ore:blockGraphite>, <ore:blockGlassHardened>]]);
recipes.remove(<BigReactors:BRReactorPart>);
recipes.addShaped(<BigReactors:BRReactorPart> * 2, [[<ore:ingotSteel>, <ore:ingotGraphite>, <ore:ingotSteel>], [<Magneticraft:item.ingotCarbide>, <ore:ingotYellorium>, <Magneticraft:item.ingotCarbide>], [<ore:ingotSteel>, <ore:ingotGraphite>, <ore:ingotSteel>]]);
recipes.remove(<BigReactors:BRReactorPart:1>);
recipes.addShaped(<BigReactors:BRReactorPart:1>, [[<ore:reactorCasing>, <ore:chipsetComp>, <ore:reactorCasing>], [<BuildCraft|Transport:pipeWire>, <OpenComputers:case3>, <BuildCraft|Transport:pipeWire>], [<ore:reactorCasing>, <BuildCraft|Transport:pipeWire>, <ore:reactorCasing>]]);
recipes.remove(<BigReactors:BRReactorPart:3>);
recipes.addShaped(<BigReactors:BRReactorPart:3>, [[<ore:reactorCasing>, <ThermalExpansion:material:2>, <ore:reactorCasing>], [<ThermalExpansion:material:2>, null, <ThermalExpansion:material:2>], [<ore:reactorCasing>, <ThermalExpansion:material:2>, <ore:reactorCasing>]]);
recipes.remove(<BigReactors:BRMultiblockGlass>);
recipes.addShaped(<BigReactors:BRMultiblockGlass>, [[<ore:blockGlassHardened>, <ore:reactorCasing>, <ore:blockGlassHardened>]]);
recipes.remove(<BigReactors:BRMultiblockGlass:1>);
recipes.addShaped(<BigReactors:BRMultiblockGlass:1>, [[<ore:blockGlassHardened>, <BigReactors:BRTurbinePart>, <ore:blockGlassHardened>]]);
recipes.remove(<BigReactors:BRTurbinePart>);
recipes.addShaped(<BigReactors:BRTurbinePart> * 2, [[<ore:ingotSteel>, <minecraft:quartz>, <ore:ingotSteel>], [<ore:ingotEnderium>, <ore:ingotCyanite>, <ore:ingotEnderium>], [<ore:ingotSteel>, <minecraft:quartz>, <ore:ingotSteel>]]);
recipes.remove(<BigReactors:BRTurbinePart:1>);
recipes.addShaped(<BigReactors:BRTurbinePart:1>, [[<BigReactors:BRTurbinePart>, <BuildCraft|Silicon:redstoneChipset:6>, <BigReactors:BRTurbinePart>], [<BuildCraft|Transport:pipeWire>, <OpenComputers:case3>, <BuildCraft|Transport:pipeWire>], [<BigReactors:BRTurbinePart>, <BuildCraft|Transport:pipeWire>, <BigReactors:BRTurbinePart>]]);
recipes.remove(<BigReactors:BRTurbinePart:2>);
recipes.addShaped(<BigReactors:BRTurbinePart:2>, [[<BigReactors:BRTurbinePart>, <ThermalExpansion:material:2>, <BigReactors:BRTurbinePart>], [<ThermalExpansion:material:2>, null, <ThermalExpansion:material:2>], [<BigReactors:BRTurbinePart>, <ThermalExpansion:material:2>, <BigReactors:BRTurbinePart>]]);
recipes.remove(<BigReactors:BRTurbineRotorPart>);
recipes.addShaped(<BigReactors:BRTurbineRotorPart>, [[<StevesCarts:ModuleComponents:49>, <BigReactors:BRIngot:1>, <StevesCarts:ModuleComponents:49>]]);
recipes.remove(<BigReactors:BRTurbineRotorPart:1>);
recipes.addShaped(<BigReactors:BRTurbineRotorPart:1>, [[<ore:ingotCyanite>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>]]);

print("Initialized 'BigReactors.zs'");