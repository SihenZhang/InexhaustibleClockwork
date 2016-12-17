#Name: ExtraUtilities.zs
#Author: Si_hen

print("Initializing 'ExtraUtilities.zs'...");

#remove some generators
recipes.remove(<ExtraUtilities:generator.64:10>);
<ExtraUtilities:generator.64:10>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:9>);
<ExtraUtilities:generator.64:9>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:8>);
<ExtraUtilities:generator.64:8>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:7>);
<ExtraUtilities:generator.64:7>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:6>);
<ExtraUtilities:generator.64:6>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:5>);
<ExtraUtilities:generator.64:5>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:4>);
<ExtraUtilities:generator.64:4>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:3>);
<ExtraUtilities:generator.64:3>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:2>);
<ExtraUtilities:generator.64:2>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:1>);
<ExtraUtilities:generator.64:1>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64>);
<ExtraUtilities:generator.64>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:10>);
<ExtraUtilities:generator.8:10>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:9>);
<ExtraUtilities:generator.8:9>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:8>);
<ExtraUtilities:generator.8:8>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:7>);
<ExtraUtilities:generator.8:7>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:6>);
<ExtraUtilities:generator.8:6>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:5>);
<ExtraUtilities:generator.8:5>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:4>);
<ExtraUtilities:generator.8:4>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:3>);
<ExtraUtilities:generator.8:3>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:2>);
<ExtraUtilities:generator.8:2>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:1>);
<ExtraUtilities:generator.8:1>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8>);
<ExtraUtilities:generator.8>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:10>);
<ExtraUtilities:generator:10>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:9>);
<ExtraUtilities:generator:9>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:8>);
<ExtraUtilities:generator:8>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:7>);
<ExtraUtilities:generator:7>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:6>);
<ExtraUtilities:generator:6>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:4>);
<ExtraUtilities:generator:4>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:3>);
<ExtraUtilities:generator:3>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:2>);
<ExtraUtilities:generator:2>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:1>);
<ExtraUtilities:generator:1>.addTooltip(format.red("This machine has no recipe now!"));

#custom generators
recipes.remove(<ExtraUtilities:generator:5>);
recipes.remove(<ExtraUtilities:generator>);
recipes.addShaped(<ExtraUtilities:generator:5>, [[<harvestcraft:firmtofuItem>, <harvestcraft:firmtofuItem>, <harvestcraft:firmtofuItem>], [<minecraft:furnace>, <minecraft:piston>, <minecraft:furnace>], [<ore:dustRedstone>, <ore:gearIron>, <ore:dustRedstone>]]);
recipes.addShaped(<ExtraUtilities:generator>, [[<ore:blockCoal>, <BuildCraft|Core:engineBlock:1>, <ore:blockCoal>], [<BuildCraft|Core:engineBlock:1>, <Forestry:sturdyMachine>, <BuildCraft|Core:engineBlock:1>], [<ore:dustRedstone>, <BuildCraft|Core:engineBlock:1>, <ore:dustRedstone>]]);

#remove deep dark portal
recipes.remove(<ExtraUtilities:dark_portal>);
<ExtraUtilities:dark_portal>.addTooltip(format.red("You can NOT to go to the Deep Dark now!"));

#remove enderthermic pump
recipes.remove(<ExtraUtilities:enderThermicPump>);
<ExtraUtilities:enderThermicPump>.addTooltip(format.red("Please use BC Pump instead!"));

#remove ender quarry
recipes.remove(<ExtraUtilities:enderQuarry>);
<ExtraUtilities:enderQuarry>.addTooltip(format.red("Please use BC Quarry instead!"));

#remove transfer node(energy)


#drum
recipes.remove(<ExtraUtilities:drum>);
recipes.addShaped(<ExtraUtilities:drum>, [[<ore:ingotSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:cauldron>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:ingotSteel>]]);

#watering Can
recipes.remove(<ExtraUtilities:watering_can:1>);
recipes.remove(<ExtraUtilities:watering_can:3>);
recipes.addShaped(<ExtraUtilities:watering_can:1>, [[<ore:ingotSteel>, <minecraft:dye:15>, <harvestcraft:beetseedItem>],  [<ore:ingotSteel>, <minecraft:bowl>, <ore:ingotSteel>], [<harvestcraft:kiwiseedItem>, <ore:ingotSteel>, <harvestcraft:cornseedItem>]]);

#angel rings
recipes.remove(<ExtraUtilities:angelRing>);
<ExtraUtilities:angelRing>.addTooltip(format.red("Sorry, but you can NOT fly like an angel!"));
recipes.remove(<ExtraUtilities:angelRing:1>);
<ExtraUtilities:angelRing:1>.addTooltip(format.red("Sorry, but you can NOT fly like an angel!"));
recipes.remove(<ExtraUtilities:angelRing:2>);
<ExtraUtilities:angelRing:2>.addTooltip(format.red("Sorry, but you can NOT fly like an angel!"));
recipes.remove(<ExtraUtilities:angelRing:3>);
<ExtraUtilities:angelRing:3>.addTooltip(format.red("Sorry, but you can NOT fly like an angel!"));
recipes.remove(<ExtraUtilities:angelRing:4>);
<ExtraUtilities:angelRing:4>.addTooltip(format.red("Sorry, but you can NOT fly like an angel!"));

#remove peachful mode to craft nether star
recipes.removeShaped(<minecraft:nether_star>, [[<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>], [<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>], [<minecraft:diamond_sword>, <minecraft:soul_sand>, <minecraft:bow>]]);

#world interaction upgrade
recipes.remove(<ExtraUtilities:nodeUpgrade:2>);
recipes.addShaped(<ExtraUtilities:nodeUpgrade:2>, [[<minecraft:dye:4>, <ore:ingotIron>, <minecraft:dye:4>], [<ore:ingotIron>, <minecraft:diamond_pickaxe>, <ore:ingotIron>], [<minecraft:dye:4>, <ore:ingotIron>, <minecraft:dye:4>]]);

#spikes
recipes.remove(<ExtraUtilities:spike_base_gold>);
recipes.remove(<ExtraUtilities:spike_base_diamond>);
recipes.remove(<ExtraUtilities:spike_base>);
recipes.remove(<ExtraUtilities:spike_base_wood>);
recipes.addShaped(<ExtraUtilities:spike_base_wood>, [[null, <ExtraUtilities:decorativeBlock1:8>, null], [<ExtraUtilities:decorativeBlock1:8>, <ExtraUtilities:ethericsword>, <ExtraUtilities:decorativeBlock1:8>]]);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:spike_base_diamond>, [[null, <minecraft:diamond_sword>, null], [<minecraft:diamond_sword>, <minecraft:diamond_block>, <minecraft:diamond_sword>], [<minecraft:diamond_block>, <ExtraUtilities:spike_base>, <minecraft:diamond_block>]]);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:spike_base_gold>, [[null, <minecraft:golden_sword>, null], [<minecraft:golden_sword>, <ore:blockGold>, <minecraft:golden_sword>], [<ore:blockGold>, <ExtraUtilities:spike_base_wood>, <ore:blockGold>]]);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:spike_base>, [[null, <minecraft:iron_sword>, null], [<minecraft:iron_sword>, <minecraft:iron_block>, <minecraft:iron_sword>], [<minecraft:iron_block>, <ExtraUtilities:spike_base_gold>, <minecraft:iron_block>]]);

#ender flux crystal
recipes.remove(<ExtraUtilities:endConstructor:2>);
recipes.addShaped(<ExtraUtilities:endConstructor:2>, [[null, <ExtraUtilities:decorativeBlock1:12>, null], [<BuildCraft|Transport:pipeGate>, <ore:blockEnderObsidian>, <BuildCraft|Transport:pipeGate>], [<ore:blockEnderObsidian>, <ore:blockEnderObsidian>, <ore:blockEnderObsidian>]]);

#magnum torch
mods.extraUtils.QED.removeRecipe(<ExtraUtilities:magnumTorch>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:magnumTorch>, [[<minecraft:potion:8229>, <ExtraUtilities:chandelier>, <minecraft:potion:8225>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>]]);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:magnumTorch>, [[<minecraft:potion:8225>, <ExtraUtilities:chandelier>, <minecraft:potion:8229>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>]]);

print("Initialized 'ExtraUtilities.zs'");