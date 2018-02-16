#Name: Railcraft.zs
#Author: Si_hen

import mods.MTUtils.Utils;

print("Initializing 'Railcraft.zs'...");

#add something into OreDict
<ore:plateIron>.add(<Railcraft:part.plate:0>);
<ore:plateSteel>.add(<Railcraft:part.plate:1>);
<ore:plateCopper>.add(<Railcraft:part.plate:3>);
<ore:plateTin>.add(<Railcraft:part.plate:2>);
<ore:plateLead>.add(<Railcraft:part.plate:4>);
<ore:gearSteel>.add(<Railcraft:part.gear:2>);

#plate
mods.railcraft.Rolling.removeRecipe(<Railcraft:part.plate:2>);
mods.railcraft.Rolling.addShaped(<Railcraft:part.plate:2> * 4, [[<ore:ingotTin>, <ore:ingotTin>, null], 
                                                                [<ore:ingotTin>, <ore:ingotTin>, null],
                                                                [null, null, null]]);
recipes.addShaped(<Railcraft:part.plate:0>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShaped(<Railcraft:part.plate:1>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotSteel>], [<ore:ingotSteel>]]);
recipes.addShaped(<Railcraft:part.plate:3>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotCopper>], [<ore:ingotCopper>]]);
recipes.addShaped(<Railcraft:part.plate:2>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotTin>], [<ore:ingotTin>]]);
recipes.addShaped(<Railcraft:part.plate:4>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotLead>], [<ore:ingotLead>]]);

#CokeOven
Utils.setHarvestLevel(<Railcraft:machine.alpha:7>, null, 0);
recipes.remove(<Railcraft:machine.alpha:7>);
recipes.addShaped(<Railcraft:machine.alpha:7> * 2, [[<TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>], [<TConstruct:CraftedSoil:1>, <Railcraft:brick.sandy>, <TConstruct:CraftedSoil:1>], [<TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>]]);
recipes.removeShaped(<Railcraft:brick.sandy:2>, [[<minecraft:brick>, <ore:sand>], [<ore:sand>, <minecraft:brick>]]);
recipes.addShaped(<Railcraft:brick.sandy:2> * 4, [[<TConstruct:CraftedSoil:1>, <ExtraUtilities:cobblestone_compressed:14>], [<ExtraUtilities:cobblestone_compressed:14>, <TConstruct:CraftedSoil:1>]]);
mods.railcraft.CokeOven.addRecipe(<Railcraft:machine.alpha:7>, <liquid:water> * 125, <Railcraft:brick.sandy>, 3600);
mods.railcraft.RockCrusher.removeRecipe(<Railcraft:machine.alpha:7>);
mods.railcraft.CokeOven.removeRecipe(<ore:fuelCoke>);
mods.railcraft.CokeOven.removeRecipe(<ore:blockFuelCoke>);
mods.railcraft.CokeOven.removeRecipe(<minecraft:coal:1>);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <minecraft:log:*>, 600); 
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <minecraft:log2:*>, 600); 
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <Natura:tree:*>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <Natura:redwood:1>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <Natura:Rare Tree:*>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <Natura:willow>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <Natura:Dark Tree:*>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <BiomesOPlenty:logs1:*>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <BiomesOPlenty:logs2:*>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <BiomesOPlenty:logs3:*>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <BiomesOPlenty:logs4:*>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <Forestry:logs:*>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <Forestry:logsFireproof:*>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <harvestcraft:pamCinnamon>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <harvestcraft:pamMaple>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <harvestcraft:pamPaperbark>, 600);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 125, <Thaumcraft:blockMagicalLog:*>, 600);

#BlastFurnace
Utils.setHarvestLevel(<Railcraft:machine.alpha:12>, null, 0);
recipes.remove(<Railcraft:machine.alpha:12>);
recipes.addShaped(<Railcraft:machine.alpha:12> * 2, [[null, <TConstruct:materials:2>], [<TConstruct:materials:2>, <Railcraft:machine.alpha:7>, <TConstruct:materials:2>], [null, <TConstruct:materials:2>]]);
mods.railcraft.RockCrusher.removeRecipe(<Railcraft:machine.alpha:12>);
mods.railcraft.BlastFurnace.removeFuel(<Railcraft:fuel.coke>);
mods.railcraft.BlastFurnace.removeFuel(<Railcraft:cube>);
mods.railcraft.BlastFurnace.removeFuel(<Railcraft:firestone.refined:*>);
mods.railcraft.BlastFurnace.removeFuel(<Railcraft:firestone.cracked:*>);
mods.railcraft.BlastFurnace.addFuel(<minecraft:coal>);
mods.railcraft.BlastFurnace.addFuel(<minecraft:coal_block>);
mods.railcraft.BlastFurnace.removeRecipe(<ore:ingotSteel>);
mods.railcraft.BlastFurnace.removeRecipe(<ore:nuggetSteel>);
mods.railcraft.BlastFurnace.removeRecipe(<ore:blockSteel>);

#rock crusher
Utils.setHarvestLevel(<Railcraft:machine.alpha:15>, null, 0);
recipes.remove(<Railcraft:machine.alpha:15>);
recipes.remove(<Railcraft:borehead.iron>);
recipes.addShaped(<Railcraft:borehead.iron> * 2, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<Railcraft:machine.alpha:15> * 4, [[<minecraft:piston>, <Railcraft:borehead.iron>, <minecraft:piston>], [<minecraft:flint>, <minecraft:iron_block>, <minecraft:flint>], [<minecraft:piston>, <Railcraft:borehead.iron>, <minecraft:piston>]]);

#engines
#recipes.remove(<Railcraft:machine.beta:9>);
#recipes.remove(<Railcraft:machine.beta:8>);
recipes.remove(<Railcraft:machine.beta:7>);
mods.forestry.Carpenter.addRecipe(<Railcraft:machine.beta:7>, [[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
                                                               [null, <Forestry:chipsets:1>, null],
															   [<ore:ingotAluminiumBrass>, <BuildCraft|Core:engineBlock:1>, <ore:ingotAluminiumBrass>]], <liquid:aluminumbrass.molten> * 576, 40);

#rolling machine
Utils.setHarvestLevel(<Railcraft:machine.alpha:8>, null, 0);
recipes.remove(<Railcraft:machine.alpha:8>);
recipes.addShaped(<Railcraft:machine.alpha:8>, [[<Creator:IronHammer>, <ore:gearIron>, <Creator:IronHammer>], [<ore:gearIron>, <BuildCraft|Factory:autoWorkbenchBlock>, <ore:gearIron>], [<Creator:IronHammer>, <ore:gearIron>, <Creator:IronHammer>]]);

#anchor
recipes.remove(<Railcraft:machine.alpha>);
recipes.remove(<Railcraft:machine.alpha:2>);
recipes.remove(<Railcraft:machine.alpha:13>);
recipes.addShaped(<Railcraft:machine.alpha>, [[<ore:ingotVibrantAlloy>, <ore:itemPulsatingCrystal>, <ore:ingotVibrantAlloy>], [<ore:gemDiamond>, <minecraft:dragon_egg>.transformReplace(<minecraft:dragon_egg>), <ore:gemDiamond>], [<ore:ingotVibrantAlloy>, <ore:itemPulsatingCrystal>, <ore:ingotVibrantAlloy>]]);
recipes.addShaped(<Railcraft:machine.alpha:2>, [[<ore:ingotVibrantAlloy>, <ore:itemPulsatingCrystal>, <ore:ingotVibrantAlloy>], [<ore:gemEmerald>, <minecraft:dragon_egg>.transformReplace(<minecraft:dragon_egg>), <ore:gemEmerald>], [<ore:ingotVibrantAlloy>, <ore:itemPulsatingCrystal>, <ore:ingotVibrantAlloy>]]);
recipes.addShaped(<Railcraft:machine.alpha:13>, [[<ore:ingotVibrantAlloy>, <ore:itemPulsatingCrystal>, <ore:ingotVibrantAlloy>], [<ore:dyeCyan>, <minecraft:dragon_egg>.transformReplace(<minecraft:dragon_egg>), <ore:dyeCyan>], [<ore:ingotVibrantAlloy>, <ore:itemPulsatingCrystal>, <ore:ingotVibrantAlloy>]]);

#remove wooden tie crafting
recipes.remove(<Railcraft:part.tie>);

#wooden tracks
recipes.remove(<Railcraft:part.rail:2>);
mods.railcraft.Rolling.addShapeless(<Railcraft:part.rail:2> * 6, [<Railcraft:part.tie>, <minecraft:iron_ingot>]);

#undercutter cart
recipes.remove(<Railcraft:cart.undercutter>);
recipes.addShaped(<Railcraft:cart.undercutter>, [[<ore:dyeYellow>, <minecraft:redstone_lamp>, <ore:dyeYellow>], [<ore:blockSteel>, <minecraft:diamond_pickaxe>, <EnhancedInventories:improvedChest:1>.withTag({frameName: "frame.mc.iron"})], [<StevesCarts:ModuleComponents:23>, <minecraft:minecart>, <StevesCarts:ModuleComponents:23>]]);

print("Initialized 'Railcraft.zs'");