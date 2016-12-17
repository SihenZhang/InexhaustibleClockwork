#Name: IronChests.zs
#Author: Si_hen

print("Initializing 'IronChests.zs'...");

#upgrades
recipes.remove(<IronChest:diamondObsidianUpgrade>);
recipes.remove(<IronChest:diamondCrystalUpgrade>);
recipes.remove(<IronChest:goldDiamondUpgrade>);
recipes.remove(<IronChest:silverGoldUpgrade>);
recipes.remove(<IronChest:ironGoldUpgrade>);
recipes.remove(<IronChest:copperSilverUpgrade>);
recipes.remove(<IronChest:copperIronUpgrade>);
recipes.remove(<IronChest:woodIronUpgrade>);
recipes.remove(<IronChest:woodCopperUpgrade>);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:woodIronUpgrade>, 10000, [<ore:plankWood>, <Railcraft:part.plate> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:woodCopperUpgrade>, 5000, [<ore:plankWood>, <Railcraft:part.plate:3> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:copperIronUpgrade>, 10000, [<Railcraft:part.plate:3>, <Railcraft:part.plate> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:copperSilverUpgrade>, 20000, [<Railcraft:part.plate:3>, <Creator:SilverPlate> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:ironGoldUpgrade>, 40000, [<Railcraft:part.plate>, <Creator:GoldPlate> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:silverGoldUpgrade>, 40000, [<Creator:SilverPlate>, <Creator:GoldPlate> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:goldDiamondUpgrade>, 80000, [<Creator:GoldPlate>, <minecraft:diamond> * 2, <minecraft:glass> * 6]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:diamondCrystalUpgrade>, 80000, [<minecraft:diamond>, <minecraft:glass> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:diamondObsidianUpgrade>, 80000, [<minecraft:diamond>, <Creator:ObsidianPlate> * 8]);



#chests
recipes.remove(<IronChest:BlockIronChest>);
recipes.remove(<IronChest:BlockIronChest:1>);
recipes.remove(<IronChest:BlockIronChest:2>);
recipes.remove(<IronChest:BlockIronChest:3>);
recipes.remove(<IronChest:BlockIronChest:4>);
recipes.remove(<IronChest:BlockIronChest:5>);
recipes.remove(<IronChest:BlockIronChest:6>);
mods.railcraft.Rolling.addShaped(<IronChest:BlockIronChest>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
                                                              [<ore:plateIron>, <minecraft:chest>, <ore:plateIron>],
                                                              [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
mods.railcraft.Rolling.addShaped(<IronChest:BlockIronChest:1>, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], 
                                                                [<ore:plateGold>, <IronChest:BlockIronChest>, <ore:plateGold>],
                                                                [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);
mods.railcraft.Rolling.addShaped(<IronChest:BlockIronChest:2>, [[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], 
                                                                [<minecraft:diamond>, <IronChest:BlockIronChest:1>, <minecraft:diamond>],
                                                                [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]]);
mods.railcraft.Rolling.addShaped(<IronChest:BlockIronChest:3>, [[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], 
                                                                [<ore:plateCopper>, <minecraft:chest>, <ore:plateCopper>],
                                                                [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);
mods.railcraft.Rolling.addShaped(<IronChest:BlockIronChest:4>, [[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
                                                                [<ore:plateSilver>, <IronChest:BlockIronChest:3>, <ore:plateSilver>],
                                                                [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]]);
mods.railcraft.Rolling.addShaped(<IronChest:BlockIronChest:4>, [[<ore:plateSilver>, <minecraft:glass>, <ore:plateSilver>], 
                                                                [<minecraft:glass>, <IronChest:BlockIronChest>, <minecraft:glass>],
                                                                [<ore:plateSilver>, <minecraft:glass>, <ore:plateSilver>]]);
mods.railcraft.Rolling.addShaped(<IronChest:BlockIronChest:5>, [[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], 
                                                                [<minecraft:glass>, <IronChest:BlockIronChest:2>, <minecraft:glass>],
                                                                [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]]);
mods.railcraft.Rolling.addShaped(<IronChest:BlockIronChest:6>, [[<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>], 
                                                                [<ore:plateObsidian>, <IronChest:BlockIronChest:2>, <ore:plateObsidian>],
                                                                [<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]]);

print("Initialized 'IronChests.zs'");