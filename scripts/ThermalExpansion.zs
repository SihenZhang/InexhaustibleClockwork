#Name: ThermalExpansion.zs
#Author: Si_hen & Prunoideae

print("Initializing 'ThermalExpansion.zs'...");

#Bad frames go away!
recipes.remove(<ThermalExpansion:Frame>);
recipes.remove(<ThermalExpansion:Frame:1>);
recipes.remove(<ThermalExpansion:Frame:2>);
recipes.remove(<ThermalExpansion:Frame:3>);

#hardened glass
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustObsidian>, <ore:dustLead>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustObsidian>, <ore:ingotLead>);
mods.tconstruct.Casting.removeBasinRecipe(<ThermalExpansion:Glass>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustObsidian>, <ore:dustLumium>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustObsidian>, <ore:ingotLumium>);
mods.thermalexpansion.Smelter.addRecipe(4000, <ThermalFoundation:material:4> * 4, <appliedenergistics2:tile.BlockQuartzLamp>, <ThermalExpansion:Glass>);
mods.thermalexpansion.Smelter.addRecipe(4000, <ThermalFoundation:material:43> * 4, <ThermalExpansion:Glass>, <ThermalExpansion:Glass:1>);

#val magmaCrucible = <ThermalExpansion:Machine:4>.withTag({Level: 2 as byte});
#basic machines

#redstone furance
recipes.remove(<ThermalExpansion:Machine>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine> , [[<Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <Creator:compactElectrumPlate>],
                                                                      [<minecraft:redstone>, <Creator:chamberElectrumEH>, <minecraft:redstone>], 
                                                                      [<Creator:compactElectrumPlate>, <ThermalExpansion:material:1>, <Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
#pulverizer
recipes.remove(<ThermalExpansion:Machine:1>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:1> , [[<Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <Creator:compactElectrumPlate>],
                                                                      [<Creator:motorACTPA>, <Creator:chamberElectrumG>, <Creator:motorACTPA>], 
                                                                      [<Creator:compactElectrumPlate>, <ThermalExpansion:material:1>, <Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
#sawmill
recipes.remove(<ThermalExpansion:Machine:2>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:2> , [[<Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <Creator:compactElectrumPlate>],
                                                                      [<minecraft:iron_axe>, <Creator:chamberElectrum>, <minecraft:iron_axe>], 
                                                                      [<Creator:motorACTPA>, <ThermalExpansion:material:1>, <Creator:motorACTPA>]], <liquid:electrum.molten> * 288, 300);
#inductioin smelter
recipes.remove(<ThermalExpansion:Machine:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:3> , [[<Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <Creator:compactElectrumPlate>],
                                                                      [<ThermalExpansion:Frame:4>, <Creator:chamberElectrumEH>, <ThermalExpansion:Frame:4>], 
                                                                      [<ThermalExpansion:material:1>, <ThermalExpansion:material:1>, <ThermalExpansion:material:1>]], <liquid:electrum.molten> * 288, 300);
#magma crucible
recipes.remove(<ThermalExpansion:Machine:4>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:4> , [[<Creator:compactElectrumPlate>, <Magneticraft:mg_tank>, <Creator:compactElectrumPlate>],
                                                                      [<ThermalExpansion:Frame:4>, <Creator:chamberElectrumEH>, <ThermalExpansion:Frame:4>], 
                                                                      [<ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>]], <liquid:electrum.molten> * 288, 300);
#fluid transposer
recipes.remove(<ThermalExpansion:Machine:5>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:5> , [[<Creator:compactElectrumPlate>, <Creator:motorACTPA> , <Creator:compactElectrumPlate>],
                                                                      [<Magneticraft:mg_tank>, <Creator:chamberElectrum>, <minecraft:chest>], 
                                                                      [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 288, 300);
#glacial precipitator
recipes.remove(<ThermalExpansion:Machine:6>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:6> , [[<ImmersiveEngineering:metalDecoration:4>, <Magneticraft:mg_tank> , <ImmersiveEngineering:metalDecoration:4>],
                                                                      [<Creator:motorACTPA>, <Creator:chamberElectrum>, <Creator:motorACTPA>], 
                                                                      [<ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>]], <liquid:electrum.molten> * 288, 300);
#igneous extruder
recipes.remove(<ThermalExpansion:Machine:7>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:7> , [[<Creator:compactElectrumPlate>, <Creator:compactElectrumPlate> , <Creator:compactElectrumPlate>],
                                                                      [<Magneticraft:mg_tank>, <Creator:chamberElectrum>, <Magneticraft:mg_tank>], 
                                                                      [<ThermalExpansion:material>, <minecraft:piston>, <ThermalExpansion:material>]], <liquid:electrum.molten> * 288, 300);

#cyclic assembler
recipes.remove(<ThermalExpansion:Machine:9>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:9> , [[<Mekanism:ControlCircuit:2>, <minecraft:chest> , <Mekanism:ControlCircuit:2>],
                                                                      [<ore:gearInvar>, <Creator:chamberElectrum>, <ore:gearInvar>], 
                                                                      [<ThermalExpansion:material>, <ThermalExpansion:material:1>, <ThermalExpansion:material>]], <liquid:electrum.molten> * 288, 300);
#energy infuser
recipes.remove(<ThermalExpansion:Machine:10>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:10> , [[<Creator:compactElectrumPlate>, <ThermalExpansion:Frame:4> , <Creator:compactElectrumPlate>],
                                                                      [<ThermalExpansion:material:2>, <Creator:chamberElectrum>, <ThermalExpansion:material:2>], 
                                                                      [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 288, 300);
#Poor organic infuser
recipes.remove(<ThermalExpansion:Machine:11>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:11> , [[<Creator:compactElectrumPlate>, <ThermalExpansion:material:3> , <Creator:compactElectrumPlate>],
                                                                      [<Magneticraft:mg_tank>, <Creator:chamberElectrum>, <Forestry:soil>], 
                                                                      [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 288, 300);
#devices

#autonomous activator
recipes.remove(<ThermalExpansion:Device:2>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:2> , [[<Magneticraft:inserter>, <minecraft:chest> , <Magneticraft:inserter>],
                                                                      [<Creator:motorACTPA>, <Creator:chamberElectrum>, <Creator:motorACTPA>], 
                                                                      [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 576, 300);
#terrain smasher
recipes.remove(<ThermalExpansion:Device:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:3> , [[<Magneticraft:inserter>, <minecraft:iron_pickaxe> , <Magneticraft:inserter>],
                                                                      [<ore:gearCopper>, <Creator:chamberElectrum>, <ore:gearCopper>], 
                                                                      [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 288, 300);
#acquisition apparatus
recipes.remove(<ThermalExpansion:Device:4>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:4> , [[<ore:plateElectrum>, <Magneticraft:inserter> , <ore:plateElectrum>],
                                                                      [<ThermalExpansion:material>, <minecraft:chest>, <ThermalExpansion:material>], 
                                                                      [<ore:plateElectrum>, <ThermalExpansion:material>, <ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#nullifier
recipes.remove(<ThermalExpansion:Device:5>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:5> , [[<ore:plateElectrum>, <ore:gearTin> , <ore:plateElectrum>],
                                                                      [<minecraft:hopper>, <minecraft:lava_bucket>, <Magneticraft:mg_tank>], 
                                                                      [<ore:plateElectrum>, <ThermalExpansion:material>, <ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#item allocator
recipes.remove(<ThermalExpansion:Device:6>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:6> , [[<ore:plateElectrum>, <minecraft:hopper> , <ore:plateElectrum>],
                                                                      [<ore:plateElectrum>, <ThermalExpansion:material>, <ore:plateElectrum>], 
                                                                      [null,null,null]], <liquid:electrum.molten> * 288, 300);

#generators

#vote gaben for president, and there will be no ww3.
recipes.remove(<ThermalExpansion:Dynamo>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo> , [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                      [<ore:gearCopper>, <Creator:generatorACTP>, <ore:gearCopper>], 
                                                                      [<ore:plateElectrum>,<Magneticraft:mg_tank>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#hey, where is the magmatic dynamo?

#compression dynamo
recipes.remove(<ThermalExpansion:Dynamo:2>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo:2> , [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                      [<Magneticraft:mg_tank>, <Creator:generatorACTP>, <Magneticraft:mg_tank>], 
                                                                      [<ore:plateElectrum>,<Mekanism:ControlCircuit:2>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#reactant dynamo
recipes.remove(<ThermalExpansion:Dynamo:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo:3> , [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                      [<ore:gearBronze>, <Creator:generatorACTP>, <Magneticraft:mg_tank>], 
                                                                      [<ore:plateElectrum>,<ore:plateElectrum>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#enervation dynamo
recipes.remove(<ThermalExpansion:Dynamo:4>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo:4> , [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                      [<ThermalExpansion:material:1>, <Creator:chamberElectrum>, <ThermalExpansion:material:1>], 
                                                                      [<ore:plateElectrum>,<Mekanism:ControlCircuit:2>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);

#frames
recipes.remove(<ThermalExpansion:Frame:4>); #leadstone energy cell frame
recipes.remove(<ThermalExpansion:Frame:5>); #hardened energy cell frame
recipes.remove(<ThermalExpansion:Frame:6>); #redstone energy cell frame empty
recipes.remove(<ThermalExpansion:Frame:7>); #full
recipes.remove(<ThermalExpansion:Frame:8>); #resonant energy cell frame empty
recipes.remove(<ThermalExpansion:Frame:9>); #full
recipes.remove(<ThermalExpansion:Frame:10>); #tesseract frame empty
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Frame:4> , [[<Creator:compactElectrumPlate>, <Creator:compactLeadPlate> , <Creator:compactElectrumPlate>],
                                                                      [<Creator:compactLeadPlate>, <ore:blockRedstone>, <Creator:compactLeadPlate>], 
                                                                      [<Creator:compactElectrumPlate>,<Creator:compactLeadPlate>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Frame:5> , [[null, <Creator:compactInvarPlate> ,null ],
                                                                      [<Creator:compactInvarPlate>, <ThermalExpansion:Frame:4>, <Creator:compactInvarPlate>], 
                                                                      [null,<Creator:compactInvarPlate>,null]], <liquid:electrum.molten> * 288, 300);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Frame:6>, 80000, [<ThermalExpansion:Frame:5>, <minecraft:diamond> * 4, <minecraft:glass> *4, <Creator:compactElectrumPlate>*8,<ThermalExpansion:material:1>*4,<ThermalExpansion:material:2>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Frame:8>, 200000, [<ThermalExpansion:Frame:6>, <Creator:EnderiumPlate> * 4, <ThermalFoundation:material:140> *4,<ThermalExpansion:material:1>*4,<ThermalExpansion:material:2>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Frame:9>, 200000, [<ThermalExpansion:Frame:7>, <Creator:EnderiumPlate> * 4, <ThermalFoundation:material:140> *4,<ThermalExpansion:material:1>*4,<ThermalExpansion:material:2>*4]);

mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Frame:10>, 200000, [<ThermalExpansion:Frame:9>, <Creator:EnderiumPlate> * 8]);

#energy cell
recipes.remove(<ThermalExpansion:Cell:1>); #leadstone energy cell
recipes.remove(<ThermalExpansion:Cell:2>); #hardened energy cell
recipes.remove(<ThermalExpansion:Cell:3>); #redstone energy cell
recipes.remove(<ThermalExpansion:Cell:4>); #resonant energy cell
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Cell:1> , [[<Creator:compactElectrumPlate>, <ThermalExpansion:material:1> , <Creator:compactElectrumPlate>],
                                                                      [<ThermalExpansion:material:2>, <ThermalExpansion:Frame:4>, <ThermalExpansion:material:2>], 
                                                                      [<Creator:compactElectrumPlate>,<ThermalExpansion:material:1>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Cell:2> , [[<Creator:compactElectrumPlate>, <ThermalExpansion:material:1> , <Creator:compactElectrumPlate>],
                                                                      [<ThermalExpansion:material:2>, <ThermalExpansion:Frame:5>, <ThermalExpansion:material:2>], 
                                                                      [<Creator:compactElectrumPlate>,<ThermalExpansion:material:1>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);

mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Cell:2> , [[null, <Creator:compactInvarPlate> ,null ],
                                                                      [<Creator:compactInvarPlate>, <ThermalExpansion:Cell:1>, <Creator:compactInvarPlate>], 
                                                                      [null,<Creator:compactInvarPlate>,null]], <liquid:electrum.molten> * 288, 300);

mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Cell:3>, 70000, [<ThermalExpansion:Cell:2>, <minecraft:diamond> * 4, <minecraft:glass> *4, <Creator:compactElectrumPlate>*8,<ThermalExpansion:material:1>*4,<ThermalExpansion:material:2>*4, <ThermalFoundation:bucket>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Cell:3>, 70000, [<ThermalExpansion:Frame:7>, <Creator:compactElectrumPlate>*4, <ThermalExpansion:material:1>*4,<ThermalExpansion:material:2>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Cell:4>, 180000, [<ThermalExpansion:Frame:9>, <Creator:compactElectrumPlate>*4,<ThermalExpansion:material:1>*4,<ThermalExpansion:material:2>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Cell:4>, 180000, [<ThermalExpansion:Cell:3>, <Creator:EnderiumPlate> * 4, <ThermalFoundation:material:140> *4,<ThermalExpansion:material:1>*4,<ThermalExpansion:material:2>*4]);

#machine level up

#hardened
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:1>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:1>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:2>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:2>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:3>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:3>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:4>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:4>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:5>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:5>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:6>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:6>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:7>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:7>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:9>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:9>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:10>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:10>, <Creator:compactInvarPlate> *4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:11>.withTag({Level: 1 as byte}), 50000, [<ThermalExpansion:Machine:11>, <Creator:compactInvarPlate> *4]);

#redstone
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:1>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:1>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:2>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:2>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:3>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:3>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:4>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:4>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:5>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:5>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:6>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:6>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:7>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:7>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:9>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:9>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:10>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:10>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:11>.withTag({Level: 2 as byte}), 80000, [<ThermalExpansion:Machine:11>.withTag({Level: 1 as byte}), <ThermalFoundation:material:138>*2, <Creator:SignalumPlate>*4, <Mekanism:ControlCircuit:2>*4, <ThermalExpansion:Glass>*4]);

#resonant
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:1>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:1>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:2>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:2>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:3>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:3>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:4>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:4>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:5>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:5>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:6>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:6>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:7>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:7>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:9>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:9>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:10>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:10>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:11>.withTag({Level: 3 as byte}), 110000, [<ThermalExpansion:Machine:11>.withTag({Level: 2 as byte}), <ThermalFoundation:material:140>*2, <Creator:EnderiumPlate>*4, <BuildCraft|Silicon:redstoneChipset:4>]);

#some machine upgrades
recipes.remove(<ThermalExpansion:augment:49>);
recipes.addShaped(<ThermalExpansion:augment:49>,[[null,<ore:nuggetLead>,null],[<ore:nuggetLead>,<Creator:excitingCoil>,<ore:nuggetLead>],[<minecraft:redstone>,<ore:nuggetLead>,<minecraft:redstone>]]);

#capacitor
recipes.remove(<ThermalExpansion:capacitor:2>);
recipes.remove(<ThermalExpansion:capacitor:3>);
recipes.remove(<ThermalExpansion:capacitor:4>);
recipes.remove(<ThermalExpansion:capacitor:5>);

mods.forestry.Carpenter.addRecipe(<ThermalExpansion:capacitor:2> , [[<ThermalExpansion:material:2>, <Redstonic:capacitor> , <ThermalExpansion:material:2>],
                                                                      [<Creator:compactLeadPlate>, <ore:blockCopper>, <Creator:compactLeadPlate>], 
                                                                      [<Creator:compactElectrumPlate>,<ore:dustSulfur>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:capacitor:3>, 30000, [<ThermalExpansion:capacitor:2>, <Creator:compactInvarPlate> * 3, <minecraft:redstone>*3, <ThermalExpansion:material:2> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:capacitor:4>, 60000, [<Redstonic:basicBattery>, <Creator:compactElectrumPlate> * 3, <ThermalFoundation:material:138> * 2, <minecraft:diamond>, <ThermalExpansion:material:2> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:capacitor:5>, 90000, [<Redstonic:energizedBattery>, <Creator:compactEnderiumPlate> * 3 , <ThermalFoundation:material:140> * 4 , <ThermalExpansion:material:2> * 2]);

#components
recipes.remove (<ThermalExpansion:material:1>);
recipes.remove (<ThermalExpansion:material:2>);
recipes.remove (<ThermalExpansion:material:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:material:2> , [[null,null , <ore:ingotRedAlloy>],
                                                                      [null, <ore:gearSilver>, null], 
                                                                      [<ore:ingotRedAlloy>,null,null]], <liquid:silver.molten> * 288, 300);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:material:1> , [[null,null , <ore:ingotRedAlloy>],
                                                                      [null, <ore:gearGold>, null], 
                                                                      [<ore:ingotRedAlloy>,null,null]], <liquid:gold.molten> * 288, 300);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:material:3> , [[<ore:ingotRedAlloy>,null,null],
                                                                      [null, <ore:gearLumium>, null], 
                                                                      [null,null , <ore:ingotRedAlloy>]], <liquid:lumium.molten> * 288, 300);

#the taste of MAGIC
mods.thermalexpansion.Smelter.addRecipe(120000, <ThermalFoundation:material:512>, <ThermalFoundation:material:513> , <ThermalFoundation:material:516>*2, <ThermalFoundation:material:516> , 10);
mods.thermalexpansion.Crucible.addRecipe(1000000, <ThermalFoundation:material:516>, <liquid:mana> * 1000);

#Replication
mods.thermalexpansion.Transposer.addFillRecipe(120000, <ThermalFoundation:material:32>, <ThermalFoundation:material:32>*2, <liquid:mana> * 10000);
mods.thermalexpansion.Transposer.addFillRecipe(120000, <ThermalFoundation:material:33>, <ThermalFoundation:material:33>*2, <liquid:mana> * 10000);
mods.thermalexpansion.Transposer.addFillRecipe(120000, <ThermalFoundation:material>, <ThermalFoundation:material>*2, <liquid:mana> * 10000);

mods.thermalexpansion.Transposer.addFillRecipe(120000, <ThermalFoundation:material:36>, <ThermalFoundation:material:36>*2, <liquid:mana> * 20000);
mods.thermalexpansion.Transposer.addFillRecipe(120000, <ThermalFoundation:material:35>, <ThermalFoundation:material:35>*2, <liquid:mana> * 20000);

mods.thermalexpansion.Transposer.addFillRecipe(120000, <ThermalFoundation:material:1>, <ThermalFoundation:material:1>*2, <liquid:mana> * 30000);
mods.thermalexpansion.Transposer.addFillRecipe(120000, <ThermalFoundation:material:34>, <ThermalFoundation:material:34>*2, <liquid:mana> * 30000);
mods.thermalexpansion.Transposer.addFillRecipe(120000, <ThermalFoundation:material:37>, <ThermalFoundation:material:37>*4, <liquid:mana> * 10000);

#HOP -> Diamond
mods.thermalexpansion.Smelter.addRecipe(120000, <ImmersiveEngineering:metal:20>*8, <Magneticraft:item.dustdiamond>, <minecraft:diamond>*2);
#those abandoned kids :<
recipes.remove(<ThermalExpansion:capacitor:1>); #no! never before tier3!
recipes.remove (<ThermalExpansion:Machine:8>);
recipes.remove (<ThermalExpansion:material:16>);
recipes.remove (<ThermalExpansion:satchel:1>);
recipes.remove (<ThermalExpansion:satchel:2>);
recipes.remove (<ThermalExpansion:satchel:3>);
recipes.remove (<ThermalExpansion:satchel:4>);
recipes.remove (<ThermalExpansion:Strongbox:1>);
recipes.remove (<ThermalExpansion:Strongbox:2>);
recipes.remove (<ThermalExpansion:Strongbox:3>);
recipes.remove (<ThermalExpansion:Strongbox:4>);
recipes.remove (<ThermalExpansion:Tesseract>);
recipes.remove (<ThermalExpansion:Tank:1>);
recipes.remove (<ThermalExpansion:Tank:2>);
recipes.remove (<ThermalExpansion:Tank:3>);
recipes.remove (<ThermalExpansion:Tank:4>);

print("Initialized 'ThermalExpansion.zs'");