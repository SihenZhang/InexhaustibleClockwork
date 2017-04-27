#Name: OpenComputers.zs
#Author: Si_hen

print("Initializing 'OpenComputers.zs'...");

#adaptor
recipes.remove(<OpenComputers:adapter>);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:adapter>, 20000, [<Creator:compactSteelPlate> * 4, <OpenComputers:cable> * 3, <OpenComputers:item:24>, <OpenComputers:item:32>, <Mekanism:ControlCircuit:2>]);

#assembler
recipes.remove(<OpenComputers:assembler>);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:assembler>, 100000, [<Creator:compactSteelPlate> * 4, <BuildCraft|Silicon:laserTableBlock:1>, <Magneticraft:inserter> * 2, <OpenComputers:item:25>, <OpenComputers:item:32>, <Mekanism:ControlCircuit:2>]);

#cable
recipes.remove(<OpenComputers:cable>);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:cable> * 4, 500, [<Creator:wireAluminum> * 4, <minecraft:wool:*>, <minecraft:redstone> * 2]);

#capacitor
recipes.remove(<OpenComputers:capacitor>);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:capacitor>, 20000, [<Creator:compactSteelPlate> * 4, <ThermalExpansion:capacitor:2>, <minecraft:gold_nugget> * 2, <OpenComputers:item:23>, <OpenComputers:item:32>, <Mekanism:ControlCircuit:2>]);

#case
recipes.remove(<OpenComputers:case1>);
recipes.remove(<OpenComputers:case2>);
recipes.remove(<OpenComputers:case3>);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:case1>, 200000, [<Creator:compactSteelPlate> * 4, <StevesCarts:ModuleComponents:22>, <Creator:chamberElectrum>, <EnhancedInventories:improvedChest:1>.withTag({frameName: "frame.mc.iron"}), <OpenComputers:item:24>, <OpenComputers:item:32>, <Mekanism:ControlCircuit:2>]);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:case2>, 300000, [<Creator:compactGoldPlate> * 4, <StevesCarts:ModuleComponents:47>, <OpenComputers:case1>, <OpenComputers:item:25> * 3, <OpenComputers:item:32>, <Mekanism:ControlCircuit:2>]);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:case3>, 500000, [<Creator:PlatinumPlate>, <StevesCarts:ModuleComponents:49>, <BuildCraft|Silicon:redstoneChipset:3> * 2, <OpenComputers:case2>, <OpenComputers:item:26> * 3, <OpenComputers:item:32>, <Mekanism:ControlCircuit:2> * 2]);

#charger
recipes.remove(<OpenComputers:charger>);
mods.buildcraft.AssemblyTable.addRecipe(<OpenComputers:charger>, 50000, [<Creator:compactSteelPlate> * 4, <Creator:compactGoldPlate> * 4, <OpenComputers:capacitor> * 2, <OpenComputers:item:25>, <OpenComputers:item:32>, <Mekanism:ControlCircuit:2>]);

print("Initialized 'OpenComputers.zs'");