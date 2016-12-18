#Name: ImmersiveEngineering.zs
#Author: Si_hen

import mods.nei.NEI;

print("Initializing 'ImmersiveEngineering.zs'...");

#add tooltip to manual
<ImmersiveEngineering:tool:3>.addTooltip(format.red("Some items in book may not reflect changed recipes. Refer to NEI!"));

#Coal Coke Fix
#furnace.setFuel(<ImmersiveEngineering:stoneDecoration:3>, 32000);

#Mold Fix
#recipes.remove(<ImmersiveEngineering:mold>);
#recipes.addShaped(<ImmersiveEngineering:mold>, [[null, <ore:plateSteel>], [<ore:plateSteel>, null, <ore:plateSteel>], [null, <ore:plateSteel>]]);

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
NEI.hide(<ImmersiveEngineering:metal:38>);
NEI.hide(<ImmersiveEngineering:metal:37>);
NEI.hide(<ImmersiveEngineering:metal:36>);
NEI.hide(<ImmersiveEngineering:metal:35>);
NEI.hide(<ImmersiveEngineering:metal:34>);
NEI.hide(<ImmersiveEngineering:metal:33>);
NEI.hide(<ImmersiveEngineering:metal:32>);
NEI.hide(<ImmersiveEngineering:metal:31>);
NEI.hide(<ImmersiveEngineering:metal:30>);
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
mods.immersiveengineering.Squeezer.addRecipe(<ImmersiveEngineering:graphiteElectrode>.withTag({graphDmg: 57600}), null, <ImmersiveEngineering:metal:20> * 6, 7200);

#mechanical component
recipes.remove(<ImmersiveEngineering:material:11>);
recipes.remove(<ImmersiveEngineering:material:12>);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:material:11>, [[<ore:plateInvar>, null, <ore:plateInvar>],
                                                                       [null, <ore:plateCopper>, null], 
                                                                       [<ore:plateInvar>, null, <ore:plateInvar>]], <liquid:invar.molten> * 288, 20);
mods.forestry.Carpenter.addRecipe(<ImmersiveEngineering:material:12>, [[<ore:plateSteel>, null, <ore:plateSteel>],
                                                                       [null, <ore:plateInvar>, null], 
                                                                       [<ore:plateSteel>, null, <ore:plateSteel>]], <liquid:invar.molten> * 576, 20);

print("Initialized 'ImmersiveEngineering.zs'");