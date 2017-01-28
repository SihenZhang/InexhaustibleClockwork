#Name: Mekanism.zs
#Author: Si_hen & Amygdaloideae
#Guess who?

import mods.nei.NEI;

print("Initializing 'Mekanism.zs'...");

#remove Gunpowder recipes
mods.mekanism.Crusher.removeRecipe(<minecraft:gunpowder>);
mods.mekanism.Enrichment.removeRecipe(<ore:dustSaltpeter>);

#remove Paper recipe
recipes.removeShaped(<minecraft:paper>, [[<Mekanism:Sawdust>, <Mekanism:Sawdust>, <Mekanism:Sawdust>]]);

#charcoal block
recipes.remove(<Mekanism:BasicBlock:3>);
furnace.setFuel(<Mekanism:BasicBlock:3>, 0);
<ore:blockCharcoal>.remove(<Mekanism:BasicBlock:3>);
NEI.hide(<Mekanism:BasicBlock:3>);

#Machines

#Enrichment Chamber
recipes.remove(<Mekanism:MachineBlock>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock>, 200000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3> * 4, <minecraft:piston> * 2, <Creator:motorACTPA> *2]);

#Osmium Compressor
recipes.remove(<Mekanism:MachineBlock:1>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:1>, 200000, [<Creator:chamberOsmium>, <Railcraft:anvil> * 2, <Mekanism:ControlCircuit:3> * 4, <Creator:motorACTPA> *2]);

#Combiner
recipes.remove(<Mekanism:MachineBlock:2>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:2>, 200000, [<Mekanism:MachineBlock:1>, <ExtraUtilities:cobblestone_compressed:1> * 2, <Mekanism:ControlCircuit:3> * 2, <Creator:denseOsmiumPlate> * 4]);

#Crusher
recipes.remove(<Mekanism:MachineBlock:3>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:3>, 200000, [<Creator:chamberOsmiumG>, <Creator:motorACTPA> * 2, <Mekanism:ControlCircuit:3> * 4, <Creator:compactOsmiumPlate>*2]);

#Metallurgic Infuser
recipes.remove(<Mekanism:MachineBlock:8>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:8>, 200000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3> * 4, <ImmersiveEngineering:graphiteElectrode>*2, <Creator:denseOsmiumPlate> * 4]);

#Purification Chamber
recipes.remove(<Mekanism:MachineBlock:9>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:9>, 200000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3> * 4,<Mekanism:GasTank> , <Creator:denseOsmiumPlate> * 4]);

#Energized Smelter
recipes.remove(<Mekanism:MachineBlock:10>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:10>, 200000, [<Creator:chamberOsmiumEH>, <Mekanism:ControlCircuit:3> * 4]);

#Teleporter
recipes.remove(<Mekanism:MachineBlock:11>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:11>, 200000, [<Creator:chamberOsmium>*2, <Mekanism:ControlCircuit:3> * 8, <Mekanism:TeleportationCore>, <Creator:denseOsmiumPlate>*4]);

#Personal Chest
recipes.remove(<Mekanism:MachineBlock:13>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:13>, 200000, [<IronChest:BlockIronChest>, <Mekanism:ControlCircuit:3> *4]);

#Rotary Condensentrator
recipes.remove(<Mekanism:MachineBlock2>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2>, 250000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:GasTank>,<Magneticraft:mg_tank>,<ThermalExpansion:Glass>*4]);

#Chemical Oxidizer
recipes.remove(<Mekanism:MachineBlock2:1>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:1>, 250000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:GasTank>,<IronChest:BlockIronChest>,<Mekanism:ReinforcedAlloy>*4]);

#Chemical Infuser
recipes.remove(<Mekanism:MachineBlock2:2>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:2>, 250000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:GasTank>*2,<Mekanism:EnrichedAlloy>*4, <ImmersiveEngineering:graphiteElectrode>*2]);

#Chemical Injection Chamber
recipes.remove(<Mekanism:MachineBlock2:3>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:3>, 250000, [<Mekanism:MachineBlock:9>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *2, <Mekanism:EnergyTablet>,<Mekanism:ReinforcedAlloy>*4]);

#Electrolytic Separator
recipes.remove(<Mekanism:MachineBlock2:4>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:4>, 250000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:ReinforcedAlloy>*4, <ImmersiveEngineering:graphiteElectrode>*2, <Mekanism:GasTank>*2,<Mekanism:ElectrolyticCore>]);

#Precision Sawmill
recipes.remove(<Mekanism:MachineBlock2:5>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:5>, 250000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <minecraft:iron_axe>*4,<Creator:motorACTPA>]);

#Chemical Dissolution Chamber
recipes.remove(<Mekanism:MachineBlock2:6>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:6>, 250000, [<Creator:chamberOsmiumG>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>*2]);

#Chemical Washer
recipes.remove(<Mekanism:MachineBlock2:7>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:7>, 250000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>, <Magneticraft:mg_tank>, <Creator:motorACTPA>]);

#Chemical Crystallizer
recipes.remove(<Mekanism:MachineBlock2:8>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:8>, 250000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>*2, <ImmersiveEngineering:metalDecoration:4>*4]);

#Seismic Vibrator
recipes.remove(<Mekanism:MachineBlock2:9>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:9>, 250000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Railcraft:anvil>, <Creator:motorACTPA>*2, <ImmersiveEngineering:coil:4>*4]);

#Pressurized Reaction Chamber
recipes.remove(<Mekanism:MachineBlock2:10>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:10>, 250000, [<Mekanism:MachineBlock>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>*2, <Railcraft:anvil>, <Mekanism:ReinforcedAlloy>*4]);

#Quantum Entangloporter
recipes.remove(<Mekanism:MachineBlock3>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock3>, 300000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*8, <Mekanism:ControlCircuit:3> *8, <Mekanism:EnergyTablet>, <Mekanism:AtomicAlloy>*4, <Mekanism:BasicBlock:7>*4, <ThermalExpansion:Frame:11>*4]);

#Fuelwood Heater
recipes.remove(<Mekanism:MachineBlock3:6>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock3:6>, 150000, [<Creator:chamberOsmium>, <minecraft:furnace>*4, <minecraft:redstone>*4, <Mekanism:BasicBlock2:5>]);

#Security Desk
recipes.remove(<Mekanism:BasicBlock2:9>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:BasicBlock2:9>, 200000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3>*4, <Mekanism:TeleportationCore>,<ThermalExpansion:Glass>*4,<Creator:denseOsmiumPlate>*4]);

#Something else

#Superheating Element
recipes.remove(<Mekanism:BasicBlock2:5>);
recipes.addShaped(<Mekanism:BasicBlock2:5>,[[<minecraft:redstone>,<ore:ingotCopper>,<minecraft:redstone>],[<ore:ingotCopper>,<Creator:chamberOsmium>,<ore:ingotCopper>],[<minecraft:redstone>,<ore:ingotCopper>,<minecraft:redstone>]]);

#Induction Cell

#->Cell
recipes.remove(<Mekanism:BasicBlock2:3>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:BasicBlock2:3>, 700000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3>*4, <ThermalExpansion:Cell:4>*4,<ThermalExpansion:Glass>*4,<Creator:denseOsmiumPlate>*4,<Mekanism:EnergyTablet>*3, <Mekanism:OtherDust:4>*20]);

#->Provider
recipes.remove(<Mekanism:BasicBlock2:4>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:BasicBlock2:4>, 350000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3>*4, <ThermalExpansion:material:2>*20,<ThermalExpansion:Glass>*4,<Creator:denseOsmiumPlate>*4]);

#Gas tank
recipes.remove(<Mekanism:GasTank>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:GasTank>, 50000, [<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:GasTank>.withTag({tier:1 as byte}), 50000, [<Mekanism:GasTank>*2,<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:GasTank>.withTag({tier:2 as byte}), 50000, [<Mekanism:GasTank>.withTag({tier:1 as byte}) *2,<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:GasTank>.withTag({tier:3 as byte}), 50000, [<Mekanism:GasTank>.withTag({tier:2 as byte}) *2,<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);

#Cable
recipes.remove(<Mekanism:PartTransmitter>);
recipes.addShaped(<Mekanism:PartTransmitter>, [[<Creator:compactSteelPlate>, <zettaindustries:blockwire>, <Creator:compactSteelPlate>]]);

#Those abandoned kids :-O
recipes.remove(<Mekanism:EnergyCube>);
recipes.remove(<Mekanism:MachineBlock:4>);
recipes.remove(<Mekanism:MachineBlock:12>);
recipes.remove(<Mekanism:MachineBlock2:12>);
recipes.remove(<Mekanism:MachineBlock2:13>);
recipes.remove(<Mekanism:MachineBlock2:14>);
recipes.remove(<Mekanism:MachineBlock2:15>);
recipes.remove(<Mekanism:MachineBlock3:1>);
recipes.remove(<Mekanism:MachineBlock3:4>);
recipes.remove(<Mekanism:MachineBlock3:5>);

print("Initialized 'Mekanism.zs'");