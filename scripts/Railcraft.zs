#Name: Railcraft.zs
#Author: Si_hen

print("Initializing 'Railcraft.zs'...");

#add plates into OreDict
val plateIron = <ore:plateIron>;
val plateSteel = <ore:plateSteel>;
val plateCopper = <ore:plateCopper>;
val plateTin = <ore:plateTin>;
val plateLead = <ore:plateLead>;
plateIron.add(<Railcraft:part.plate:0>);
plateSteel.add(<Railcraft:part.plate:1>);
plateCopper.add(<Railcraft:part.plate:3>);
plateTin.add(<Railcraft:part.plate:2>);
plateLead.add(<Railcraft:part.plate:4>);

#plate
mods.railcraft.Rolling.removeRecipe(<Railcraft:part.plate:2>);
mods.railcraft.Rolling.addShaped(<Railcraft:part.plate:2>, [[<ore:ingotTin>, <ore:ingotTin>, null], 
                                                            [<ore:ingotTin>, <ore:ingotTin>, null],
                                                            [null, null, null]]);
recipes.addShaped(<Railcraft:part.plate:0>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShaped(<Railcraft:part.plate:1>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotSteel>], [<ore:ingotSteel>]]);
recipes.addShaped(<Railcraft:part.plate:3>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotCopper>], [<ore:ingotCopper>]]);
recipes.addShaped(<Railcraft:part.plate:2>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotTin>], [<ore:ingotTin>]]);
recipes.addShaped(<Railcraft:part.plate:4>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotLead>], [<ore:ingotLead>]]);

#CokeOven
recipes.remove(<Railcraft:machine.alpha:7>);
recipes.addShaped(<Railcraft:machine.alpha:7> * 2, [[<TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>], [<TConstruct:CraftedSoil:1>, <Railcraft:brick.sandy>, <TConstruct:CraftedSoil:1>], [<TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>, <TConstruct:CraftedSoil:1>]]);
recipes.removeShaped(<Railcraft:brick.sandy:2>, [[<minecraft:brick>, <ore:sand>], [<ore:sand>, <minecraft:brick>]]);
recipes.addShaped(<Railcraft:brick.sandy:2> * 4, [[<TConstruct:CraftedSoil:1>, <ExtraUtilities:cobblestone_compressed:14>], [<ExtraUtilities:cobblestone_compressed:14>, <TConstruct:CraftedSoil:1>]]);
mods.railcraft.CokeOven.addRecipe(<Railcraft:machine.alpha:7>, <liquid:water> * 100, <Railcraft:brick.sandy>, 5400);
mods.railcraft.RockCrusher.removeRecipe(<Railcraft:machine.alpha:7>);
mods.railcraft.CokeOven.removeRecipe(<ore:fuelCoke>);
mods.railcraft.CokeOven.removeRecipe(<ore:blockFuelCoke>);
mods.railcraft.CokeOven.removeRecipe(<minecraft:coal:1>);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <minecraft:log:*>, 400); 
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <minecraft:log2:*>, 400); 
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <Natura:tree:*>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <Natura:redwood:1>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <Natura:Rare Tree:*>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <Natura:willow>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <Natura:Dark Tree:*>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <BiomesOPlenty:logs1:*>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <BiomesOPlenty:logs2:*>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <BiomesOPlenty:logs3:*>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <BiomesOPlenty:logs4:*>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <Forestry:logs:*>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <Forestry:logsFireproof:*>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <harvestcraft:pamCinnamon>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <harvestcraft:pamMaple>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <harvestcraft:pamPaperbark>, 400);
mods.railcraft.CokeOven.addRecipe(<minecraft:coal:1>, <liquid:creosote> * 100, <Thaumcraft:blockMagicalLog:*>, 400);

#BlastFurnace
recipes.remove(<Railcraft:machine.alpha:12>);
recipes.addShaped(<Railcraft:machine.alpha:12> * 2, [[null, <TConstruct:materials:2>], [<TConstruct:materials:2>, <Railcraft:machine.alpha:7>, <TConstruct:materials:2>], [null, <TConstruct:materials:2>]]);
mods.railcraft.RockCrusher.removeRecipe(<Railcraft:machine.alpha:12>);
mods.railcraft.BlastFurnace.removeFuel(<Railcraft:fuel.coke>);
mods.railcraft.BlastFurnace.removeFuel(<Railcraft:cube>);
mods.railcraft.BlastFurnace.removeFuel(<Railcraft:firestone.refined:*>);
mods.railcraft.BlastFurnace.removeFuel(<Railcraft:firestone.cracked:*>);
mods.railcraft.BlastFurnace.addFuel(<minecraft:coal>);
mods.railcraft.BlastFurnace.addFuel(<minecraft:coal_block>);
mods.railcraft.BlastFurnace.addFuel(<zettaindustries:charcoalblock>);
mods.railcraft.BlastFurnace.removeRecipe(<ore:ingotSteel>);
mods.railcraft.BlastFurnace.removeRecipe(<ore:nuggetSteel>);
mods.railcraft.BlastFurnace.removeRecipe(<ore:blockSteel>);

#rock crusher
recipes.remove(<Railcraft:machine.alpha:15>);
recipes.remove(<Railcraft:borehead.iron>);
recipes.addShaped(<Railcraft:borehead.iron> * 2, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<Railcraft:machine.alpha:15> * 4, [[<minecraft:piston>, <Railcraft:borehead.iron>, <minecraft:piston>], [<minecraft:flint>, <minecraft:iron_block>, <minecraft:flint>], [<minecraft:piston>, <Railcraft:borehead.iron>, <minecraft:piston>]]);

#engines
recipes.remove(<Railcraft:machine.beta:9>);
recipes.remove(<Railcraft:machine.beta:8>);
recipes.remove(<Railcraft:machine.beta:7>);
<Railcraft:machine.beta:9>.addTooltip(format.red("This machine has no recipe now!"));
<Railcraft:machine.beta:8>.addTooltip(format.red("This machine has no recipe now!"));
<Railcraft:machine.beta:7>.addTooltip(format.red("This machine has no recipe now!"));

#rolling machine
recipes.remove(<Railcraft:machine.alpha:8>);
recipes.addShaped(<Railcraft:machine.alpha:8>, [[<Creator:IronHammer>, <ore:gearIron>, <Creator:IronHammer>], [<ore:gearIron>, <Forestry:thermionicTubes:1>, <ore:gearIron>], [<Creator:IronHammer>, <ore:gearIron>, <Creator:IronHammer>]]);

#steel gear
recipes.remove(<Railcraft:part.gear:2>);
recipes.addShaped(<Railcraft:part.gear:2>, [[null, <Railcraft:part.plate:1>, null], [<Railcraft:part.plate:1>, <ore:gearIron>, <Railcraft:part.plate:1>], [null, <Railcraft:part.plate:1>, null]]);

#remove wooden tie crafting
recipes.remove(<Railcraft:part.tie>);

#wooden tracks
recipes.remove(<Railcraft:part.rail:2>);
mods.railcraft.Rolling.addShapeless(<Railcraft:part.rail:2> * 6, [<Railcraft:part.tie>, <minecraft:iron_ingot>]);

#undercutter cart
recipes.remove(<Railcraft:cart.undercutter>);
recipes.addShaped(<Railcraft:cart.undercutter>, [[<ore:dyeYellow>, <minecraft:redstone_lamp>, <ore:dyeYellow>], [<ore:blockSteel>, <minecraft:diamond_pickaxe>, <IronChest:BlockIronChest>], [<StevesCarts:ModuleComponents:23>, <minecraft:minecart>, <StevesCarts:ModuleComponents:23>]]);

print("Initialized 'Railcraft.zs'");