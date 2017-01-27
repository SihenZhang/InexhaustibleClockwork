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

#tin electron tube
recipes.addShaped(<Forestry:thermionicTubes:1>, [[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], [<minecraft:redstone>, <TConstruct:buckets:3>.transformReplace(<minecraft:bucket>), <minecraft:redstone>], [<Railcraft:part.plate:3>, <minecraft:glass>, <Railcraft:part.plate:3>]]);

#engine
recipes.remove(<Forestry:engine:1>);
recipes.remove(<Forestry:engine:2>);
recipes.remove(<Forestry:engine:4>);
recipes.addShaped(<Forestry:engine:1>, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<Creator:IronHammer>.anyDamage().transformDamage(), <Forestry:thermionicTubes>, <Creator:IronWrench>.anyDamage().transformDamage()], [<ore:gearCopper>, <minecraft:piston>, <ore:gearCopper>]]);
recipes.addShaped(<Forestry:engine:2>, [[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>], [<Creator:IronHammer>.anyDamage().transformDamage(), <Forestry:thermionicTubes:2>, <Creator:IronWrench>.anyDamage().transformDamage()], [<ore:gearBronze>, <minecraft:piston>, <ore:gearBronze>]]);
recipes.addShaped(<Forestry:engine:4>, [[<ImmersiveEngineering:treatedWood:1>, <ImmersiveEngineering:treatedWood:1>, <ImmersiveEngineering:treatedWood:1>], [<Creator:IronHammer>.anyDamage().transformDamage(), <ore:blockGlass>, <Creator:IronWrench>.anyDamage().transformDamage()], [<ore:gearCopper>, <minecraft:piston>, <appliedenergistics2:tile.BlockCrank>]]);

#scented paneling
mods.forestry.Carpenter.removeRecipe(<Forestry:craftingMaterial:6>);
mods.forestry.Carpenter.addRecipe(<Forestry:craftingMaterial:6>, [[null, <Forestry:royalJelly>, null],
                                                                  [<Forestry:impregnatedCasing>, <Forestry:impregnatedCasing>, <Forestry:impregnatedCasing>], 
                                                                  [<Forestry:beeswax>, <Forestry:pollen>, <Forestry:beeswax>]], <liquid:for.honey> * 500, 200);

#therm fab
recipes.remove(<Forestry:factory2>);
recipes.addShaped(<Forestry:factory2>, [[<ore:ingotBronze>, <ore:blockGlassColorless>, <ore:ingotBronze>], [<ore:blockGlassColorless>, <Forestry:sturdyMachine>, <ore:blockGlassColorless>], [<ore:ingotBronze>, <IronChest:BlockIronChest:3>, <ore:ingotBronze>]]);

print("Initialized 'Forestry.zs'");