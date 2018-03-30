#Name: EnderStorage.zs
#Author: Si_hen

import mods.buildcraft.AssemblyTable;

print("Initializing 'EnderStorage.zs'...");

#enderchest
recipes.remove(<EnderStorage:enderChest:*>);
AssemblyTable.addRecipe(<EnderStorage:enderChest>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:273>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:1>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:546>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:2>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:819>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:3>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:1092>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:4>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:1365>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:5>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:1638>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:6>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:1911>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:7>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:2184>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:8>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:2457>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:9>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:2730>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:10>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:3003>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:11>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:3276>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:12>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:3549>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:13>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:3822>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:14>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:4095>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:15>, <EnhancedInventories:improvedChest:2>.withTag({frameName: "frame.mc.obsidian"}) * 3, <EnderTech:endertech.enderTankPart>]);

#endertank
recipes.remove(<EnderStorage:enderChest:4096>);
AssemblyTable.addRecipe(<EnderStorage:enderChest:4096>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:4369>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:1>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:4642>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:2>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:4915>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:3>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:5188>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:4>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:5461>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:5>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:5734>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:6>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:6007>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:7>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:6280>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:8>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:6553>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:9>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:6826>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:10>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:7099>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:11>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:7372>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:12>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:7645>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:13>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:7918>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:14>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);
AssemblyTable.addRecipe(<EnderStorage:enderChest:8191>, 100000, [<Railcraft:cube:4> * 4, <ExtraUtilities:decorativeBlock1:1> * 2, <minecraft:wool:15>, <Mekanism:MachineBlock2:11>.withTag({tier: 3}) * 3, <EnderTech:endertech.enderTankPart>]);

print("Initialized 'EnderStorage.zs'");