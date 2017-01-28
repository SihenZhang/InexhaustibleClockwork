#Name: ImmersiveEngineering.zs
#Author: Si_hen

import mods.nei.NEI;

print("Initializing 'ImmersiveEngineering.zs'...");

#add tooltip to manual
<ImmersiveEngineering:tool:3>.addTooltip(format.red("Some items in book may not reflect changed recipes. Refer to NEI!"));

#Coal Coke Fix
furnace.setFuel(<ImmersiveEngineering:stoneDecoration:3>, 32000);

#Mold Fix
recipes.remove(<ImmersiveEngineering:mold>);
recipes.addShaped(<ImmersiveEngineering:mold>, [[null, <ore:plateSteel>], [<ore:plateSteel>, null, <ore:plateSteel>], [null, <ore:plateSteel>]]);

#remove Gear Crafting
mods.immersiveengineering.MetalPress.removeRecipeByMold(<ImmersiveEngineering:mold:1>);

#remove plates from OreDict
val plateIron = <ore:plateIron>;
val plateCopper = <ore:plateCopper>;
val plateAluminum = <ore:plateAluminum>;
val plateLead = <ore:plateLead>;
val plateSilver = <ore:plateSilver>;
val plateNickel = <ore:plateNickel>;
val plateConstantan = <ore:plateConstantan>;
val plateElectrum = <ore:plateElectrum>;
val plateSteel = <ore:plateSteel>;
plateIron.remove(<ImmersiveEngineering:metal:30>);
plateCopper.remove(<ImmersiveEngineering:metal:31>);
plateAluminum.remove(<ImmersiveEngineering:metal:32>);
plateLead.remove(<ImmersiveEngineering:metal:33>);
plateSilver.remove(<ImmersiveEngineering:metal:34>);
plateNickel.remove(<ImmersiveEngineering:metal:35>);
plateConstantan.remove(<ImmersiveEngineering:metal:36>);
plateElectrum.remove(<ImmersiveEngineering:metal:37>);
plateSteel.remove(<ImmersiveEngineering:metal:38>);

#remove plates recipes 
recipes.removeShaped(<ImmersiveEngineering:metal:38>, [[<ore:ingotSteel>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ImmersiveEngineering:metal:36>, [[<ore:ingotConstantan>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ImmersiveEngineering:metal:33>, [[<ore:ingotLead>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ImmersiveEngineering:metal:32>, [[<ore:ingotAluminium>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ImmersiveEngineering:metal:30>, [[<ore:ingotIron>, <ImmersiveEngineering:tool>]]);
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:30>);
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:31>);
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:32>);
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:33>);
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:34>);
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:35>);
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:36>);
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:37>);
mods.immersiveengineering.MetalPress.removeRecipe(<ImmersiveEngineering:metal:38>);
#NEI.hide(<ImmersiveEngineering:metal:38>);
#NEI.hide(<ImmersiveEngineering:metal:37>);
#NEI.hide(<ImmersiveEngineering:metal:36>);
#NEI.hide(<ImmersiveEngineering:metal:35>);
#NEI.hide(<ImmersiveEngineering:metal:34>);
#NEI.hide(<ImmersiveEngineering:metal:33>);
#NEI.hide(<ImmersiveEngineering:metal:32>);
#NEI.hide(<ImmersiveEngineering:metal:31>);
#NEI.hide(<ImmersiveEngineering:metal:30>);
<ImmersiveEngineering:metal:38>.addTooltip(format.red("This item has no recipe now!"));
<ImmersiveEngineering:metal:37>.addTooltip(format.red("This item has no recipe at all!"));
<ImmersiveEngineering:metal:36>.addTooltip(format.red("This item has no recipe now!"));
<ImmersiveEngineering:metal:35>.addTooltip(format.red("This item has no recipe at all!"));
<ImmersiveEngineering:metal:34>.addTooltip(format.red("This item has no recipe at all!"));
<ImmersiveEngineering:metal:33>.addTooltip(format.red("This item has no recipe now!"));
<ImmersiveEngineering:metal:32>.addTooltip(format.red("This item has no recipe now!"));
<ImmersiveEngineering:metal:31>.addTooltip(format.red("This item has no recipe at all!"));
<ImmersiveEngineering:metal:30>.addTooltip(format.red("This item has no recipe now!"));

#remove dust recipes
recipes.removeShaped(<minecraft:dye:4>, [[<ore:oreLapis>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<minecraft:diamond>, [[<ore:oreDiamond>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<minecraft:redstone>, [[<ore:oreRedstone>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<minecraft:emerald>, [[<ore:oreEmerald>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<minecraft:quartz>, [[<ore:oreQuartz>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<minecraft:coal>, [[<ore:oreCoal>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<Forestry:apatite>, [[<ore:oreApatite>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<BigReactors:BRIngot:4>, [[<ore:oreYellorium>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:16>, [[<ore:oreSulfer>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:17>, [[<ore:oreSaltpeter>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<Railcraft:firestone.raw>, [[<ore:oreFirestone>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<harvestcraft:saltItem>, [[<ore:oreSalt>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<Magneticraft:item.dust:4>, [[<ore:oreTungsten>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<Magneticraft:item.dust:8>, [[<ore:oreThorium>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<appliedenergistics2:item.ItemMultiMaterial:2>, [[<ore:oreCertusQuartz>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:34>, [[<ore:oreSilver>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:33>, [[<ore:oreTin>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:32>, [[<ore:oreCopper>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<TConstruct:materials:38>, [[<ore:oreArdite>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:1>, [[<ore:oreGold>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:38>, [[<ore:oreMithril>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:36>, [[<ore:oreNickel>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:32>, [[<ore:oreCopper>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material>, [[<ore:oreIron>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<Magneticraft:item.dust:12>, [[<ore:oreZinc>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:37>, [[<ore:orePlatinum>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<ThermalFoundation:material:35>, [[<ore:oreLead>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<TConstruct:materials:40>, [[<ore:oreAluminum>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<Mekanism:Dust:2>, [[<ore:oreOsmium>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<TConstruct:materials:39>, [[<ore:oreCobalt>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<Thaumcraft:ItemResource:6>, [[<ore:oreAmber>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<BiomesOPlenty:gems:1>, [[<ore:oreRuby>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<BiomesOPlenty:gems:3>, [[<ore:oreTopaz>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<BiomesOPlenty:gems:2>, [[<ore:orePeridot>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<BiomesOPlenty:gems:4>, [[<ore:oreTanzanite>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<BiomesOPlenty:gems:5>, [[<ore:oreMalachite>, <ImmersiveEngineering:tool>]]);
recipes.removeShaped(<BiomesOPlenty:gems:6>, [[<ore:oreSapphire>, <ImmersiveEngineering:tool>]]);

#Graphite Electrode
vanilla.loot.removeChestLoot("ieVillageCrates", <ImmersiveEngineering:blueprint:2>);
vanilla.loot.removeChestLoot("strongholdLibrary", <ImmersiveEngineering:blueprint:2>);
vanilla.loot.removeChestLoot("villageBlacksmith", <ImmersiveEngineering:blueprint:2>);
mods.immersiveengineering.Squeezer.addRecipe(<ImmersiveEngineering:graphiteElectrode>, null, <ImmersiveEngineering:metal:20> * 6, 7200);

#mechanical component
recipes.remove(<ImmersiveEngineering:material:11>);
recipes.remove(<ImmersiveEngineering:material:12>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:material:11>, [[<ore:plateInvar>, null, <ore:plateInvar>],
                                                                       [null, <ore:plateCopper>, null], 
                                                                       [<ore:plateInvar>, null, <ore:plateInvar>]], <liquid:invar.molten> * 288, 20);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:material:12>, [[<ore:plateSteel>, null, <ore:plateSteel>],
                                                                       [null, <ore:plateInvar>, null], 
                                                                       [<ore:plateSteel>, null, <ore:plateSteel>]], <liquid:invar.molten> * 576, 20);
#wire and coil
recipes.remove(<ImmersiveEngineering:coil>);
recipes.remove(<ImmersiveEngineering:coil:1>);
recipes.remove(<ImmersiveEngineering:coil:2>);
recipes.remove(<ImmersiveEngineering:coil:4>);
recipes.addShaped (<ImmersiveEngineering:coil>*4, [[null,<Creator:wireCopper>,null],[<Creator:wireCopper>,<ore:stickWood>,<Creator:wireCopper>],[null,<Creator:wireCopper>,null]]);
#Gold, yes gold, not electrum or something
recipes.addShaped (<ImmersiveEngineering:coil:1>*4, [[null,<Creator:wireGold>,null],[<Creator:wireGold>,<ore:stickWood>,<Creator:wireGold>],[null,<Creator:wireGold>,null]]);
recipes.addShaped (<ImmersiveEngineering:coil:2>*4, [[null,<Creator:wireSteel>,null],[<Creator:wireAluminum>,<ore:stickWood>,<Creator:wireAluminum>],[null,<Creator:wireSteel>,null]]);
recipes.addShaped (<ImmersiveEngineering:coil:4>*4, [[null,<Creator:wireSteel>,null],[<Creator:wireSteel>,<ore:stickWood>,<Creator:wireSteel>],[null,<Creator:wireSteel>,null]]);

#capacitor
recipes.remove(<ImmersiveEngineering:metalDevice:1>);
recipes.remove(<ImmersiveEngineering:metalDevice:3>);
recipes.remove(<ImmersiveEngineering:metalDevice:7>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice:1>, [[<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>],
                                                                       [<ore:plateCopper>, <ore:ingotLead>, <ore:plateCopper>], 
                                                                       [<ore:plankTreatedWood>, <minecraft:redstone>, <ore:plankTreatedWood>]], <liquid:invar.molten> * 288, 200);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice:3>, [[<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>],
                                                                       [<ore:plateIron>, <ore:ingotLead>, <ore:plateIron>], 
                                                                       [<ore:plankTreatedWood>, <ore:blockRedstone>, <ore:plankTreatedWood>]], <liquid:invar.molten> * 288, 250);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice:7>, [[<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>],
                                                                       [<ore:plateGold>, <ore:blockLead>, <ore:plateGold>], 
                                                                       [<ore:plankTreatedWood>, <ore:blockRedstone>, <ore:plankTreatedWood>]], <liquid:invar.molten> * 288, 300);
#transformer
recipes.remove(<ImmersiveEngineering:metalDevice:4>); #l->m
recipes.remove(<ImmersiveEngineering:metalDevice:8>); #m->v
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice:4>, [[<ImmersiveEngineering:metalDevice>, null, <ImmersiveEngineering:metalDevice:2>],
                                                                       [<Creator:coilCopper>, <ImmersiveEngineering:storage:9>, <Creator:coilCopper>], 
                                                                       [<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>]], <liquid:invar.molten> * 288, 75);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice:8>, [[<ImmersiveEngineering:metalDevice:2>, null, <ImmersiveEngineering:metalDevice:6>],
                                                                       [<Creator:coilElectrum>, <ImmersiveEngineering:storage:10>, <Creator:coilAluminum>], 
                                                                       [<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>]], <liquid:invar.molten> * 288, 125);
#dynamo
#external heater
recipes.remove(<ImmersiveEngineering:metalDevice:9>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice:9>, [[<ore:plateInvar>,<OpenBlocks:wrench>,<ore:plateInvar>],
                                                                       [<ImmersiveEngineering:metalDevice>, <Creator:generatorACSP>, <ImmersiveEngineering:metalDevice>], 
                                                                       [<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>]], <liquid:invar.molten> * 288, 250);

#external heater
recipes.remove(<ImmersiveEngineering:metalDevice:12>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice:12>, [[<ore:plateInvar>, <ore:plateCopper>, <ore:plateInvar>],
                                                                       [<ore:plateCopper>, <ImmersiveEngineering:storage:8>, <ore:plateCopper>], 
                                                                       [<ore:plateInvar>, <ImmersiveEngineering:metalDevice:0>, <ore:plateInvar>]], <liquid:invar.molten> * 288, 125);
#item router
recipes.remove(<ImmersiveEngineering:metalDevice:13>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice:13>, [[<ore:plateInvar>, <minecraft:redstone>, <ore:plateInvar>],
                                                                       [<ore:plankTreatedWood>, <ImmersiveEngineering:material:11>, <ore:plankTreatedWood>], 
                                                                       [<ore:plateInvar>, <minecraft:redstone>, <ore:plateInvar>]], <liquid:invar.molten> * 144, 125);
#sample drill
recipes.remove(<ImmersiveEngineering:metalDevice:14>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice:14>, [[<ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:metalDevice>, <ImmersiveEngineering:metalDecoration:1>],
                                                                       [<Forestry:thermionicTubes:3>, <Creator:motorACSP>, <Forestry:thermionicTubes:3>], 
                                                                       [<ImmersiveEngineering:metalDecoration:7>, <Magneticraft:item.drill>, <ImmersiveEngineering:metalDecoration:7>]], <liquid:invar.molten> * 144, 200);
#iron pipe <- yes iron! 
recipes.remove(<ImmersiveEngineering:metalDevice2:5>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice2:5>, [[<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>],
                                                                       [<ore:plateIron>, null, <ore:plateIron>], 
                                                                       [<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>]], <liquid:invar.molten> * 144, 75);
#pump it
recipes.remove(<ImmersiveEngineering:metalDevice2:6>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice2:6>, [[<ore:plateInvar>, <Creator:generatorACSP>, <ore:plateInvar>],
                                                                       [<ore:plateInvar>, <ImmersiveEngineering:material:11>, <ore:plateInvar>], 
                                                                       [<ImmersiveEngineering:metalDevice2:5>, <ImmersiveEngineering:metalDevice2:5>, <ImmersiveEngineering:metalDevice2:5>]], <liquid:invar.molten> * 288, 150);
#metal barrel
recipes.remove(<ImmersiveEngineering:metalDevice2:7>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice2:7>, [[<ImmersiveEngineering:metalDecoration:10>, <ImmersiveEngineering:metalDecoration:10>, <ImmersiveEngineering:metalDecoration:10>],
                                                                       [<ImmersiveEngineering:metalDecoration:10>, null, <ImmersiveEngineering:metalDecoration:10>], 
                                                                       [<ImmersiveEngineering:metalDecoration:10>, <ImmersiveEngineering:metalDecoration:10>, <ImmersiveEngineering:metalDecoration:10>]], <liquid:invar.molten> * 288, 50);
#blast furnace
recipes.remove(<ImmersiveEngineering:metalDevice2:11>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDevice2:11>, [[<ImmersiveEngineering:metalDecoration:10>, null,null],
                                                                       [<ImmersiveEngineering:metalDecoration:10>, null, null], 
                                                                       [<ImmersiveEngineering:metalDevice:12>, <ImmersiveEngineering:metalDevice2:5>, null]], <liquid:invar.molten> * 288, 250);
#decroation blocks
recipes.remove(<ImmersiveEngineering:metalDecoration>);
recipes.remove(<ImmersiveEngineering:metalDecoration:3>);
recipes.remove(<ImmersiveEngineering:metalDecoration:1>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration>, [[<ImmersiveEngineering:material:15>, <ImmersiveEngineering:material:15>,<ImmersiveEngineering:material:15>],
                                                                       [<ImmersiveEngineering:material:15>, <ImmersiveEngineering:material:15>, <ImmersiveEngineering:material:15>], 
                                                                       [null ,null ,null]], <liquid:steel.molten> * 72, 30);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:3>*4, [[<ImmersiveEngineering:metalDecoration:1>, null,null],
                                                                       [<ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:metalDecoration:1>, null], 
                                                                       [<ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:metalDecoration:1>]], <liquid:steel.molten> * 72, 40);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:1>*6, [[<ore:plateSteel>, <ore:plateSteel>,<ore:plateSteel>],
                                                                       [null, <ImmersiveEngineering:metalDecoration:1>, null], 
                                                                       [<ImmersiveEngineering:metalDecoration:1>, null, <ImmersiveEngineering:metalDecoration:1>]], <liquid:steel.molten> * 72, 50);
recipes.remove(<ImmersiveEngineering:metalDecoration:12>);
recipes.remove(<ImmersiveEngineering:metalDecoration:13>);
recipes.remove(<ImmersiveEngineering:metalDecoration:15>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:12>, [[<ImmersiveEngineering:material:16>, <ImmersiveEngineering:material:16>,<ImmersiveEngineering:material:16>],
                                                                       [<ImmersiveEngineering:material:16>, <ImmersiveEngineering:material:16>, <ImmersiveEngineering:material:16>], 
                                                                       [null ,null ,null]], <liquid:aluminum.molten> * 72, 30);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:15>*4, [[<ImmersiveEngineering:metalDecoration:13>, null,null],
                                                                       [<ImmersiveEngineering:metalDecoration:13>, <ImmersiveEngineering:metalDecoration:13>, null], 
                                                                       [<ImmersiveEngineering:metalDecoration:13>, <ImmersiveEngineering:metalDecoration:13>, <ImmersiveEngineering:metalDecoration:13>]], <liquid:aluminum.molten> * 72, 40);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:13>*6, [[<ore:plateAluminum>, <ore:plateAluminum>,<ore:plateAluminum>],
                                                                       [null, <ImmersiveEngineering:metalDecoration:12>, null], 
                                                                       [<ImmersiveEngineering:metalDecoration:12>, null, <ImmersiveEngineering:metalDecoration:12>]], <liquid:aluminum.molten> * 72, 50);

#multiblock components
recipes.remove(<ImmersiveEngineering:metalDecoration:4>); #radiator
recipes.remove(<ImmersiveEngineering:metalDecoration:5>); #heavy
recipes.remove(<ImmersiveEngineering:metalDecoration:6>); #generator
recipes.remove(<ImmersiveEngineering:metalDecoration:7>); #light
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:4>*2, [[<ore:plateSteel>, <ore:plateCopper>,<ore:plateSteel>],
                                                                       [<ore:plateCopper>, <Magneticraft:heat_sink>, <ore:plateCopper>], 
                                                                       [<ore:plateSteel>, <ore:plateCopper>,<ore:plateSteel>]], <liquid:steel.molten> * 144, 80);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:5>*2, [[<ore:plateSteel>, <ImmersiveEngineering:material:12>,<ore:plateSteel>],
                                                                       [<minecraft:piston>, <ore:ingotInvar>,<minecraft:piston>], 
                                                                       [<ore:plateSteel> , <ImmersiveEngineering:material:12> ,<ore:plateSteel>]], <liquid:steel.molten> * 144, 80);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:6>*2, [[<ore:plateSteel>, <ore:plateSteel>,<ore:plateSteel>],
                                                                       [<ImmersiveEngineering:coil:1>, <Creator:generatorACSP>, <ImmersiveEngineering:coil:1>], 
                                                                       [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]], <liquid:steel.molten> * 72, 80);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:7>*2, [[<ore:plateInvar>, <ImmersiveEngineering:material:11>,<ore:plateInvar>], 
																			  [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], 
																			  [<ore:plateInvar>, <ImmersiveEngineering:material:11>, <ore:plateInvar>]], <liquid:invar.molten> * 144, 80);
#shit metal blocks
recipes.remove(<ImmersiveEngineering:metalDecoration:10>); 
recipes.remove(<ImmersiveEngineering:metalDecoration2>);
recipes.remove(<ImmersiveEngineering:metalDecoration2:1>);
recipes.remove(<ImmersiveEngineering:metalDecoration2:2>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration:10>*4, [[null, <ore:plateInvar>,null], 
																			  [<ore:plateInvar>, null, <ore:plateInvar>], 
																			  [null, <ore:plateInvar>, null]], <liquid:invar.molten> * 144, 80);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration2>*4, [[null, <ore:plateAluminum>,null], 
																			  [<ore:plateAluminum>, null, <ore:plateAluminum>], 
																			  [null, <ore:plateAluminum>, null]], <liquid:aluminum.molten> * 144, 80);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration2:1>*4, [[null, <ore:plateLead>,null], 
																			  [<ore:plateLead>, null, <ore:plateLead>], 
																			  [null, <ore:plateLead>, null]], <liquid:lead.molten> * 144, 80);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalDecoration2:2>*4, [[null, <ore:plateSteel>,null], 
																			  [<ore:plateSteel>, null, <ore:plateSteel>], 
																			  [null, <ore:plateSteel>, null]], <liquid:steel.molten> * 144, 80);
#ride the lightning!
recipes.remove(<ImmersiveEngineering:metalMultiblock>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalMultiblock>, [[<ore:plateSteel>, <ImmersiveEngineering:metalDecoration>,<ore:plateSteel>], 
																			  [<ImmersiveEngineering:storage:9>, <ImmersiveEngineering:metalDevice:7>, <ImmersiveEngineering:storage:9>], 
																			  [<ore:plateSteel>, <ImmersiveEngineering:storage:10>, <ore:plateSteel>]], <liquid:steel.molten> * 144, 150);
#squeezer and fermenter
recipes.remove(<ImmersiveEngineering:metalMultiblock:2>);
recipes.remove(<ImmersiveEngineering:metalMultiblock:3>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalMultiblock:2>*2, [[<Creator:compactInvarPlate>, <minecraft:piston>,<Creator:compactInvarPlate>], 
																			  [<ImmersiveEngineering:material:11>, <ore:dyeGreen>, <ImmersiveEngineering:material:11>], 
																			  [<Creator:compactInvarPlate>, <minecraft:piston>, <Creator:compactInvarPlate>]], <liquid:invar.molten> * 144, 150);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:metalMultiblock:3>*2, [[<Creator:compactInvarPlate>, <minecraft:glass_bottle>,<Creator:compactInvarPlate>], 
																			  [<ImmersiveEngineering:material:11>, <ore:dyeBlue>, <ImmersiveEngineering:material:11>], 
																			  [<Creator:compactInvarPlate>, <minecraft:glass_bottle>, <Creator:compactInvarPlate>]], <liquid:invar.molten> * 144, 150);
#we need to dig deeper
recipes.remove(<ImmersiveEngineering:drillhead>);
recipes.remove(<ImmersiveEngineering:drillhead:1>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:drillhead:1>, [[<ore:ingotIron>, <ore:ingotIron>,null], 
																			  [<ore:blockIron>, <ore:blockIron>, <ore:ingotIron>], 
																			  [<ore:ingotIron>, <ore:ingotIron>, null]], <liquid:iron.molten> * 576, 200);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:drillhead>, [[<ore:ingotSteel>, <ore:ingotSteel>,null], 
																			  [<ore:blockSteel>, <ore:blockSteel>, <ore:ingotSteel>], 
																			  [<ore:ingotSteel>, <ore:ingotSteel>, null]], <liquid:steel.molten> * 576, 200);
recipes.remove(<ImmersiveEngineering:drill>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:drill>, [[null, <ImmersiveEngineering:material:9>,null], 
																			  [<ore:plateSteel>, <ImmersiveEngineering:metalDecoration:5>, <ImmersiveEngineering:material:9>], 
																			  [<Magneticraft:item.drill>, <ore:plateSteel>, null]], <liquid:steel.molten> * 576, 350);
#FIRE BLAST!
recipes.remove(<ImmersiveEngineering:stoneDecoration:2>);
recipes.addShaped(<ImmersiveEngineering:stoneDecoration:2> *2,[[<TConstruct:materials:2>,<ore:ingotBrick>,<TConstruct:materials:2>],[<ore:ingotBrick>,<Railcraft:machine.alpha:12>,<ore:ingotBrick>],[<TConstruct:materials:2>,<ore:ingotBrick>,<TConstruct:materials:2>]]);

recipes.remove(<ImmersiveEngineering:stoneDecoration:6>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:stoneDecoration:6>, [[<ore:plateInvar>, null,null], 
																			  [null, null, null], 
																			  [null, null, null]], <liquid:invar.molten> * 288, 30,<ImmersiveEngineering:stoneDecoration:2>);
#integration

#wire and connector
val alloywire = <ProjRed|Transmission:projectred.transmission.wire>;
recipes.remove(<immersiveintegration:iiWireCoil>);
recipes.addShaped(<immersiveintegration:iiWireCoil>*4,[[null,alloywire,null],[alloywire,<ore:stickWood>,alloywire],[null,alloywire,null]]);
recipes.remove(<immersiveintegration:redstoneWireConnector>);
recipes.addShaped(<immersiveintegration:redstoneWireConnector>*8,[[<ore:blockRedstone>,alloywire,<ore:blockRedstone>],[null,<ore:ingotInvar>,null],[<ore:blockRedstone>,alloywire,<ore:blockRedstone>]]);

#industrial coke oven
recipes.remove(<immersiveintegration:steelDecoration>);
recipes.remove(<immersiveintegration:steelDecoration:1>);
recipes.remove(<immersiveintegration:steelDecoration:2>);
mods.forestry.Carpenter.addRecipe(<immersiveintegration:steelDecoration>, [[<ore:plateInvar>, <minecraft:bucket>,<ore:plateInvar>], 
																			  [<ImmersiveEngineering:material:11>, <minecraft:bucket>, <ImmersiveEngineering:material:11>], 
																			  [<ore:plateInvar>, <minecraft:bucket>, <ore:plateInvar>]], <liquid:invar.molten> * 72, 75);
mods.forestry.Carpenter.addRecipe(<immersiveintegration:steelDecoration:1>, [[<ore:plateInvar>, <minecraft:lava_bucket>,<ore:plateInvar>], 
																			  [<ImmersiveEngineering:material:11>, <minecraft:lava_bucket>, <ImmersiveEngineering:material:11>], 
																			  [<ore:plateInvar>, <minecraft:lava_bucket>, <ore:plateInvar>]], <liquid:invar.molten> * 72, 75);
mods.forestry.Carpenter.addRecipe(<immersiveintegration:steelDecoration:2>, [[<ore:plateInvar>, <minecraft:bucket>,<ore:plateInvar>], 
																			  [<ore:plateInvar>, <ImmersiveEngineering:material:11>, <ore:plateInvar>], 
																			  [<ore:plateInvar>, <minecraft:bucket>, <ore:plateInvar>]], <liquid:invar.molten> * 72, 75);
#ME wire
recipes.remove(<immersiveintegration:meTransformer>);
recipes.remove(<immersiveintegration:meDenseTransformer>);
mods.forestry.Carpenter.addRecipe(<immersiveintegration:meTransformer>, [[null, <immersiveintegration:meWireConnector>,null], 
																			  [<Creator:compactInvarPlate>, <immersiveintegration:aeDecoration>, <Creator:compactInvarPlate>], 
																			  [<Creator:compactInvarPlate>, <Creator:compactInvarPlate>, <Creator:compactInvarPlate>]], <liquid:invar.molten> * 288, 150);
mods.forestry.Carpenter.addRecipe(<immersiveintegration:meDenseTransformer>, [[null, <immersiveintegration:meDenseWireConnector>,null], 
																			  [<Creator:compactInvarPlate>, <immersiveintegration:aeDecoration>, <Creator:compactInvarPlate>], 
																			  [<Creator:compactInvarPlate>, <Creator:compactInvarPlate>, <Creator:compactInvarPlate>]], <liquid:invar.molten> * 288, 200);
#trapdoor
recipes.remove(<immersiveintegration:steelTrapdoor>);
mods.forestry.Carpenter.addRecipe(<immersiveintegration:steelTrapdoor>*2, [[<ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:metalDecoration:1>,<ImmersiveEngineering:metalDecoration:1>], 
																			  [<ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:metalDecoration:1>, <ImmersiveEngineering:metalDecoration:1>], 
																			  [null,null,null]], <liquid:steel.molten> * 72, 50);

#Those abandoned kids :(
recipes.remove(<ImmersiveEngineering:metalDevice:10>);

print("Initialized 'ImmersiveEngineering.zs'");