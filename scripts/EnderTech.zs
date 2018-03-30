#Name: EnderTech.zs
#Author: Prunoideae

import mods.buildcraft.AssemblyTable;
import mods.forestry.Carpenter;

print("Initializing 'EnderTech.zs'...");

#Machines

#Ender Tank
#arrrrrgh!!!!!!!!!!!!!!!!!!!!!!!!!!
recipes.remove(<EnderTech:endertech.enderTankPart>);
recipes.remove(<EnderTech:endertech.enderTankPart:6>);
recipes.remove(<EnderTech:endertech.enderTankPart:7>);

AssemblyTable.addRecipe(<EnderTech:endertech.enderTankPart>*8, 400000, [<Creator:chamberElectrum>, <ThermalFoundation:material:140>*4,<Creator:EnderiumPlate>*8,<minecraft:ender_eye>*4]);
AssemblyTable.addRecipe(<EnderTech:endertech.enderTankPart:6>*8, 400000, [<Creator:chamberElectrum>, <Mekanism:BasicBlock:11>*4,<Mekanism:MachineBlock2:11>.withTag({tier: 3 as byte}),<Creator:EnderiumPlate>*8,<minecraft:ender_eye>*4]);
AssemblyTable.addRecipe(<EnderTech:endertech.enderTankPart:7>*8, 400000, [<Creator:chamberElectrum>, <Creator:EnderiumPlate>*8,<minecraft:ender_eye>*4,<ThermalExpansion:capacitor:5>,<ThermalExpansion:material:1>*4]);

recipes.remove(<EnderTech:endertech.multiblockGlass>);
recipes.remove(<EnderTech:endertech.enderTankController>);
AssemblyTable.addRecipe(<EnderTech:endertech.enderTankController>, 400000, [<Creator:chamberElectrum>, <ThermalFoundation:material:140>*4,<Creator:EnderiumPlate>*8,<minecraft:ender_eye>*4,<ThermalExpansion:Frame:11>]);
AssemblyTable.addRecipe(<EnderTech:endertech.multiblockGlass>*16, 400000, [<Creator:chamberElectrum>, <ThermalExpansion:Glass>*4,<Creator:EnderiumPlate>*8,<minecraft:ender_eye>*4]);

#Charge Pad
recipes.remove(<EnderTech:chargePad:1>);
recipes.remove(<EnderTech:chargePad:2>);

Carpenter.addRecipe(<EnderTech:chargePad:1> , [[<Creator:compactElectrumPlate>, <ThermalExpansion:capacitor:4> , <Creator:compactElectrumPlate>],
                                                                      [<ThermalExpansion:material:1>, <Creator:chamberElectrum>, <ThermalExpansion:material:1>], 
                                                                      [<Creator:compactElectrumPlate>,<Mekanism:ControlCircuit:2>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 576, 300);
AssemblyTable.addRecipe(<EnderTech:chargePad:2>, 40000, [<EnderTech:chargePad:1>, <ThermalFoundation:material:140>*2,<ThermalExpansion:material:1>*4,<ThermalExpansion:capacitor:5>]);

#Health Pad
recipes.remove(<EnderTech:healthPad:1>);
recipes.remove(<EnderTech:healthPad:2>);
Carpenter.addRecipe(<EnderTech:healthPad:1> , [[<Creator:compactElectrumPlate>, <ThermalExpansion:capacitor:4> , <Creator:compactElectrumPlate>],
                                                                      [<minecraft:golden_apple>, <Creator:chamberElectrum>, <minecraft:golden_apple>], 
                                                                      [<Creator:compactElectrumPlate>,<Mekanism:ControlCircuit:2>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 576, 300);
AssemblyTable.addRecipe(<EnderTech:healthPad:2>, 40000, [<EnderTech:healthPad:1>, <ThermalFoundation:material:140>*4,<minecraft:golden_apple>*4,<ThermalExpansion:capacitor:5>]);


print("Initialized 'EnderTech.zs'");