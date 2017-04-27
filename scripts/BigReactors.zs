#Name: BigReactors.zs
#Author: Si_hen

print("Initializing 'BigReactors.zs'...");

#remove craft Ludicrite Block with Enderium Block(enderium becomes cheap)
recipes.remove(<BigReactors:BRMetalBlock:4>);
recipes.addShaped(<BigReactors:BRMetalBlock:4>, [[<ore:ingotBlutonium>, <ore:blockVibrantAlloy>, <ore:ingotBlutonium>], [<ore:blockEmerald>, <minecraft:nether_star>, <ore:blockEmerald>], [<ore:ingotBlutonium>, <ore:blockVibrantAlloy>, <ore:ingotBlutonium>]]);

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
recipes.addShaped(<BigReactors:BRReactorPart> * 4, [[<Creator:denseElectricalSteelPlate>, <ore:blockGraphite>, <Creator:denseElectricalSteelPlate>], [<ore:plateDarkSteel>, <ore:ingotVibrantAlloy>, <ore:plateDarkSteel>], [<Creator:denseElectricalSteelPlate>, <ore:blockGraphite>, <Creator:denseElectricalSteelPlate>]]);
recipes.remove(<BigReactors:BRReactorPart:1>);
recipes.addShaped(<BigReactors:BRReactorPart:1>, [[<ore:reactorCasing>, <BuildCraft|Silicon:redstoneCrystal>, <ore:reactorCasing>], [<BuildCraft|Silicon:redstoneChipset:7>, <OpenComputers:case3>, <Creator:itemCrystal:3>], [<ore:reactorCasing>, <Mekanism:ControlCircuit:3>, <ore:reactorCasing>]]);
recipes.remove(<BigReactors:BRReactorPart:2>);
recipes.addShaped(<BigReactors:BRReactorPart:2>, [[<ore:reactorCasing>, <ore:ingotGraphite>, <ore:reactorCasing>], [<ore:ingotGraphite>, <ore:gemCrystalFlux>, <ore:ingotGraphite>], [<ore:reactorCasing>, <ore:ingotYellorium>, <ore:reactorCasing>]]);
recipes.remove(<BigReactors:BRReactorPart:3>);
recipes.addShaped(<BigReactors:BRReactorPart:3>, [[<ore:reactorCasing>, <ThermalExpansion:material:2>, <ore:reactorCasing>], [<ThermalExpansion:material:2>, <ore:gearVibrantAlloy>, <ThermalExpansion:material:2>], [<ore:reactorCasing>, <ThermalExpansion:material:2>, <ore:reactorCasing>]]);
recipes.remove(<BigReactors:BRReactorPart:4>);
recipes.addShaped(<BigReactors:BRReactorPart:4>, [[<ore:reactorCasing>, <ore:ingotGraphite>, <ore:reactorCasing>], [<ore:ingotGraphite>, <minecraft:chest>, <ore:ingotGraphite>], [<ore:reactorCasing>, <ThermalExpansion:Device:6>, <ore:reactorCasing>]]);
recipes.remove(<BigReactors:BRReactorPart:5>);
recipes.addShaped(<BigReactors:BRReactorPart:5>, [[<ore:reactorCasing>, <simplyjetpacks:components:63>, <ore:reactorCasing>], [<simplyjetpacks:components:63>, <BuildCraft|Factory:tankBlock>, <simplyjetpacks:components:63>], [<ore:reactorCasing>, <minecraft:piston>, <ore:reactorCasing>]]);
recipes.remove(<BigReactors:BRMultiblockGlass>);
recipes.addShaped(<BigReactors:BRMultiblockGlass> * 2, [[<ore:blockGlassHardened>, <ore:reactorCasing>, <ore:blockGlassHardened>]]);
recipes.remove(<BigReactors:BRMultiblockGlass:1>);
recipes.addShaped(<BigReactors:BRMultiblockGlass:1> * 2, [[<ore:blockGlassHardened>, <BigReactors:BRTurbinePart>, <ore:blockGlassHardened>]]);
recipes.remove(<BigReactors:BRTurbinePart>);
recipes.addShaped(<BigReactors:BRTurbinePart> * 8, [[<Creator:denseOsmiumPlate>, <ore:blockQuicksilver>, <Creator:denseOsmiumPlate>], [<Creator:compactPhasedGoldPlate>, <ore:ingotCyanite>, <Creator:compactPhasedGoldPlate>], [<Creator:denseOsmiumPlate>, <ore:blockQuicksilver>, <Creator:denseOsmiumPlate>]]);
recipes.remove(<BigReactors:BRTurbinePart:1>);
recipes.addShaped(<BigReactors:BRTurbinePart:1>, [[<ore:turbineHousing>, <Creator:itemAlloy:13>, <ore:turbineHousing>], [<ore:ingotBlutonium>, <BigReactors:BRReactorPart:1>, <ore:ingotBlutonium>], [<ore:turbineHousing>, <ore:ingotBlutonium>, <ore:turbineHousing>]]);
recipes.remove(<BigReactors:BRTurbinePart:2>);
recipes.addShaped(<BigReactors:BRTurbinePart:2>, [[<ore:turbineHousing>, <ThermalExpansion:material:2>, <ore:turbineHousing>], [<ThermalExpansion:material:2>, <ore:gearVibrantAlloy>, <ThermalExpansion:material:2>], [<ore:turbineHousing>, <ThermalExpansion:material:2>, <ore:turbineHousing>]]);
recipes.remove(<BigReactors:BRTurbinePart:3>);
recipes.addShaped(<BigReactors:BRTurbinePart:3>, [[<ore:turbineHousing>, <simplyjetpacks:components:63>, <ore:turbineHousing>], [<simplyjetpacks:components:63>, <BuildCraft|Factory:tankBlock>, <simplyjetpacks:components:63>], [<ore:turbineHousing>, <minecraft:piston>, <ore:turbineHousing>]]);
recipes.remove(<BigReactors:BRTurbinePart:4>);
recipes.addShaped(<BigReactors:BRTurbinePart:4>, [[<ore:turbineHousing>, <BigReactors:BRTurbineRotorPart>, <ore:turbineHousing>], [<ore:itemEnticingCrystal>, <ore:itemEnderCrystal>, <ore:itemEnticingCrystal>], [<ore:turbineHousing>, <BigReactors:BRTurbineRotorPart>, <ore:turbineHousing>]]);
recipes.remove(<BigReactors:BRTurbineRotorPart>);
recipes.addShaped(<BigReactors:BRTurbineRotorPart>, [[<StevesCarts:ModuleComponents:49>, <BigReactors:BRIngot:3>, <StevesCarts:ModuleComponents:49>]]);
recipes.remove(<BigReactors:BRTurbineRotorPart:1>);
recipes.addShaped(<BigReactors:BRTurbineRotorPart:1>, [[<BigReactors:BRIngot:3>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>]]);

print("Initialized 'BigReactors.zs'");