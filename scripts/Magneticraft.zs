#Name: Magneticraft.zs
#Author: Prunoideae & Si_hen

import mods.forestry.Carpenter;
import mods.magneticraft.Grinder;
import mods.magneticraft.Sifter;
import mods.nei.NEI;

print("Initializing 'Magneticraft.zs'...");

#ore fix
mods.magneticraft.CrushingTable.addRecipe(<Mekanism:OreBlock>, <Magneticraft:item.chunks:16>);
Grinder.removeRecipe(<Magneticraft:item.chunks:15>);
Grinder.removeRecipe(<Magneticraft:item.chunks:17>);
Grinder.removeRecipe(<Magneticraft:item.chunks:18>);
Grinder.removeRecipe(<Magneticraft:item.chunks:20>);
Grinder.removeRecipe(<Magneticraft:item.chunks:21>);
Grinder.removeRecipe(<Magneticraft:item.chunks:22>);
Grinder.removeRecipe(<Magneticraft:item.chunks:23>);
Grinder.removeRecipe(<Magneticraft:item.rubble:15>);
Grinder.removeRecipe(<Magneticraft:item.rubble:17>);
Grinder.removeRecipe(<Magneticraft:item.rubble:18>);
Grinder.removeRecipe(<Magneticraft:item.rubble:20>);
Grinder.removeRecipe(<Magneticraft:item.rubble:21>);
Grinder.removeRecipe(<Magneticraft:item.rubble:22>);
Grinder.removeRecipe(<Magneticraft:item.rubble:23>);
Sifter.removeRecipe(<Magneticraft:item.pebbles:15>);
Sifter.removeRecipe(<Magneticraft:item.pebbles:17>);
Sifter.removeRecipe(<Magneticraft:item.pebbles:18>);
Sifter.removeRecipe(<Magneticraft:item.pebbles:20>);
Sifter.removeRecipe(<Magneticraft:item.pebbles:21>);
Sifter.removeRecipe(<Magneticraft:item.pebbles:22>);
Sifter.removeRecipe(<Magneticraft:item.pebbles:23>);
furnace.remove(<*>, <Magneticraft:item.pebbles:23>);
mods.thermalexpansion.Furnace.removeRecipe(<Magneticraft:item.pebbles:23>);

#remove sulfur from OreDict
<ore:dustSulfur>.remove(<Magneticraft:item.dustSulfur>);
recipes.remove(<Magneticraft:item.dustSulfur>);
furnace.setFuel(<Magneticraft:item.dustSulfur>, 0);
mods.mekanism.chemical.Oxidizer.removeRecipe(<gas:sulfurDioxideGas>, <Magneticraft:item.dustSulfur>);

#salt can make food
<ore:foodSalt>.add(<Magneticraft:item.dustSalt>);
<ore:itemSalt>.add(<Magneticraft:item.dustSalt>);

#machinehousing
recipes.remove(<Magneticraft:machine_housing>);
<Magneticraft:machine_housing>.addTooltip(format.red("We want to make parts unified."));
<Magneticraft:machine_housing>.addTooltip(format.red("我们希望统一各种零件。"));

#pipe
recipes.remove(<Magneticraft:item.copper_pipe>);
recipes.remove(<Magneticraft:item.iron_pipe>);
Carpenter.addRecipe(<Magneticraft:item.iron_pipe> * 3, [[<ore:plateInvar>, <BuildCraft|Transport:item.buildcraftPipe.pipefluidsstone>, <ore:plateInvar>],
                                                                      [<ore:plateInvar>, <BuildCraft|Transport:item.buildcraftPipe.pipefluidsstone>, <ore:plateInvar>], 
                                                                      [<ore:plateInvar>, <BuildCraft|Transport:item.buildcraftPipe.pipefluidsstone>, <ore:plateInvar>]], <liquid:invar.molten> * 288, 20);
<Magneticraft:item.copper_pipe>.addTooltip(format.red("Copper is so cheap, isn't it?"));

#battery
recipes.remove(<Magneticraft:battery>);
recipes.addShaped(<Magneticraft:battery>, [[<ore:plateIron>, <Magneticraft:item.battery>, <ore:plateIron>], [<Magneticraft:item.battery>, <ore:circuitBasic>, <Magneticraft:item.battery>], [<ore:plateIron>, <Magneticraft:item.battery>, <ore:plateIron>]]);

#crusher control
recipes.remove (<Magneticraft:crusher_control>);
Carpenter.addRecipe(<Magneticraft:crusher_control> , [[<Railcraft:borehead.iron>, <ore:circuitBasic>, <Railcraft:borehead.iron>],
                                                                    [<ore:plateIron>, <Creator:chamberIronG>, <ore:plateIron>], 
                                                                    [<ore:plateIron>, <Creator:motorDC>, <ore:plateIron>]], <liquid:iron.molten> * 288, 200);
#grinder control
recipes.remove (<Magneticraft:grinder_control>);
Carpenter.addRecipe(<Magneticraft:grinder_control> , [[<ore:plateIron>, <Mekanism:ControlCircuit>, <ore:plateIron>],
                                                                    [<Railcraft:borehead.steel>, <Creator:chamberIronG>, <Railcraft:borehead.steel>], 
                                                                    [<ore:plateIron>, <Creator:motorDC>, <ore:plateIron>]], <liquid:iron.molten> * 288, 250);
#stirling generator control
recipes.remove (<Magneticraft:stirling_generator>);
Carpenter.addRecipe(<Magneticraft:stirling_generator> , [[<ore:plateIron>, <Magneticraft:item.battery_small>, <ore:plateIron>],
                                                                      [<Magneticraft:item.heat_cable>, <Creator:generatorDC>, <Magneticraft:item.heat_cable>], 
                                                                      [<ore:plateIron>, <Creator:chamberIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
#refinery control
recipes.remove(<Magneticraft:refinery_control>);
Carpenter.addRecipe(<Magneticraft:refinery_control> , [[<ore:plateIron>, <Magneticraft:mg_tank>, <ore:plateIron>],
                                                                      [<Magneticraft:item.heat_cable>, <Creator:chamberIron>, <Magneticraft:item.heat_cable>], 
                                                                      [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
#polymerizer control
recipes.remove(<Magneticraft:polimerizer_control>);
Carpenter.addRecipe(<Magneticraft:polimerizer_control> , [[<ore:plateIron>, <Mekanism:ControlCircuit>, <ore:plateIron>],
                                                                      [<minecraft:glass_bottle>, <Creator:chamberIron>, <minecraft:glass_bottle>], 
                                                                      [<Creator:coilCopper>, <ore:plateIron>, <Creator:coilCopper>]], <liquid:iron.molten> * 288, 250);
#turbine control
recipes.remove(<Magneticraft:turbine_control>);
Carpenter.addRecipe(<Magneticraft:turbine_control> , [[<ore:plateSteel>, <Railcraft:part.turbine.blade>, <ore:plateSteel>],
                                                                      [<Railcraft:part.turbine.blade>, <Creator:generatorDCA>, <Railcraft:part.turbine.blade>], 
                                                                      [<ore:plateSteel>, <Railcraft:part.turbine.blade>, <ore:plateSteel>]], <liquid:steel.molten> * 288, 150);
#oil distillery control
recipes.remove(<Magneticraft:distillery_control>);
Carpenter.addRecipe(<Magneticraft:distillery_control> , [[<ore:plateIron>, <Mekanism:ControlCircuit>, <ore:plateIron>],
                                                                      [<Creator:coilCopper>, <Magneticraft:mg_tank>, <Creator:coilCopper>], 
                                                                      [<ore:plateIron>, <Creator:chamberIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
#sifter control
recipes.remove(<Magneticraft:sifter_control>);
Carpenter.addRecipe(<Magneticraft:sifter_control> , [[<Mekanism:ControlCircuit>, <Magneticraft:refinery_gap>, <Mekanism:ControlCircuit>],
                                                                      [<Magneticraft:inserter>, <Creator:chamberIron>, <Magneticraft:inserter>], 
                                                                      [<Creator:motorDC>, <Magneticraft:refinery_gap>, <Creator:motorDC>]], <liquid:iron.molten> * 288, 300);
#multiblocks
recipes.remove(<Magneticraft:chasis>);
Carpenter.addRecipe(<Magneticraft:chasis> * 8, [[<ore:plateIron>, <ore:stickIron>, <ore:plateIron>],
                                                                      [<ore:stickIron>, <ore:gearIron>, <ore:stickIron>], 
                                                                      [<ore:plateIron>, <ore:stickIron>, <ore:plateIron>]], <liquid:iron.molten> * 144, 80, <Mekanism:ControlCircuit>);
recipes.remove(<Magneticraft:MB_EnergyIO>);
Carpenter.addRecipe(<Magneticraft:MB_EnergyIO> * 1, [[<Magneticraft:item.cable_low>, null, null],
                                                                      [null, null, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20, <Magneticraft:chasis>);
recipes.remove(<Magneticraft:MB_Energy_medium>);
Carpenter.addRecipe(<Magneticraft:MB_Energy_medium> * 1, [[<Magneticraft:item.cable_medium>, null, null],
                                                                      [null, null, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20, <Magneticraft:chasis>);
recipes.remove(<Magneticraft:multi_heat>);
Carpenter.addRecipe(<Magneticraft:multi_heat> * 1, [[<Magneticraft:item.heat_cable>, null, null],
                                                                      [null, null, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20, <Magneticraft:chasis>);
recipes.remove(<Magneticraft:multi_io>);
Carpenter.addRecipe(<Magneticraft:multi_io> * 1, [[<minecraft:chest>, null, null],
                                                                      [null, null, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20, <Magneticraft:chasis>);
recipes.remove(<Magneticraft:refinery_gap>);
Carpenter.addRecipe(<Magneticraft:refinery_gap> * 1, [[null, <ore:plateIron>, null],
                                                                      [<ore:plateCopper>, <Magneticraft:chasis>, <ore:plateCopper>], 
                                                                      [null, <ore:plateIron>, null]], <liquid:iron.molten> * 72, 20);
recipes.remove(<Magneticraft:mg_tank>);
Carpenter.addRecipe(<Magneticraft:mg_tank> * 2, [[<ore:plateCopper>, <ore:blockGlass>, <ore:plateCopper>],
                                                                      [<ore:blockGlass>, null, <ore:blockGlass>], 
                                                                      [<ore:plateCopper>, <ore:blockGlass>, <ore:plateCopper>]], <liquid:copper.molten> * 144, 20);
recipes.remove(<Magneticraft:refinery_tank>);
Carpenter.addRecipe(<Magneticraft:refinery_tank> * 3, [[null, <Magneticraft:refinery_gap>, null],
                                                                      [<Magneticraft:refinery_gap>, <Magneticraft:mg_tank>, <Magneticraft:refinery_gap>], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20);
recipes.remove(<Magneticraft:mb_controls>);
Carpenter.addRecipe(<Magneticraft:mb_controls> * 1, [[<ore:plateIron>, <minecraft:lever>, <ore:plateIron>],
                                                                      [<minecraft:lever>, <Magneticraft:chasis>, <minecraft:lever>], 
                                                                      [<ore:plateIron>, <minecraft:lever>, <ore:plateIron>]], <liquid:iron.molten> * 72, 20);

#electric furnace
recipes.remove(<Magneticraft:electricfurnace>);
Carpenter.addRecipe(<Magneticraft:electricfurnace>, [[<ore:plateIron>, <Mekanism:ControlCircuit>, <ore:plateIron>],
                                                                      [<ore:plateIron>, <Creator:chamberIron>, <ore:plateIron>], 
                                                                      [<ore:plateIron>, <Magneticraft:item.cable_low>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
recipes.remove(<Magneticraft:item.heatcoil_copper>);
Carpenter.addRecipe(<Magneticraft:item.heatcoil_copper> * 1, [[<Creator:wireCopper>, <Creator:wireCopper>, null],
                                                                      [<Creator:wireCopper>, <Creator:wireCopper>, null], 
                                                                      [null, null, null]], <liquid:copper.molten> * 144, 40);
recipes.remove(<Magneticraft:item.heatcoil_iron>);
Carpenter.addRecipe(<Magneticraft:item.heatcoil_iron> * 1, [[<Creator:wireSteel>, <Creator:wireSteel>, null],
                                                                      [<Creator:wireSteel>, <Creator:wireSteel>, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 144, 40);
recipes.remove(<Magneticraft:item.heatcoil_tungsten>);
<Magneticraft:item.heatcoil_tungsten>.addTooltip(format.red("Oh my gosh! It is too hard to be blended into a coil!"));

#wire
recipes.remove(<Magneticraft:item.cable_low>);
recipes.addShaped (<Magneticraft:item.cable_low>, [[<ore:blockWool>,null,null],[<Creator:wireCopper>,null,null],[<ore:blockWool>,null,null]]);
recipes.addShaped (<Magneticraft:item.cable_low>, [[<ore:itemRubber>,null,null],[<Creator:wireCopper>,null,null],[null,null,null]]);

#steam & heat
recipes.remove(<Magneticraft:boiler>);
Carpenter.addRecipe(<Magneticraft:boiler> , [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                                      [<ore:plateIron>, <Creator:chamberIron>, <ore:plateIron>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
recipes.remove(<Magneticraft:cooler>);
recipes.addShaped (<Magneticraft:cooler>, [[null,<ore:plateIron>,null],[<ore:plateIron>,<Magneticraft:item.heat_cable>,<ore:plateIron>],[null,<ore:plateIron>,null]]);
recipes.remove(<Magneticraft:fluid_hopper>);
<Magneticraft:fluid_hopper>.addTooltip(format.red("To tell you the truth, it has BUG."));
recipes.remove(<Magneticraft:biomassburner>);
Carpenter.addRecipe(<Magneticraft:biomassburner> , [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                                      [<minecraft:furnace>, <Magneticraft:item.heat_cable>, <minecraft:furnace>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
recipes.remove(<Magneticraft:InfiniteWater>);
Carpenter.addRecipe(<Magneticraft:InfiniteWater> , [[<ore:plateIron>, <minecraft:water_bucket>, <ore:plateIron>],
                                                                      [<minecraft:water_bucket>, <Creator:chamberIron>, <minecraft:water_bucket>], 
                                                                      [<ore:plateIron>, <minecraft:water_bucket>, <ore:plateIron>]], <liquid:iron.molten> * 288, 200);

#electrical age
recipes.remove(<Magneticraft:solarpanel>);
<Magneticraft:solarpanel>.addTooltip(format.red("Solar? No! It's too early!"));
recipes.remove(<Magneticraft:item.battery_small>);
recipes.remove(<Magneticraft:item.battery>);
Carpenter.addRecipe(<Magneticraft:item.battery_small> , [[null, <Magneticraft:item.cable_low>, null],
                                                                      [<ore:plateBronze>, null, <ore:plateBronze>], 
                                                                      [null, <ore:plateBronze>, null]], <liquid:sulfurousacid> * 500, 20);
Carpenter.addRecipe(<Magneticraft:item.battery> , [[<ore:plateBronze>, <Magneticraft:item.cable_low>, <ore:plateBronze>],
                                                                      [<ore:plateBronze>, null, <ore:plateBronze>], 
                                                                      [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]], <liquid:sulfurousacid> * 4000, 20);
recipes.remove(<Magneticraft:transformer_lm>);
Carpenter.addRecipe(<Magneticraft:transformer_lm> , [[null, <Creator:coilCopper>, null],
                                                                      [<Magneticraft:item.cable_low>, <Creator:coilCopper>, <Magneticraft:item.cable_medium>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
recipes.remove(<Magneticraft:transformer_mh>);
Carpenter.addRecipe(<Magneticraft:transformer_mh> , [[null, <Creator:coilCopper>, null],
                                                                      [<Magneticraft:item.cable_medium>, <Creator:coilCopper>, <Magneticraft:item.cable_high>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
recipes.remove(<Magneticraft:basic_generator>);
Carpenter.addRecipe(<Magneticraft:basic_generator> , [[<Magneticraft:item.cable_low>, <Creator:generatorDC>, <Magneticraft:item.cable_low>],
                                                                      [<Magneticraft:item.heat_cable>, <Magneticraft:mg_tank>, <Magneticraft:item.heat_cable>], 
                                                                      [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>]], <liquid:iron.molten> * 144, 100);
recipes.remove(<Magneticraft:steam_engine>);
Carpenter.addRecipe(<Magneticraft:steam_engine> , [[<ore:plateIron>, <Magneticraft:item.cable_low>, <ore:plateIron>],
                                                                      [<Railcraft:part.turbine.blade>, <Creator:generatorDC>, <Railcraft:part.turbine.blade>], 
                                                                      [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>]], <liquid:iron.molten> * 144, 100);
recipes.remove(<Magneticraft:geothermal_pump>);
Carpenter.addRecipe(<Magneticraft:geothermal_pump> , [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                                      [<ore:plateIron>, <Magneticraft:item.heat_cable>, <ore:plateIron>], 
                                                                      [<ore:plateIron>, <Magneticraft:item.drill>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
recipes.remove(<Magneticraft:teslacoil>);
Carpenter.addRecipe(<Magneticraft:teslacoil> , [[<Creator:coilCopper>, <ore:plateIron>, <Creator:coilCopper>],
                                                                      [<Creator:coilCopper>, <ore:plateIron>, <Creator:coilCopper>], 
                                                                      [<ore:plateCopper>, <ore:plateIron>, <ore:plateCopper>]], <liquid:iron.molten> * 288, 200);
recipes.remove(<Magneticraft:airlock>);
Carpenter.addRecipe(<Magneticraft:airlock> , [[<ore:blockGlass>, <Creator:motorDC>, <ore:blockGlass>],
                                                                      [<minecraft:bucket>, <Creator:chamberIron>, <minecraft:bucket>], 
                                                                      [<ore:blockGlass>, <minecraft:bucket>, <ore:blockGlass>]], <liquid:iron.molten> * 288, 200);
recipes.remove(<Magneticraft:crafter>);
Carpenter.addRecipe(<Magneticraft:crafter> , [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                                      [<Magneticraft:inserter>, <Creator:chamberIron>, <Magneticraft:inserter>], 
                                                                      [<ore:plateIron>, <ore:ingotRedAlloy>, <ore:plateIron>]], <liquid:iron.molten> * 288, 300);
recipes.remove(<Magneticraft:heater>);
Carpenter.addRecipe(<Magneticraft:heater> , [[<ore:plateIron>, <Magneticraft:item.heatcoil_iron>, <ore:plateIron>],
                                                                      [<Magneticraft:item.heatcoil_iron>, <Creator:chamberIron>, <Magneticraft:item.heatcoil_iron>], 
                                                                      [<ore:plateIron>, <Magneticraft:item.heatcoil_iron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
recipes.remove(<Magneticraft:kinetic_generator>);
Carpenter.addRecipe(<Magneticraft:kinetic_generator> , [[<ore:plateIron>, <Creator:motorDC>, <ore:plateIron>],
                                                                      [<Mekanism:ControlCircuit>, <Creator:chamberIron>, <Mekanism:ControlCircuit>], 
                                                                      [<ore:plateIron>, <Creator:generatorACSP>, <ore:plateIron>]], <liquid:iron.molten> * 288, 300);
recipes.remove(<Magneticraft:conveyor_low>);
Carpenter.addRecipe(<Magneticraft:conveyor_low>*32 , [[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
                                                                      [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], 
                                                                      [null,null,null]], <liquid:iron.molten> * 72, 30);
recipes.remove(<Magneticraft:inserter>);
Carpenter.addRecipe(<Magneticraft:inserter>, [[null, null, <ore:stickWood>],
                                                                      [null, <ore:stickWood>, null], 
                                                                      [<ore:stone>,<ore:gearCopper>,<ore:stone>]], <liquid:copper.molten> * 72, 30);
recipes.remove(<Magneticraft:combustion_engine>);
Carpenter.addRecipe(<Magneticraft:combustion_engine> , [[<Magneticraft:heat_sink>, null, <Magneticraft:heat_sink>],
                                                                      [<ore:plateIron>, <Creator:generatorDC>, <ore:plateIron>], 
                                                                      [<Magneticraft:item.plastic>, <ore:circuitBasic>, <Magneticraft:item.plastic>]], <liquid:iron.molten> * 144, 150);
recipes.remove(<Magneticraft:heat_sink>);
Carpenter.addRecipe(<Magneticraft:heat_sink> , [[<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
                                                                      [null,null,null]], <liquid:iron.molten> * 144, 75);
recipes.remove(<Magneticraft:electric_switch>);
recipes.addShaped(<Magneticraft:electric_switch>, [[null,<minecraft:lever>,null],[<Magneticraft:item.cable_low>,<Creator:chamberIron>,<Magneticraft:item.cable_low>],[null,null,null]]);

#sth else
recipes.remove(<Magneticraft:permanent_magnet>);
recipes.addShaped(<Magneticraft:permanent_magnet>*2, [[null,<Creator:magnetIron>,null],[<Creator:magnetIron>,<Creator:magnetIron>,<Creator:magnetIron>],[null,<Creator:magnetIron>,null]]);

recipes.remove(<Magneticraft:item.inserter_item_speed_upgrade>);
recipes.addShaped(<Magneticraft:item.inserter_item_speed_upgrade>, [[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Creator:coilCopper>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>]]);

recipes.remove(<Magneticraft:item.inserter_item_slow_upgrade>);
recipes.addShaped(<Magneticraft:item.inserter_item_slow_upgrade>, [[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Creator:magnetIron>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>]]);

recipes.remove(<Magneticraft:item.inserter_item_suck_upgrade>);
recipes.addShaped(<Magneticraft:item.inserter_item_suck_upgrade>, [[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<ore:ingotIron>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>]]);

recipes.remove(<Magneticraft:item.chainsaw>);
Carpenter.addRecipe(<Magneticraft:item.chainsaw> , [[<ore:plateIron>, <ore:plateIron>, null],
                                                                      [<ore:plateIron>, <ore:plateIron>, <Forestry:thermionicTubes>], 
                                                                      [null,<Creator:motorDC>,<Magneticraft:item.battery_small>]], <liquid:iron.molten> * 288, 150);
recipes.remove(<Magneticraft:item.voltmeter>);
recipes.addShaped(<Magneticraft:item.voltmeter>, [[<ore:plateBronze>, <ore:paneGlass>, <ore:plateBronze>], [<ore:plateBronze>, <ore:paneGlass>, <ore:plateBronze>], [<Magneticraft:item.cable_low>, <Magneticraft:item.cable_medium>, <Magneticraft:item.cable_high>]]);

recipes.addShaped(<ThermalFoundation:material:16>, [[<Magneticraft:item.dustSulfur>, <Magneticraft:item.dustSulfur>], [<Magneticraft:item.dustSulfur>, <Magneticraft:item.dustSulfur>]]);


#remove things about Uranium & Thorium
<ore:oreUranium>.remove(<Magneticraft:uranium_ore>);
<ore:dustUranium>.remove(<Magneticraft:item.dust:7>);
<ore:chunkUranium>.remove(<Magneticraft:item.chunks:7>);
<ore:rubbleUranium>.remove(<Magneticraft:item.rubble:7>);
<ore:pebblesUranium>.remove(<Magneticraft:item.pebbles:7>);
mods.magneticraft.Crusher.removeRecipe(<Magneticraft:thorium_ore>);
Grinder.removeRecipe(<Magneticraft:item.chunks:8>);
Grinder.removeRecipe(<Magneticraft:item.rubble:8>);
Sifter.removeRecipe(<Magneticraft:item.pebbles:8>);
																  
#those abandoned kids :\
recipes.remove(<Magneticraft:item.motor>);
<Magneticraft:item.motor>.addTooltip(format.red("We want to make parts unified."));
recipes.remove(<Magneticraft:item.alternator>);
<Magneticraft:item.alternator>.addTooltip(format.red("We want to make parts unified."));
recipes.remove(<Magneticraft:item.copper_coil>);
<Magneticraft:item.copper_coil>.addTooltip(format.red("We want to make parts unified."));
<Magneticraft:item.magnet>.addTooltip(format.red("We want to make parts unified."));

recipes.removeShaped(<Magneticraft:item.ingotCarbide>, [[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>], [<minecraft:coal>, <Magneticraft:item.ingotTungsten>, <minecraft:coal>], [<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]]);
mods.thermalexpansion.Smelter.addRecipe(50000, <Magneticraft:item.ingotTungsten>, <TConstruct:materials:16>, <Magneticraft:item.ingotCarbide>);

recipes.remove(<Magneticraft:windturbine>);
<Magneticraft:windturbine>.addTooltip(format.red("Don't you think you're a little avaricious?"));
<Magneticraft:windturbine>.addTooltip(format.red("你不觉得你有点贪得无厌吗？"));
recipes.remove(<Magneticraft:item.turbine_0>);
<Magneticraft:item.turbine_0>.addTooltip(format.red("WindTurbine has disappeared, so it is useless."));
<Magneticraft:item.turbine_0>.addTooltip(format.red("风力发电机已经没了，因此它也没有用了。"));
recipes.remove(<Magneticraft:item.turbine_1>);
<Magneticraft:item.turbine_1>.addTooltip(format.red("WindTurbine has disappeared, so it is useless."));
<Magneticraft:item.turbine_1>.addTooltip(format.red("风力发电机已经没了，因此它也没有用了。"));
recipes.remove(<Magneticraft:item.turbine_2>);
<Magneticraft:item.turbine_2>.addTooltip(format.red("WindTurbine has disappeared, so it is useless."));
<Magneticraft:item.turbine_2>.addTooltip(format.red("风力发电机已经没了，因此它也没有用了。"));
recipes.remove(<Magneticraft:item.string_fabric>);
NEI.hide(<Magneticraft:item.string_fabric>);
recipes.remove(<Magneticraft:item.turbine_wing>);
NEI.hide(<Magneticraft:item.turbine_wing>);
recipes.remove(<Magneticraft:thermopile>);
<Magneticraft:thermopile>.addTooltip(format.red("Infinity electricty? No way!"));
<Magneticraft:thermopile>.addTooltip(format.red("无限电力？不可能！"));
recipes.remove(<Magneticraft:miner>);
recipes.remove(<Magneticraft:crushing_table>);
<Magneticraft:crushing_table>.addTooltip(format.red("You need machines, my friend, not your hands!"));
<Magneticraft:crushing_table>.addTooltip(format.red("你需要机器，而不是靠你的手！"));
recipes.remove(<Magneticraft:pumpjack_1>);
<Magneticraft:pumpjack_1>.addTooltip(format.red("Why do you still want this? OilSource has disappeared."));
<Magneticraft:pumpjack_1>.addTooltip(format.red("为什么你还想要这个？石油源已经没了。"));
recipes.remove(<Magneticraft:ShelvingUnit>);
<Magneticraft:ShelvingUnit>.addTooltip(format.red("It has BUG!!! You know? BUG!!!"));
<Magneticraft:ShelvingUnit>.addTooltip(format.red("这货有BUG！！！懂吗？BUG！！！"));
recipes.remove(<Magneticraft:rf_alternator>);
<Magneticraft:rf_alternator>.addTooltip(format.red("I don't want to generate electricty using RF!--Prunoideae"));
<Magneticraft:rf_alternator>.addTooltip(format.red("我不想用RF来产生电力！——Prunoideae"));
recipes.remove(<Magneticraft:rc_alternator>);
<Magneticraft:rc_alternator>.addTooltip(format.red("I don't want to generate electricty using RC Charge, either!--Prunoideae"));
<Magneticraft:rc_alternator>.addTooltip(format.red("我不想用Railcraft电力来产生电力！——Prunoideae"));
recipes.remove(<Magneticraft:item.oil_prospector>);
<Magneticraft:item.oil_prospector>.addTooltip(format.red("Why do you still want this? OilSource has disappeared."));
<Magneticraft:item.oil_prospector>.addTooltip(format.red("为什么你还想要这个？石油源已经没了。"));
<Magneticraft:miner>.addTooltip(format.red("U want 2 use it? Use dat SLOWWWWW BC Quarry instead!"));
<Magneticraft:miner>.addTooltip(format.red("你想要用这个？滚去用慢悠悠的Buildcraft采石场吧！"));
recipes.remove(<Magneticraft:block_breaker>);
<Magneticraft:block_breaker>.addTooltip(format.red("It's a little imba, so we remove it."));
<Magneticraft:block_breaker>.addTooltip(format.red("这货有点小imba，因此我们移除了它。"));
recipes.remove(<Magneticraft:item.jack_hammer>);
<Magneticraft:item.jack_hammer>.addTooltip(format.red("Please use TConstruct tools."));
<Magneticraft:item.jack_hammer>.addTooltip(format.red("请使用匠魂工具。"));
recipes.remove(<Magneticraft:solar_tower_core>);
<Magneticraft:solar_tower_core>.addTooltip(format.red("Please use Factorization Water Boiler."));
<Magneticraft:solar_tower_core>.addTooltip(format.red("请使用Factorization的烧水锅炉。"));
recipes.remove(<Magneticraft:mirror>);
<Magneticraft:mirror>.addTooltip(format.red("Please use Factorization Mirror."));
<Magneticraft:mirror>.addTooltip(format.red("请使用Factorization的反射镜。"));
recipes.remove(<Magneticraft:item.map_pos>);
<Magneticraft:item.map_pos>.addTooltip(format.red("Solar Tower Core has disappeared, so it is useless."));
<Magneticraft:item.map_pos>.addTooltip(format.red("太阳能塔核心已经没了，因此它也没有用了。"));
<Magneticraft:item.iron_pipe>.displayName = "因瓦合金管道";

NEI.hide(<Magneticraft:oil_source>);
NEI.hide(<Magneticraft:oil_source_drained>);
NEI.hide(<Magneticraft:item.brass_pipe>);
NEI.hide(<Magneticraft:item.optic_fiber>);
NEI.hide(<Magneticraft:zinc_ore>);
NEI.hide(<Magneticraft:block_brass>);
NEI.hide(<Magneticraft:block_zinc>);
NEI.hide(<Magneticraft:item.ingotZinc>);

print("Initialized 'Magneticraft.zs'");