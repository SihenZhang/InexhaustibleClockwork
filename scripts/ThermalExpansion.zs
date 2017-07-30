#Name: ThermalExpansion.zs
#Author: Si_hen & Prunoideae

import mods.nei.NEI;

print("Initializing 'ThermalExpansion.zs'...");

#Bad frames go away!
recipes.remove(<ThermalExpansion:Frame>);
recipes.remove(<ThermalExpansion:Frame:1>);
recipes.remove(<ThermalExpansion:Frame:2>);
recipes.remove(<ThermalExpansion:Frame:3>);
<ThermalExpansion:Frame>.addTooltip(format.red("We want to make parts unified."));
<ThermalExpansion:Frame>.addTooltip(format.red("我们希望统一各种零件。"));
<ThermalExpansion:Frame:1>.addTooltip(format.red("We want to make parts unified."));
<ThermalExpansion:Frame:1>.addTooltip(format.red("我们希望统一各种零件。"));
<ThermalExpansion:Frame:2>.addTooltip(format.red("We want to make parts unified."));
<ThermalExpansion:Frame:2>.addTooltip(format.red("我们希望统一各种零件。"));
<ThermalExpansion:Frame:3>.addTooltip(format.red("We want to make parts unified."));
<ThermalExpansion:Frame:3>.addTooltip(format.red("我们希望统一各种零件。"));

#New Alloying
mods.thermalexpansion.Transposer.addFillRecipe(2000, <Creator:dustTincosi>, <ThermalFoundation:material:42>, <liquid:redstone> * 250);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <Creator:dustTincosi>, <ThermalFoundation:material:43>, <liquid:glowstone> * 250);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <Creator:dustTincosi>, <ThermalFoundation:material:44>, <liquid:ender> * 1000);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <Creator:dustIral>, <TConstruct:materials:15>, <liquid:obsidian.molten> * 250);

#hardened glass
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustObsidian>, <ore:dustLead>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustObsidian>, <ore:ingotLead>);
mods.tconstruct.Casting.removeBasinRecipe(<ThermalExpansion:Glass>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustObsidian>, <ore:dustLumium>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustObsidian>, <ore:ingotLumium>);
mods.thermalexpansion.Smelter.addRecipe(4000, <ThermalFoundation:material:4> * 4, <appliedenergistics2:tile.BlockQuartzLamp>, <ThermalExpansion:Glass>);
mods.thermalexpansion.Smelter.addRecipe(4000, <ThermalFoundation:material:43> * 4, <ThermalExpansion:Glass>, <ThermalExpansion:Glass:1>);

#basic machines

#redstone furance
recipes.remove(<ThermalExpansion:Machine>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine>, [[<Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <Creator:compactElectrumPlate>],
                                                                [<openmodularturrets:ioBus>, <Creator:chamberElectrumEH>, <openmodularturrets:ioBus>], 
                                                                [<Creator:compactElectrumPlate>, <ThermalExpansion:material:1>, <Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
#pulverizer
recipes.remove(<ThermalExpansion:Machine:1>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:1>, [[<Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <Creator:compactElectrumPlate>],
                                                                  [<Creator:motorACTPA>, <Creator:chamberElectrumG>, <Creator:motorACTPA>], 
                                                                  [<Creator:compactElectrumPlate>, <ThermalExpansion:material:1>, <Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
#sawmill
recipes.remove(<ThermalExpansion:Machine:2>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:2>, [[<Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <Creator:compactElectrumPlate>],
                                                                  [<minecraft:iron_axe>, <Creator:chamberElectrum>, <minecraft:iron_axe>], 
                                                                  [<Creator:motorACTPA>, <ThermalExpansion:material:1>, <Creator:motorACTPA>]], <liquid:electrum.molten> * 288, 300);
#inductioin smelter
recipes.remove(<ThermalExpansion:Machine:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:3>, [[<Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <Creator:compactElectrumPlate>],
                                                                  [<ThermalExpansion:Frame:4>, <Creator:chamberElectrumEH>, <ThermalExpansion:Frame:4>], 
                                                                  [<ThermalExpansion:material:1>, <ThermalExpansion:material:1>, <ThermalExpansion:material:1>]], <liquid:electrum.molten> * 288, 300);
#magma crucible
recipes.remove(<ThermalExpansion:Machine:4>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:4>, [[<Creator:compactElectrumPlate>, <Magneticraft:mg_tank>, <Creator:compactElectrumPlate>],
                                                                  [<ThermalExpansion:Frame:4>, <Creator:chamberElectrumEH>, <ThermalExpansion:Frame:4>], 
                                                                  [<ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>]], <liquid:electrum.molten> * 288, 300);
#fluid transposer
recipes.remove(<ThermalExpansion:Machine:5>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:5>, [[<Creator:compactElectrumPlate>, <Creator:motorACTPA> , <Creator:compactElectrumPlate>],
                                                                  [<Magneticraft:mg_tank>, <Creator:chamberElectrum>, <minecraft:chest>], 
                                                                  [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 288, 300);
#glacial precipitator
recipes.remove(<ThermalExpansion:Machine:6>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:6>, [[<ImmersiveEngineering:metalDecoration:4>, <Magneticraft:mg_tank> , <ImmersiveEngineering:metalDecoration:4>],
                                                                  [<Creator:motorACTPA>, <Creator:chamberElectrum>, <Creator:motorACTPA>], 
                                                                  [<ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>]], <liquid:electrum.molten> * 288, 300);
#igneous extruder
recipes.remove(<ThermalExpansion:Machine:7>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:7>, [[<Creator:compactElectrumPlate>, <Creator:compactElectrumPlate> , <Creator:compactElectrumPlate>],
                                                                  [<Magneticraft:mg_tank>, <Creator:chamberElectrum>, <Magneticraft:mg_tank>], 
                                                                  [<ThermalExpansion:material>, <minecraft:piston>, <ThermalExpansion:material>]], <liquid:electrum.molten> * 288, 300);

#cyclic assembler
recipes.remove(<ThermalExpansion:Machine:9>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:9>, [[<Mekanism:ControlCircuit:2>, <BuildCraft|Silicon:laserTableBlock:1> , <Mekanism:ControlCircuit:2>],
                                                                  [<BuildCraft|Silicon:laserBlock>, <Creator:chamberElectrum>, <BuildCraft|Silicon:laserBlock>], 
                                                                  [<ore:gearInvar>, <ThermalExpansion:material:1>, <ore:gearInvar>]], <liquid:electrum.molten> * 288, 300);
#energy infuser
recipes.remove(<ThermalExpansion:Machine:10>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:10>, [[<Creator:compactElectrumPlate>, <ThermalExpansion:Frame:4> , <Creator:compactElectrumPlate>],
                                                                   [<ThermalExpansion:material:2>, <Creator:chamberElectrum>, <ThermalExpansion:material:2>], 
                                                                   [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 288, 300);
#Poor organic infuser
recipes.remove(<ThermalExpansion:Machine:11>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:11>, [[<Creator:compactElectrumPlate>, <ThermalExpansion:material:3> , <Creator:compactElectrumPlate>],
                                                                   [<ProjRed|Core:projectred.core.part:14>, <Creator:chamberElectrum>, <Forestry:soil>], 
                                                                   [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 288, 300);
#devices

#autonomous activator
recipes.remove(<ThermalExpansion:Device:2>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:2>, [[<Magneticraft:inserter>, <minecraft:chest> , <Magneticraft:inserter>],
                                                                 [<Creator:motorACTPA>, <Creator:chamberElectrum>, <Creator:motorACTPA>], 
                                                                 [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 576, 300);
#terrain smasher
recipes.remove(<ThermalExpansion:Device:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:3>, [[<Magneticraft:inserter>, <minecraft:iron_pickaxe> , <Magneticraft:inserter>],
                                                                 [<ore:gearCopper>, <Creator:chamberElectrum>, <ore:gearCopper>], 
                                                                 [<Mekanism:ControlCircuit:2>, <ThermalExpansion:material:1>, <Mekanism:ControlCircuit:2>]], <liquid:electrum.molten> * 288, 300);
#acquisition apparatus
recipes.remove(<ThermalExpansion:Device:4>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:4>, [[<ore:plateElectrum>, <Magneticraft:inserter> , <ore:plateElectrum>],
                                                                 [<ThermalExpansion:material>, <minecraft:chest>, <ThermalExpansion:material>], 
                                                                 [<ore:plateElectrum>, <ThermalExpansion:material>, <ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#nullifier
recipes.remove(<ThermalExpansion:Device:5>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:5>, [[<ore:plateElectrum>, <ore:gearTin> , <ore:plateElectrum>],
                                                                 [<minecraft:hopper>, <minecraft:lava_bucket>, <Magneticraft:mg_tank>], 
                                                                 [<ore:plateElectrum>, <ThermalExpansion:material>, <ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#item allocator
recipes.remove(<ThermalExpansion:Device:6>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:6>, [[<ore:plateElectrum>, <minecraft:hopper> , <ore:plateElectrum>],
                                                                 [<ore:plateElectrum>, <ThermalExpansion:material>, <ore:plateElectrum>], 
                                                                 [null,null,null]], <liquid:electrum.molten> * 288, 300);

#generators

#vote gaben for president, and there will be no ww3.
recipes.remove(<ThermalExpansion:Dynamo>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo>, [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                               [<ore:gearCopper>, <Creator:generatorACTP>, <ore:gearCopper>], 
                                                               [<ore:plateElectrum>,<Magneticraft:mg_tank>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#hey, where is the magmatic dynamo?

#compression dynamo
recipes.remove(<ThermalExpansion:Dynamo:2>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo:2>, [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                 [<Magneticraft:mg_tank>, <Creator:generatorACTP>, <Magneticraft:mg_tank>], 
                                                                 [<ore:plateElectrum>,<Mekanism:ControlCircuit:2>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#reactant dynamo
recipes.remove(<ThermalExpansion:Dynamo:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo:3>, [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                 [<ore:gearBronze>, <Creator:generatorACTP>, <Magneticraft:mg_tank>], 
                                                                 [<ore:plateElectrum>,<ore:plateElectrum>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#enervation dynamo
recipes.remove(<ThermalExpansion:Dynamo:4>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo:4>, [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                 [<ThermalExpansion:material:1>, <Creator:chamberElectrum>, <ThermalExpansion:material:1>], 
                                                                 [<ore:plateElectrum>,<Mekanism:ControlCircuit:2>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);

#frames
recipes.remove(<ThermalExpansion:Frame:4>); #leadstone energy cell frame
recipes.remove(<ThermalExpansion:Frame:5>); #hardened energy cell frame
recipes.remove(<ThermalExpansion:Frame:6>); #redstone energy cell frame empty
recipes.remove(<ThermalExpansion:Frame:8>); #resonant energy cell frame empty
recipes.remove(<ThermalExpansion:Frame:9>); #full
recipes.remove(<ThermalExpansion:Frame:10>); #tesseract frame empty
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Frame:4>, [[<Creator:compactElectrumPlate>, <Creator:compactLeadPlate> , <Creator:compactElectrumPlate>],
                                                                [<Creator:compactLeadPlate>, <ore:blockRedstone>, <Creator:compactLeadPlate>], 
                                                                [<Creator:compactElectrumPlate>,<Creator:compactLeadPlate>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Frame:5>, [[null, <Creator:compactLeadPlate> ,null ],
                                                                [<Creator:compactInvarPlate>, <ThermalExpansion:Frame:4>, <Creator:compactInvarPlate>], 
                                                                [null, <Creator:compactLeadPlate>, null]], <liquid:electrum.molten> * 288, 300);
recipes.addShaped(<ThermalExpansion:Frame:6>, [[<Redstonic:EnergizerCapsuleFULL>, <ore:ingotLumium>, <Redstonic:EnergizerCapsuleFULL>], [<ore:ingotLumium>, <ThermalExpansion:Frame:5>, <ore:ingotLumium>], [<Redstonic:EnergizerCapsuleFULL>, <ore:ingotLumium>, <Redstonic:EnergizerCapsuleFULL>]]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Frame:6>, 200000, [<ThermalExpansion:Frame:5>, <Redstonic:EnergizerCapsuleFULL> * 4, <Creator:itemCrystal> * 4, <Creator:compactLumiumPlate> * 4, <Creator:itemAlloy:4> * 4, <ThermalExpansion:material:1> * 4, <ThermalExpansion:material:2> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Frame:8>, 400000, [<ThermalExpansion:Frame:7>, <Redstonic:EnergizerCapsuleFULL> * 4, <Creator:itemCrystal:2> * 4, <Creator:compactEnderiumPlate> * 4, <ThermalFoundation:material:140> * 4, <ThermalExpansion:material:3> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Frame:10>, 200000, [<ThermalExpansion:Frame:9>, <Creator:EnderiumPlate> * 8]);

#energy cell
recipes.remove(<ThermalExpansion:Cell:1>); #leadstone energy cell
recipes.remove(<ThermalExpansion:Cell:2>); #hardened energy cell
recipes.remove(<ThermalExpansion:Cell:3>); #redstone energy cell
recipes.remove(<ThermalExpansion:Cell:4>); #resonant energy cell
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Cell:1>, [[<Creator:compactElectrumPlate>, <ThermalExpansion:material:1> , <Creator:compactElectrumPlate>],
                                                               [<ThermalExpansion:material:2>, <ThermalExpansion:Frame:4>, <ThermalExpansion:material:2>], 
                                                               [<Creator:compactElectrumPlate>,<ThermalExpansion:material:1>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Cell:2>, [[<Creator:compactElectrumPlate>, <ThermalExpansion:material:1> , <Creator:compactElectrumPlate>],
                                                               [<ThermalExpansion:material:2>, <ThermalExpansion:Frame:5>, <ThermalExpansion:material:2>], 
                                                               [<Creator:compactElectrumPlate>,<ThermalExpansion:material:1>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);

mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Cell:2>, [[null, <Creator:compactLeadPlate> ,null ],
                                                               [<Creator:compactInvarPlate>, <ThermalExpansion:Cell:1>, <Creator:compactInvarPlate>], 
                                                               [null, <Creator:compactLeadPlate>, null]], <liquid:electrum.molten> * 288, 300);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Cell:3>, 300000, [<ThermalExpansion:Frame:7>, <Creator:EnergeticAlloyPlate> * 4, <Creator:gearEnergized> * 2, <ThermalExpansion:material:3> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Cell:4>, 500000, [<ThermalExpansion:Frame:9>, <Creator:PhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <ThermalExpansion:material:3> * 4]);

#machine level up

#hardened
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:1>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:1>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:2>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:2>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:3>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:3>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:4>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:4>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:5>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:5>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:6>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:6>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:7>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:7>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:9>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:9>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:10>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:10>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:11>.withTag({Level: 1 as byte}), 200000, [<ThermalExpansion:Machine:11>, <Creator:compactInvarPlate> * 2, <Creator:compactSignalumPlate> * 2, <Creator:compactLeadPlate> * 2]);

#redstone
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:1>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:1>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:2>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:2>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:3>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:3>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:4>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:4>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:5>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:5>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:6>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:6>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:7>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:7>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:9>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:9>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:10>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:10>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:11>.withTag({Level: 2 as byte}), 450000, [<ThermalExpansion:Machine:11>.withTag({Level: 1 as byte}), <Creator:compactEnergeticAlloyPlate> * 2, <Creator:gearEnergized> * 2, <Creator:compactLumiumPlate> * 4, <ThermalFoundation:material:139> * 4, <Mekanism:ControlCircuit:2> * 4, <Genetics:misc:10> * 4, <Creator:itemCrystal> * 2, <ThermalExpansion:Glass> * 4]);

#resonant
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:1>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:1>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:2>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:2>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:3>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:3>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:4>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:4>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:5>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:5>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:6>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:6>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:7>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:7>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:9>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:9>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:10>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:10>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:Machine:11>.withTag({Level: 3 as byte}), 700000, [<ThermalExpansion:Machine:11>.withTag({Level: 2 as byte}), <Creator:compactPhasedGoldPlate> * 4, <Creator:gearVibrant> * 2, <Creator:itemCrystal:2>, <Creator:itemCrystal:3>, <BuildCraft|Silicon:redstoneChipset:4> * 2]);

#some machine upgrades
recipes.remove(<ThermalExpansion:augment:49>);
recipes.addShaped(<ThermalExpansion:augment:49>,[[null,<ore:nuggetLead>,null],[<ore:nuggetLead>,<Creator:excitingCoil>,<ore:nuggetLead>],[<minecraft:redstone>,<ore:nuggetLead>,<minecraft:redstone>]]);

#capacitor
recipes.remove(<ThermalExpansion:capacitor:2>);
recipes.remove(<ThermalExpansion:capacitor:3>);
recipes.remove(<ThermalExpansion:capacitor:4>);
recipes.remove(<ThermalExpansion:capacitor:5>);

mods.forestry.Carpenter.addRecipe(<ThermalExpansion:capacitor:2>, [[<ThermalExpansion:material:2>, <Redstonic:capacitor> , <ThermalExpansion:material:2>],
                                                                      [<Creator:compactLeadPlate>, <ore:blockCopper>, <Creator:compactLeadPlate>], 
                                                                      [<Creator:compactElectrumPlate>,<ore:dustSulfur>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:capacitor:3>, 30000, [<ThermalExpansion:capacitor:2>, <Creator:compactInvarPlate> * 3, <minecraft:redstone>*3, <ThermalExpansion:material:2> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:capacitor:4>, 60000, [<Redstonic:basicBattery>, <Creator:compactElectrumPlate> * 3, <ThermalFoundation:material:138> * 2, <minecraft:diamond>, <ThermalExpansion:material:2> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<ThermalExpansion:capacitor:5>, 90000, [<Redstonic:energizedBattery>, <Creator:compactEnderiumPlate> * 3 , <ThermalFoundation:material:140> * 4 , <ThermalExpansion:material:2> * 2]);

#cache
recipes.remove(<ThermalExpansion:Cache:1>);
recipes.remove(<ThermalExpansion:Cache:2>);
recipes.remove(<ThermalExpansion:Cache:3>);
recipes.remove(<ThermalExpansion:Cache:4>);
recipes.addShaped(<ThermalExpansion:Cache:1>, [[<Creator:compactSilverPlate>, <Forestry:logsFireproof:*>, <Creator:compactSilverPlate>], [<Forestry:logsFireproof:*>, <StorageDrawers:fullDrawers1:*>, <Forestry:logsFireproof:*>], [<Creator:compactSilverPlate>, <Forestry:logsFireproof:*>, <Creator:compactSilverPlate>]]);
recipes.addShaped(<ThermalExpansion:Cache:2>, [[<Creator:compactElectricalSteelPlate>, <StorageDrawers:upgrade:2>, <Creator:compactElectricalSteelPlate>], [<StorageDrawers:upgrade:2>, <ThermalExpansion:Cache:1>, <StorageDrawers:upgrade:2>], [<Creator:compactElectricalSteelPlate>, <StorageDrawers:upgrade:2>, <Creator:compactElectricalSteelPlate>]]);
recipes.addShaped(<ThermalExpansion:Cache:3>, [[<Creator:compactLeadPlate>, <StorageDrawers:upgrade:3>, <Creator:compactLeadPlate>], [<StorageDrawers:upgrade:3>, <ThermalExpansion:Cache:2>, <StorageDrawers:upgrade:3>], [<Creator:compactLeadPlate>, <StorageDrawers:upgrade:3>, <Creator:compactLeadPlate>]]);
recipes.addShaped(<ThermalExpansion:Cache:4>, [[<Creator:compactEnderiumPlate>, <StorageDrawers:upgrade:5>, <Creator:compactEnderiumPlate>], [<StorageDrawers:upgrade:5>, <ThermalExpansion:Cache:3>, <StorageDrawers:upgrade:5>], [<Creator:compactEnderiumPlate>, <StorageDrawers:upgrade:5>, <Creator:compactEnderiumPlate>]]);

#components
recipes.remove(<ThermalExpansion:material:1>);
recipes.remove(<ThermalExpansion:material:2>);
recipes.remove(<ThermalExpansion:material:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:material:2>, [[null, null, <openmodularturrets:ioBus>],
                                                                   [null, <ore:gearSilver>, null], 
                                                                   [<openmodularturrets:ioBus>, null, null]], <liquid:silver.molten> * 288, 300);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:material:1>, [[null, null, <openmodularturrets:ioBus>],
                                                                   [null, <ore:gearGold>, null], 
                                                                   [<openmodularturrets:ioBus>, null, null]], <liquid:gold.molten> * 288, 300);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:material:3>, [[<openmodularturrets:ioBus>, null, null],
                                                                   [null, <ore:gearLumium>, null], 
                                                                   [null, null, <openmodularturrets:ioBus>]], <liquid:lumium.molten> * 288, 300);

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

#rich slag
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:clock>, <ore:sand>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:compass>, <ore:sand>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:sand>, <ore:oreMithril>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:sand>, <ore:oreRedstone>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustPyrotheum>, <ore:oreMithril>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:soul_sand>, <ore:oreQuartz>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:crystalCinnabar>, <ore:oreMithril>);
mods.mekanism.Combiner.addRecipe(<ThermalFoundation:material:38> * 8, <gas:liquidStone>, <ThermalFoundation:Ore:6>);
mods.thermalexpansion.Smelter.addRecipe(4000, <ThermalExpansion:material:514>, <ThermalFoundation:Ore:6>, <ThermalFoundation:material:70> * 2, <ThermalExpansion:material:515>, 2);

#those abandoned kids :<
recipes.remove(<ThermalExpansion:capacitor:1>); #no! never before tier3!
<ThermalExpansion:capacitor:1>.addTooltip(format.red("Potato? Do you think you are Ubisoft?"));
<ThermalExpansion:capacitor:1>.addTooltip(format.red("土豆？你以为你是育碧吗？"));
recipes.remove(<ThermalExpansion:Machine:8>);
recipes.remove(<ThermalExpansion:material:16>);
recipes.remove(<ThermalExpansion:satchel:1>);
recipes.remove(<ThermalExpansion:satchel:2>);
recipes.remove(<ThermalExpansion:satchel:3>);
recipes.remove(<ThermalExpansion:satchel:4>);
NEI.hide(<ThermalExpansion:satchel:1>);
NEI.hide(<ThermalExpansion:satchel:2>);
NEI.hide(<ThermalExpansion:satchel:3>);
NEI.hide(<ThermalExpansion:satchel:4>);
<ThermalExpansion:satchel:1>.addTooltip(format.red("Backpack! There are so many backpacks!"));
<ThermalExpansion:satchel:1>.addTooltip(format.red("又是背包！太多背包了！"));
<ThermalExpansion:satchel:2>.addTooltip(format.red("Backpack! There are so many backpacks!"));
<ThermalExpansion:satchel:2>.addTooltip(format.red("又是背包！太多背包了！"));
<ThermalExpansion:satchel:3>.addTooltip(format.red("Backpack! There are so many backpacks!"));
<ThermalExpansion:satchel:3>.addTooltip(format.red("又是背包！太多背包了！"));
<ThermalExpansion:satchel:4>.addTooltip(format.red("Backpack! There are so many backpacks!"));
<ThermalExpansion:satchel:4>.addTooltip(format.red("又是背包！太多背包了！"));
recipes.remove(<ThermalExpansion:Strongbox:1>);
recipes.remove(<ThermalExpansion:Strongbox:2>);
recipes.remove(<ThermalExpansion:Strongbox:3>);
recipes.remove(<ThermalExpansion:Strongbox:4>);
<ThermalExpansion:Strongbox:1>.addTooltip(format.red("I don't think Strongbox is safe."));
<ThermalExpansion:Strongbox:1>.addTooltip(format.red("我认为保险箱并不保险。"));
<ThermalExpansion:Strongbox:2>.addTooltip(format.red("I don't think Strongbox is safe."));
<ThermalExpansion:Strongbox:2>.addTooltip(format.red("我认为保险箱并不保险。"));
<ThermalExpansion:Strongbox:3>.addTooltip(format.red("I don't think Strongbox is safe."));
<ThermalExpansion:Strongbox:3>.addTooltip(format.red("我认为保险箱并不保险。"));
<ThermalExpansion:Strongbox:4>.addTooltip(format.red("I don't think Strongbox is safe."));
<ThermalExpansion:Strongbox:4>.addTooltip(format.red("我认为保险箱并不保险。"));
NEI.hide(<ThermalExpansion:Strongbox:1>);
NEI.hide(<ThermalExpansion:Strongbox:2>);
NEI.hide(<ThermalExpansion:Strongbox:3>);
NEI.hide(<ThermalExpansion:Strongbox:4>);
recipes.remove(<ThermalExpansion:Tesseract>);
<ThermalExpansion:Tesseract>.addTooltip(format.red("Maybe Quantum Entangloporter is a better choice."));
<ThermalExpansion:Tesseract>.addTooltip(format.red("也许量子传送装置会是更好的选择。"));
NEI.hide(<ThermalExpansion:Tesseract>);
recipes.remove(<ThermalExpansion:Tank:1>);
recipes.remove(<ThermalExpansion:Tank:2>);
recipes.remove(<ThermalExpansion:Tank:3>);
recipes.remove(<ThermalExpansion:Tank:4>);
<ThermalExpansion:Tank:1>.addTooltip(format.red("There are so many kinds of tanks that you can choose."));
<ThermalExpansion:Tank:1>.addTooltip(format.red("有太多种储罐供你选择了。"));
<ThermalExpansion:Tank:2>.addTooltip(format.red("There are so many kinds of tanks that you can choose."));
<ThermalExpansion:Tank:2>.addTooltip(format.red("有太多种储罐供你选择了。"));
<ThermalExpansion:Tank:3>.addTooltip(format.red("There are so many kinds of tanks that you can choose."));
<ThermalExpansion:Tank:3>.addTooltip(format.red("有太多种储罐供你选择了。"));
<ThermalExpansion:Tank:4>.addTooltip(format.red("There are so many kinds of tanks that you can choose."));
<ThermalExpansion:Tank:4>.addTooltip(format.red("有太多种储罐供你选择了。"));
recipes.remove(<ThermalExpansion:Sponge:*>);
<ThermalExpansion:Sponge:*>.addTooltip(format.red("You have OpenBlocks Sponge, so you needn't use this."));
<ThermalExpansion:Sponge:*>.addTooltip(format.red("你有开放式方块的海绵了，所以你没必要用这玩意了。"));
NEI.hide(<ThermalExpansion:Sponge:1>);
NEI.hide(<ThermalExpansion:Sponge:2>);

print("Initialized 'ThermalExpansion.zs'");