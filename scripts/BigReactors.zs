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
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <BigReactors:BRIngot:5>);

#cyanite reprogressor
recipes.remove(<BigReactors:BRDevice>);
recipes.addShaped(<BigReactors:BRDevice>, [[<BigReactors:BRReactorPart>, <Creator:compactPlatinumPlate>, <BigReactors:BRReactorPart>], [<BigReactors:BRIngot:1>, <OpenComputers:case1>, <BigReactors:BRIngot:1>], [<BigReactors:BRReactorPart>, <BigReactors:BRIngot:1>, <BigReactors:BRReactorPart>]]);

#reactor/turbine building materials
recipes.remove(<BigReactors:YelloriumFuelRod>);
recipes.addShaped(<BigReactors:YelloriumFuelRod>, [[<Creator:denseLeadPlate>, <ore:blockGraphite>, <Creator:denseLeadPlate>], [<ore:blockGlassHardened>, <BigReactors:BRIngot>, <ore:blockGlassHardened>], [<Creator:denseLeadPlate>, <ore:blockGraphite>, <Creator:denseLeadPlate>]]);
recipes.remove(<BigReactors:BRReactorPart>);
recipes.addShaped(<BigReactors:BRReactorPart> * 2, [[<Creator:denseSteelPlate>, <ore:ingotGraphite>, <Creator:denseSteelPlate>], [<Magneticraft:item.ingotCarbide>, <ore:ingotYellorium>, <Magneticraft:item.ingotCarbide>], [<Creator:denseSteelPlate>, <ore:ingotGraphite>, <Creator:denseSteelPlate>]]);
recipes.remove(<BigReactors:BRReactorPart:1>);
recipes.addShaped(<BigReactors:BRReactorPart:1>, [[<ore:reactorCasing>, <BuildCraft|Silicon:redstoneCrystal>, <ore:reactorCasing>], [<BuildCraft|Silicon:redstoneChipset:7>, <OpenComputers:case3>, <Forestry:thermionicTubes:9>], [<ore:reactorCasing>, <Mekanism:ControlCircuit:3>, <ore:reactorCasing>]]);
recipes.remove(<BigReactors:BRReactorPart:3>);
recipes.addShaped(<BigReactors:BRReactorPart:3>, [[<ore:reactorCasing>, <ThermalExpansion:material:2>, <ore:reactorCasing>], [<ThermalExpansion:material:2>, null, <ThermalExpansion:material:2>], [<ore:reactorCasing>, <ThermalExpansion:material:2>, <ore:reactorCasing>]]);
recipes.remove(<BigReactors:BRMultiblockGlass>);
recipes.addShaped(<BigReactors:BRMultiblockGlass>, [[<ore:blockGlassHardened>, <ore:reactorCasing>, <ore:blockGlassHardened>]]);
recipes.remove(<BigReactors:BRMultiblockGlass:1>);
recipes.addShaped(<BigReactors:BRMultiblockGlass:1>, [[<ore:blockGlassHardened>, <BigReactors:BRTurbinePart>, <ore:blockGlassHardened>]]);
recipes.remove(<BigReactors:BRTurbinePart>);
recipes.addShaped(<BigReactors:BRTurbinePart> * 2, [[<Creator:denseOsmiumPlate>, <minecraft:quartz>, <Creator:denseOsmiumPlate>], [<Creator:denseEnderiumPlate>, <ore:ingotCyanite>, <Creator:denseEnderiumPlate>], [<Creator:denseOsmiumPlate>, <minecraft:quartz>, <Creator:denseOsmiumPlate>]]);
recipes.remove(<BigReactors:BRTurbinePart:1>);
recipes.addShaped(<BigReactors:BRTurbinePart:1>, [[<BigReactors:BRTurbinePart>, <BigReactors:BRIngot:8>, <BigReactors:BRTurbinePart>], [<BigReactors:BRIngot:3>, <BigReactors:BRReactorPart:1>, <BigReactors:BRIngot:3>], [<BigReactors:BRTurbinePart>, <BigReactors:BRIngot:3>, <BigReactors:BRTurbinePart>]]);
recipes.remove(<BigReactors:BRTurbinePart:2>);
recipes.addShaped(<BigReactors:BRTurbinePart:2>, [[<BigReactors:BRTurbinePart>, <ThermalExpansion:material:2>, <BigReactors:BRTurbinePart>], [<ThermalExpansion:material:2>, null, <ThermalExpansion:material:2>], [<BigReactors:BRTurbinePart>, <ThermalExpansion:material:2>, <BigReactors:BRTurbinePart>]]);
recipes.remove(<BigReactors:BRTurbineRotorPart>);
recipes.addShaped(<BigReactors:BRTurbineRotorPart>, [[<StevesCarts:ModuleComponents:49>, <BigReactors:BRIngot:3>, <StevesCarts:ModuleComponents:49>]]);
recipes.remove(<BigReactors:BRTurbineRotorPart:1>);
recipes.addShaped(<BigReactors:BRTurbineRotorPart:1>, [[<BigReactors:BRIngot:3>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>]]);

print("Initialized 'BigReactors.zs'");