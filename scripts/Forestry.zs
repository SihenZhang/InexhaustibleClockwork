#Name: Forestry.zs
#Author: Si_hen

print("Initializing 'Forestry.zs'...");

#casing
recipes.remove(<Forestry:sturdyMachine>);
recipes.addShaped(<Forestry:sturdyMachine>, [[<ore:plateBronze>, <ore:thermalexpansion:machineBronze>, <ore:plateBronze>], [<ore:thermalexpansion:machineBronze>, <Creator:IronWrench>.anyDamage().transformDamage(), <ore:thermalexpansion:machineBronze>], [<ore:plateBronze>, <ore:thermalexpansion:machineBronze>, <ore:plateBronze>]]);
mods.forestry.Carpenter.addRecipe(<Forestry:sturdyMachine>, [[null, <ore:plateBronze>, null],
                                                            [<ore:plateBronze>, null, <ore:plateBronze>], 
                                                            [null, <ore:plateBronze>, null]], <liquid:bronze.molten> * 576, 20);
mods.forestry.Carpenter.addRecipe(<Forestry:impregnatedCasing>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>],
                                                                 [<ore:logWood>, null, <ore:logWood>], 
                                                                 [<ore:logWood>, <ore:logWood>, <ore:logWood>]], <liquid:plantoil> * 250, 200);

#engine
recipes.remove(<Forestry:engine:1>);
recipes.remove(<Forestry:engine:2>);
recipes.remove(<Forestry:engine:4>);
recipes.addShaped(<Forestry:engine:1>, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<Creator:IronHammer>.anyDamage().transformDamage(), <Forestry:thermionicTubes>, <Creator:IronWrench>.anyDamage().transformDamage()], [<ore:gearCopper>, <minecraft:piston>, <ore:gearCopper>]]);
recipes.addShaped(<Forestry:engine:2>, [[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>], [<Creator:IronHammer>.anyDamage().transformDamage(), <Forestry:thermionicTubes:2>, <Creator:IronWrench>.anyDamage().transformDamage()], [<ore:gearBronze>, <minecraft:piston>, <ore:gearBronze>]]);
recipes.addShaped(<Forestry:engine:4>, [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], [<Creator:IronHammer>.anyDamage().transformDamage(), <ore:blockGlass>, <Creator:IronWrench>.anyDamage().transformDamage()], [<ore:gearCopper>, <minecraft:piston>, <appliedenergistics2:tile.BlockCrank>]]);

#Remove Bronze Tools
recipes.remove(<Forestry:bronzeShovel>);
recipes.remove(<Forestry:bronzePickaxe>);
recipes.remove(<Forestry:kitShovel>);
recipes.remove(<Forestry:kitPickaxe>);
mods.forestry.Carpenter.removeRecipe(<Forestry:kitShovel>);
mods.forestry.Carpenter.removeRecipe(<Forestry:kitPickaxe>);
<Forestry:brokenBronzePickaxe>.addTooltip(format.red("Can NOT Get This Item Now!"));
<Forestry:brokenBronzeShovel>.addTooltip(format.red("Can NOT Get This Item Now!"));
<Forestry:bronzePickaxe>.addTooltip(format.red("Can NOT Craft This Item Now!"));
<Forestry:bronzeShovel>.addTooltip(format.red("Can NOT Craft This Item Now!"));
<Forestry:kitShovel>.addTooltip(format.red("Can NOT Craft This Item Now!"));
<Forestry:kitPickaxe>.addTooltip(format.red("Can NOT Craft This Item Now!"));

#scented paneling
mods.forestry.Carpenter.removeRecipe(<Forestry:craftingMaterial:6>);
mods.forestry.Carpenter.addRecipe(<Forestry:craftingMaterial:6>, [[null, <Forestry:royalJelly>, null],
                                                                  [<Forestry:impregnatedCasing>, <Forestry:impregnatedCasing>, <Forestry:impregnatedCasing>], 
                                                                  [<Forestry:beeswax>, <Forestry:pollen>, <Forestry:beeswax>]], <liquid:for.honey> * 500, 200);

#carpenter
recipes.remove(<Forestry:factory:1>);
recipes.addShaped(<Forestry:factory:1>, [[<ore:plateBronze>, <Forestry:thermionicTubes:2>, <ore:plateBronze>], [<ore:plateBronze>, <Forestry:sturdyMachine>, <ore:plateBronze>], [<ore:plateBronze>, <Forestry:thermionicTubes:2>, <ore:plateBronze>]]);

#therm fab
recipes.remove(<Forestry:factory2>);
recipes.addShaped(<Forestry:factory2>, [[<ore:ingotBronze>, <ore:blockGlassColorless>, <ore:ingotBronze>], [<ore:blockGlassColorless>, <Forestry:sturdyMachine>, <ore:blockGlassColorless>], [<ore:ingotBronze>, <EnhancedInventories:improvedChest:1>.withTag({frameName: "frame.ore.bronze"}), <ore:ingotBronze>]]);

#squeezer
recipes.remove(<Forestry:factory:5>);
recipes.addShaped(<Forestry:factory:5>, [[<ore:plateTin>, <Forestry:thermionicTubes:1>, <ore:plateTin>], [<ore:plateTin>, <Forestry:sturdyMachine>, <ore:plateTin>], [<ore:plateTin>, <Forestry:thermionicTubes:1>, <ore:plateTin>]]);

#scoop
recipes.remove(<Forestry:scoop>);
recipes.addShaped(<Forestry:scoop>, [[<Forestry:oakStick>, <ore:blockWool>, <Forestry:oakStick>], [<Forestry:oakStick>, <Forestry:oakStick>, <Forestry:oakStick>], [null, <Forestry:oakStick>]]);

print("Initialized 'Forestry.zs'");