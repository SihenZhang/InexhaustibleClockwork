#Name: Mekanism.zs
#Author: Si_hen & Amygdaloideae
#Guess who?

import mods.buildcraft.AssemblyTable;
import mods.mekanism.Infuser;

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

#cardboard box
recipes.remove(<Mekanism:CardboardBox>);
mods.forestry.Carpenter.addRecipe(<Mekanism:CardboardBox>, [[<ore:itemBeeswax>, <ExtraTrees:misc:1>, <ore:itemBeeswax>],
                                                            [<ExtraTrees:misc:1>, <Mekanism:TeleportationCore>, <ExtraTrees:misc:1>], 
                                                            [<ore:itemBeeswax>, <ExtraTrees:misc:1>, <ore:itemBeeswax>]], <liquid:glue> * 5000, 200);

#Machines

#Enrichment Chamber
recipes.remove(<Mekanism:MachineBlock>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock>, 1500000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3> * 4, <minecraft:piston> * 4, <Creator:denseDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>, <Creator:motorACTPA> *2]);

#Osmium Compressor
recipes.remove(<Mekanism:MachineBlock:1>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock:1>, 1500000, [<Creator:chamberOsmium>, <Railcraft:anvil> * 2, <Mekanism:ControlCircuit:3> * 4, <Creator:compactDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>, <Creator:motorACTPA> *2]);

#Combiner
recipes.remove(<Mekanism:MachineBlock:2>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock:2>, 1500000, [<Mekanism:MachineBlock:1>, <ExtraUtilities:cobblestone_compressed:1> * 2, <Mekanism:ControlCircuit:3> * 2, <Creator:denseOsmiumPlate> * 4, <Creator:denseDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>]);

#Crusher
recipes.remove(<Mekanism:MachineBlock:3>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock:3>, 1500000, [<Creator:chamberOsmiumG>, <Creator:motorACTPA> * 2, <Mekanism:ControlCircuit:3> * 4, <Creator:compactOsmiumPlate>*2, <Creator:denseDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>]);

#Metallurgic Infuser
recipes.remove(<Mekanism:MachineBlock:8>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock:8>, 1000000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3> * 4, <ImmersiveEngineering:graphiteElectrode>*2, <Creator:gearVibrant>]);

#Purification Chamber
recipes.remove(<Mekanism:MachineBlock:9>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock:9>, 1500000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3> * 4,<Mekanism:GasTank> , <Creator:denseOsmiumPlate> * 4, <Creator:denseDarkSteelPlate>, <Mekanism:TeleportationCore>, <Creator:gearVibrant>]);

#Energized Smelter
recipes.remove(<Mekanism:MachineBlock:10>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock:10>, 1000000, [<Creator:chamberOsmiumEH>, <Mekanism:ControlCircuit:3> * 4, <Mekanism:TeleportationCore> * 2]);

#Teleporter
recipes.remove(<Mekanism:MachineBlock:11>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock:11>, 1500000, [<Creator:chamberOsmium>*2, <Mekanism:ControlCircuit:3> * 8, <Mekanism:TeleportationCore> * 5, <Creator:denseOsmiumPlate>*4, <Creator:denseDarkSteelPlate>, <Creator:gearVibrant>]);

#Personal Chest
recipes.remove(<Mekanism:MachineBlock:13>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock:13>, 500000, [<EnhancedInventories:improvedChest:1>.withTag({frameName: "frame.mc.iron"}), <Mekanism:ControlCircuit:3> *4]);

#Rotary Condensentrator
recipes.remove(<Mekanism:MachineBlock2>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:GasTank>,<Magneticraft:mg_tank>,<ThermalExpansion:Glass>*4, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> *2, <Creator:gearVibrant>]);

#Chemical Oxidizer
recipes.remove(<Mekanism:MachineBlock2:1>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:1>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:GasTank>,<EnhancedInventories:improvedChest:1>.withTag({frameName: "frame.mc.iron"}), <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Chemical Infuser
recipes.remove(<Mekanism:MachineBlock2:2>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:2>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>,<Mekanism:GasTank>*2, <ImmersiveEngineering:graphiteElectrode>*2, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Chemical Injection Chamber
recipes.remove(<Mekanism:MachineBlock2:3>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:3>, 2000000, [<Mekanism:MachineBlock:9>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *2, <Mekanism:EnergyTablet>, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Electrolytic Separator
recipes.remove(<Mekanism:MachineBlock2:4>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:4>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <ImmersiveEngineering:graphiteElectrode>*2, <Mekanism:GasTank>*2,<Mekanism:ElectrolyticCore> * 2, <Creator:denseDarkSteelPlate> * 2, <Creator:gearVibrant>]);

#Precision Sawmill
recipes.remove(<Mekanism:MachineBlock2:5>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:5>, 500000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <minecraft:iron_axe>*4,<Creator:motorACTPA>]);

#Chemical Dissolution Chamber
recipes.remove(<Mekanism:MachineBlock2:6>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:6>, 2000000, [<Creator:chamberOsmiumG>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>*2, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Chemical Washer
recipes.remove(<Mekanism:MachineBlock2:7>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:7>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>, <Magneticraft:mg_tank>, <Creator:motorACTPA>, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Chemical Crystallizer
recipes.remove(<Mekanism:MachineBlock2:8>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:8>, 2000000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>*2, <ImmersiveEngineering:metalDecoration:4>*4, <Creator:denseDarkSteelPlate> * 2, <Mekanism:TeleportationCore> * 2, <Creator:gearVibrant>]);

#Seismic Vibrator
recipes.remove(<Mekanism:MachineBlock2:9>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:9>, 100000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Railcraft:anvil>, <Creator:motorACTPA>*2, <ImmersiveEngineering:coil:4>*4]);

#Pressurized Reaction Chamber
recipes.remove(<Mekanism:MachineBlock2:10>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock2:10>, 500000, [<Mekanism:MachineBlock>,<Creator:denseOsmiumPlate>*4, <Mekanism:ControlCircuit:3> *4, <Mekanism:EnergyTablet>, <Mekanism:GasTank>*2, <Railcraft:anvil>, <Mekanism:ReinforcedAlloy>*4]);

#Quantum Entangloporter
recipes.remove(<Mekanism:MachineBlock3>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock3>, 600000, [<Creator:chamberOsmium>,<Creator:denseOsmiumPlate>*8, <Mekanism:ControlCircuit:3> *8, <Mekanism:EnergyTablet>, <Mekanism:AtomicAlloy>*4, <Mekanism:BasicBlock:7>*4, <ThermalExpansion:Frame:11>*4]);

#Fuelwood Heater
recipes.remove(<Mekanism:MachineBlock3:6>);
AssemblyTable.addRecipe(<Mekanism:MachineBlock3:6>, 300000, [<Creator:chamberOsmium>, <minecraft:furnace>*4, <minecraft:redstone>*4, <Mekanism:BasicBlock2:5>]);

#Security Desk
recipes.remove(<Mekanism:BasicBlock2:9>);
AssemblyTable.addRecipe(<Mekanism:BasicBlock2:9>, 400000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3>*4, <Mekanism:TeleportationCore>,<ThermalExpansion:Glass>*4,<Creator:denseOsmiumPlate>*4]);

#Something else

#Superheating Element
recipes.remove(<Mekanism:BasicBlock2:5>);
recipes.addShaped(<Mekanism:BasicBlock2:5>,[[<minecraft:redstone>,<ore:ingotCopper>,<minecraft:redstone>],[<ore:ingotCopper>,<Creator:chamberOsmium>,<ore:ingotCopper>],[<minecraft:redstone>,<ore:ingotCopper>,<minecraft:redstone>]]);

#Induction Cell

#->Cell
recipes.remove(<Mekanism:BasicBlock2:3>);
AssemblyTable.addRecipe(<Mekanism:BasicBlock2:3>, 1400000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3>*4, <ThermalExpansion:Cell:4>*4,<ThermalExpansion:Glass>*4,<Creator:denseOsmiumPlate>*4,<Mekanism:EnergyTablet>*3, <Mekanism:OtherDust:4>*20]);

#->Provider
recipes.remove(<Mekanism:BasicBlock2:4>);
AssemblyTable.addRecipe(<Mekanism:BasicBlock2:4>, 70000, [<Creator:chamberOsmium>, <Mekanism:ControlCircuit:3>*4, <ThermalExpansion:material:2>*20,<ThermalExpansion:Glass>*4,<Creator:denseOsmiumPlate>*4]);

#Gas tank
recipes.remove(<Mekanism:GasTank>);
AssemblyTable.addRecipe(<Mekanism:GasTank>, 50000, [<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);
AssemblyTable.addRecipe(<Mekanism:GasTank>.withTag({tier:1 as byte}), 50000, [<Mekanism:GasTank>*2,<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);
AssemblyTable.addRecipe(<Mekanism:GasTank>.withTag({tier:2 as byte}), 50000, [<Mekanism:GasTank>.withTag({tier:1 as byte}) *2,<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);
AssemblyTable.addRecipe(<Mekanism:GasTank>.withTag({tier:3 as byte}), 50000, [<Mekanism:GasTank>.withTag({tier:2 as byte}) *2,<Creator:compactOsmiumPlate>*4, <minecraft:redstone>*4]);

#alloy
Infuser.removeRecipe(<Mekanism:EnrichedAlloy>);
Infuser.addRecipe("REDSTONE", 10, <Creator:itemAlloy:7>, <Mekanism:EnrichedAlloy>);

#teleportation core
recipes.remove(<Mekanism:TeleportationCore>);
recipes.addShaped(<Mekanism:TeleportationCore>, [[<Forestry:thermionicTubes:11>, <ore:alloyUltimate>, <Forestry:thermionicTubes:11>], [<Creator:itemAlloy:6>, <Creator:itemCrystal:2>, <Creator:itemAlloy:6>], [<Forestry:thermionicTubes:11>, <ore:alloyUltimate>, <Forestry:thermionicTubes:11>]]);

#Cable
recipes.remove(<Mekanism:PartTransmitter>);
recipes.remove(<Mekanism:PartTransmitter:1>);
recipes.remove(<Mekanism:PartTransmitter:2>);
recipes.remove(<Mekanism:PartTransmitter:3>);
recipes.addShaped(<Mekanism:PartTransmitter> * 8, [[<ore:plateElectricalSteel>, <zettaindustries:blockwire>, <ore:plateElectricalSteel>], [<ore:plateVibrantAlloy>, <zettaindustries:blockwire>, <ore:plateVibrantAlloy>], [<ore:plateDarkSteel>, <zettaindustries:blockwire>, <ore:plateDarkSteel>]]);
recipes.addShaped(<Mekanism:PartTransmitter:1> * 8, [[<Mekanism:PartTransmitter>, <Mekanism:PartTransmitter>, <Mekanism:PartTransmitter>], [<Mekanism:PartTransmitter>, <Railcraft:firestone.refined>.anyDamage().transformDamage(20), <Mekanism:PartTransmitter>], [<Mekanism:PartTransmitter>, <Mekanism:PartTransmitter>, <Mekanism:PartTransmitter>]]);
recipes.addShaped(<Mekanism:PartTransmitter:2> * 8, [[<Mekanism:PartTransmitter:1>, <Mekanism:PartTransmitter:1>, <Mekanism:PartTransmitter:1>], [<Mekanism:PartTransmitter:1>, <BuildCraft|Silicon:redstoneChipset:3>, <Mekanism:PartTransmitter:1>], [<Mekanism:PartTransmitter:1>, <Mekanism:PartTransmitter:1>, <Mekanism:PartTransmitter:1>]]);
recipes.addShaped(<Mekanism:PartTransmitter:3> * 8, [[<Mekanism:PartTransmitter:2>, <Mekanism:PartTransmitter:2>, <Mekanism:PartTransmitter:2>], [<Mekanism:PartTransmitter:2>, <Mekanism:TeleportationCore>, <Mekanism:PartTransmitter:2>], [<Mekanism:PartTransmitter:2>, <Mekanism:PartTransmitter:2>, <Mekanism:PartTransmitter:2>]]);

#Laser
recipes.remove(<Mekanism:MachineBlock2:14>);
recipes.addShaped(<Mekanism:MachineBlock2:14>, [[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],[<ore:ingotSteel>,<ThermalExpansion:Cell:4>,<minecraft:diamond>],[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>]]);

#FUCKING STEEL
Infuser.removeRecipe(<Mekanism:EnrichedIron:1>);
Infuser.removeRecipe(<Mekanism:OtherDust:1>);

#Those abandoned kids :-O
recipes.remove(<Mekanism:EnergyCube>);
recipes.remove(<Mekanism:MachineBlock:12>);
recipes.remove(<Mekanism:MachineBlock2:12>);
recipes.remove(<Mekanism:MachineBlock2:13>);
recipes.remove(<Mekanism:MachineBlock2:15>);
recipes.remove(<Mekanism:MachineBlock3:5>);

print("Initialized 'Mekanism.zs'");