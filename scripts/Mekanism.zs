#Name: Mekanism.zs
#Author: Si_hen & Amygdaloideae
#Guess who?

print("Initializing 'Mekanism.zs'...");

#remove Gunpowder recipes
mods.mekanism.Crusher.removeRecipe(<minecraft:gunpowder>);
mods.mekanism.Enrichment.removeRecipe(<ore:dustSaltpeter>);

#remove Paper recipe
recipes.removeShaped(<minecraft:paper>, [[<Mekanism:Sawdust>, <Mekanism:Sawdust>, <Mekanism:Sawdust>]]);

#remove bin recipe
recipes.remove(<Mekanism:BasicBlock:6>.withTag({tier: 0}));
recipes.remove(<Mekanism:BasicBlock:6>.withTag({tier: 1}));
recipes.remove(<Mekanism:BasicBlock:6>.withTag({tier: 2}));
recipes.remove(<Mekanism:BasicBlock:6>.withTag({tier: 3}));
<Mekanism:BasicBlock:6>.addTooltip(format.red("Please use Storage Drawer instead."));
<Mekanism:BasicBlock:6>.addTooltip(format.red("请改用储物抽屉。"));

#charcoal block
recipes.remove(<Mekanism:BasicBlock:3>);
furnace.setFuel(<Mekanism:BasicBlock:3>, 0);
<ore:blockCharcoal>.remove(<Mekanism:BasicBlock:3>);

#Machines

#Enrichment Chamber
recipes.remove(<Mekanism:MachineBlock>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock>, 1500000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3> * 4, <minecraft:piston> * 4, <Creator:denseDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>, <Creator:motorACTPA> *2]);

#Osmium Compressor
recipes.remove(<Mekanism:MachineBlock:1>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:1>, 1500000, [<Creator:chamberOsmium>, <Railcraft:anvil> * 2, <Mekanism:ControlCircuit:3> * 4, <Creator:compactDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>, <Creator:motorACTPA> *2]);

#Combiner
recipes.remove(<Mekanism:MachineBlock:2>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:2>, 1500000, [<Mekanism:MachineBlock:1>, <ExtraUtilities:cobblestone_compressed:1> * 2, <Mekanism:ControlCircuit:3> * 2, <Creator:denseOsmiumPlate> * 4, <Creator:denseDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>]);

#Crusher
recipes.remove(<Mekanism:MachineBlock:3>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:3>, 1500000, [<Creator:chamberOsmiumG>, <Creator:motorACTPA> * 2, <Mekanism:ControlCircuit:3> * 4, <Creator:compactOsmiumPlate>*2, <Creator:denseDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>]);

#Metallurgic Infuser
recipes.remove(<Mekanism:MachineBlock:8>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:8>, 1000000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3> * 4, <ImmersiveEngineering:graphiteElectrode>*2, <Creator:gearVibrant>]);

#Purification Chamber
recipes.remove(<Mekanism:MachineBlock:9>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:9>, 1500000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3> * 4,<Mekanism:GasTank> , <Creator:denseOsmiumPlate> * 4, <Creator:denseDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>]);

#Energized Smelter
recipes.remove(<Mekanism:MachineBlock:10>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:10>, 1000000, [<Creator:chamberOsmiumEH>, <Mekanism:ControlCircuit:3> * 4, <Mekanism:TeleportationCore> * 2]);

#Teleporter
recipes.remove(<Mekanism:MachineBlock:11>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:11>, 1500000, [<Creator:chamberOsmium>*2, <Mekanism:ControlCircuit:3> * 8, <Mekanism:TeleportationCore> * 5, <Creator:denseOsmiumPlate>*4, <Creator:denseDarkSteelPlate>, <Creator:gearVibrant>]);

#Personal Chest
recipes.remove(<Mekanism:MachineBlock:13>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock:13>, 500000, [<EnhancedInventories:improvedChest:1>.withTag({frameName: "frame.mc.iron"}), <Mekanism:ControlCircuit:3> *4]);

#Rotary Condensentrator
recipes.remove(<Mekanism:MachineBlock2>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:GasTank>,<Magneticraft:mg_tank>,<ThermalExpansion:Glass>*4, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> *2, <Creator:gearVibrant>]);

#Chemical Oxidizer
recipes.remove(<Mekanism:MachineBlock2:1>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:1>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:GasTank>,<EnhancedInventories:improvedChest:1>.withTag({frameName: "frame.mc.iron"}), <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Chemical Infuser
recipes.remove(<Mekanism:MachineBlock2:2>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:2>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:GasTank>*2, <ImmersiveEngineering:graphiteElectrode>*2, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Chemical Injection Chamber
recipes.remove(<Mekanism:MachineBlock2:3>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:3>, 2000000, [<Mekanism:MachineBlock:9>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *2, <Mekanism:EnergyTablet>, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Electrolytic Separator
recipes.remove(<Mekanism:MachineBlock2:4>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:4>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <ImmersiveEngineering:graphiteElectrode>*2, <Mekanism:GasTank>*2,<Mekanism:ElectrolyticCore> * 2, <Creator:denseDarkSteelPlate> * 2, <Creator:gearVibrant>]);

#Precision Sawmill
recipes.remove(<Mekanism:MachineBlock2:5>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:5>, 500000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <minecraft:iron_axe>*4,<Creator:motorACTPA>]);

#Chemical Dissolution Chamber
recipes.remove(<Mekanism:MachineBlock2:6>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:6>, 2000000, [<Creator:chamberOsmiumG>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>*2, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Chemical Washer
recipes.remove(<Mekanism:MachineBlock2:7>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:7>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>, <Magneticraft:mg_tank>, <Creator:motorACTPA>, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Chemical Crystallizer
recipes.remove(<Mekanism:MachineBlock2:8>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:8>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>*2, <ImmersiveEngineering:metalDecoration:4>*4, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Seismic Vibrator
recipes.remove(<Mekanism:MachineBlock2:9>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:9>, 100000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Railcraft:anvil>, <Creator:motorACTPA>*2, <ImmersiveEngineering:coil:4>*4]);

#Pressurized Reaction Chamber
recipes.remove(<Mekanism:MachineBlock2:10>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock2:10>, 500000, [<Mekanism:MachineBlock>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>*2, <Railcraft:anvil>, <Mekanism:ReinforcedAlloy>*4]);

#Fuelwood Heater
recipes.remove(<Mekanism:MachineBlock3:6>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:MachineBlock3:6>, 300000, [<Creator:chamberOsmium>, <minecraft:furnace>*4, <minecraft:redstone>*4, <Mekanism:BasicBlock2:5>]);

#Security Desk
recipes.remove(<Mekanism:BasicBlock2:9>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:BasicBlock2:9>, 400000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3>*4, <Mekanism:TeleportationCore>,<ThermalExpansion:Glass>*4,<Creator:denseOsmiumPlate>*4]);

#Something else

#Superheating Element
recipes.remove(<Mekanism:BasicBlock2:5>);
recipes.addShaped(<Mekanism:BasicBlock2:5>,[[<minecraft:redstone>,<ore:ingotCopper>,<minecraft:redstone>],[<ore:ingotCopper>,<Creator:chamberOsmium>,<ore:ingotCopper>],[<minecraft:redstone>,<ore:ingotCopper>,<minecraft:redstone>]]);

#Induction Cell

#->Cell
recipes.remove(<Mekanism:BasicBlock2:3>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:BasicBlock2:3>, 1400000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3>*4, <ThermalExpansion:Cell:4>*4,<ThermalExpansion:Glass>*4,<Creator:denseOsmiumPlate>*4,<Mekanism:EnergyTablet>*3, <Mekanism:OtherDust:4>*20]);

#->Provider
recipes.remove(<Mekanism:BasicBlock2:4>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:BasicBlock2:4>, 70000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3>*4, <ThermalExpansion:material:2>*20,<ThermalExpansion:Glass>*4,<Creator:denseOsmiumPlate>*4]);

#Gas tank
recipes.remove(<Mekanism:GasTank>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:GasTank>, 50000, [<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:GasTank>.withTag({tier:1 as byte}), 50000, [<Mekanism:GasTank>*2,<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:GasTank>.withTag({tier:2 as byte}), 50000, [<Mekanism:GasTank>.withTag({tier:1 as byte}) *2,<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:GasTank>.withTag({tier:3 as byte}), 50000, [<Mekanism:GasTank>.withTag({tier:2 as byte}) *2,<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);

#alloy
mods.mekanism.Infuser.removeRecipe(<Mekanism:EnrichedAlloy>);
mods.mekanism.Infuser.addRecipe("REDSTONE", 10, <Creator:itemAlloy:7>, <Mekanism:EnrichedAlloy>);

#teleportation core
recipes.remove(<Mekanism:TeleportationCore>);
recipes.addShaped(<Mekanism:TeleportationCore>, [[<Forestry:thermionicTubes:11>, <ore:alloyUltimate>, <Forestry:thermionicTubes:11>], [<Creator:itemAlloy:6>, <Creator:itemCrystal:2>, <Creator:itemAlloy:6>], [<Forestry:thermionicTubes:11>, <ore:alloyUltimate>, <Forestry:thermionicTubes:11>]]);

#Cable
recipes.remove(<Mekanism:PartTransmitter>);
recipes.addShaped(<Mekanism:PartTransmitter> *8, [[<Creator:compactSteelPlate>, <zettaindustries:blockwire>, <Creator:compactSteelPlate>]]);

#Laser
recipes.remove(<Mekanism:MachineBlock2:14>);
recipes.addShaped(<Mekanism:MachineBlock2:14>, [[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],[<ore:ingotSteel>,<ThermalExpansion:Cell:4>,<minecraft:diamond>],[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>]]);

#FUCKING STEEL
mods.mekanism.Infuser.removeRecipe(<Mekanism:EnrichedIron:1>);
mods.mekanism.Infuser.removeRecipe(<Mekanism:OtherDust:1>);

#Those abandoned kids :-O
recipes.remove(<Mekanism:EnergyCube>);
recipes.remove(<Mekanism:MachineBlock:4>);
recipes.remove(<Mekanism:MachineBlock:12>);
recipes.remove(<Mekanism:MachineBlock2:12>);
recipes.remove(<Mekanism:MachineBlock2:13>);
recipes.remove(<Mekanism:MachineBlock2:15>);

recipes.remove(<Mekanism:MachineBlock3:5>);

print("Initialized 'Mekanism.zs'");