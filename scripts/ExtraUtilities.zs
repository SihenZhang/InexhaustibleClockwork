#Name: ExtraUtilities.zs
#Author: Si_hen

print("Initializing 'ExtraUtilities.zs'...");

#remove some generators
<ExtraUtilities:generator.64:9>.addTooltip(format.white("Useless Generator"));
recipes.remove(<ExtraUtilities:generator.64:6>);
<ExtraUtilities:generator.64:6>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.64:4>);
<ExtraUtilities:generator.64:4>.addTooltip(format.red("This machine has no recipe now!"));

<ExtraUtilities:generator.8:9>.addTooltip(format.white("Useless Generator"));
recipes.remove(<ExtraUtilities:generator.8:6>);
<ExtraUtilities:generator.8:6>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator.8:4>);
<ExtraUtilities:generator.8:4>.addTooltip(format.red("This machine has no recipe now!"));

<ExtraUtilities:generator:9>.addTooltip(format.white("Useless Generator"));
recipes.remove(<ExtraUtilities:generator:6>);
<ExtraUtilities:generator:6>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<ExtraUtilities:generator:4>);
<ExtraUtilities:generator:4>.addTooltip(format.red("This machine has no recipe now!"));

#custom generators
recipes.remove(<ExtraUtilities:generator>);
recipes.addShaped(<ExtraUtilities:generator>, [[<ExtraUtilities:cobblestone_compressed>, <ExtraUtilities:cobblestone_compressed>, <ExtraUtilities:cobblestone_compressed>], [<ore:ingotRedAlloy>, <Forestry:sturdyMachine>, <ore:ingotRedAlloy>], [<Creator:coilCopper>, <BuildCraft|Core:engineBlock:1>, <Creator:coilCopper>]]);
recipes.remove(<ExtraUtilities:generator:1>);
recipes.addShaped(<ExtraUtilities:generator:1>, [[<ore:blockCoal>, <ore:blockCoal>, <ore:blockCoal>], [<BuildCraft|Core:engineBlock:1>, <ExtraUtilities:generator>, <BuildCraft|Core:engineBlock:1>], [<ore:ingotRedAlloy>, <ore:gearSteel>, <ore:ingotRedAlloy>]]);
recipes.remove(<ExtraUtilities:generator:2>);
recipes.addShaped(<ExtraUtilities:generator:2>, [[<Creator:EnergeticAlloyPlate>, <Creator:EnergeticAlloyPlate>, <Creator:EnergeticAlloyPlate>], [<Creator:EnergeticAlloyPlate>, <ExtraUtilities:generator:1>, <Creator:EnergeticAlloyPlate>], [<Creator:itemAlloy:5>, <Creator:blockAlloy:6>, <Creator:itemAlloy:5>]]);
recipes.remove(<ExtraUtilities:generator:3>);
recipes.addShaped(<ExtraUtilities:generator:3>, [[<minecraft:ender_pearl>, <minecraft:ender_pearl>, <minecraft:ender_pearl>], [<minecraft:ender_eye>, <ExtraUtilities:generator>, <minecraft:ender_eye>], [<ore:ingotRedAlloy>, <RandomThings:ingredient:6>, <ore:ingotRedAlloy>]]);
recipes.remove(<ExtraUtilities:generator:5>);
recipes.addShaped(<ExtraUtilities:generator:5>, [[<harvestcraft:firmtofuItem>, <harvestcraft:firmtofuItem>, <harvestcraft:firmtofuItem>], [<minecraft:furnace>, <ExtraUtilities:generator:10>, <minecraft:furnace>], [<ore:ingotRedAlloy>, <ore:gearIron>, <ore:ingotRedAlloy>]]);
recipes.remove(<ExtraUtilities:generator:7>);
recipes.addShaped(<ExtraUtilities:generator:7>, [[<powersuits:powerArmorComponent:17>, <powersuits:powerArmorComponent:17>, <powersuits:powerArmorComponent:17>], [<SolarExpansion:solarPanelHardened>, <ExtraUtilities:generator:1>, <SolarExpansion:solarPanelHardened>], [<ProjRed|Core:projectred.core.part:55>, <SolarExpansion:solarPanelHardened>, <ProjRed|Core:projectred.core.part:55>]]);
recipes.remove(<ExtraUtilities:generator:8>);
recipes.addShaped(<ExtraUtilities:generator:8>, [[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>], [<minecraft:tnt>, <ore:blockSignalum>, <minecraft:tnt>], [<ore:ingotRedAlloy>, <ExtraUtilities:generator>, <ore:ingotRedAlloy>]]);
recipes.remove(<ExtraUtilities:generator:10>);
recipes.addShaped(<ExtraUtilities:generator:10>, [[<Creator:compactGoldPlate>, <Creator:compactGoldPlate>, <Creator:compactGoldPlate>], [<Creator:compactGoldPlate>, <ExtraUtilities:generator:1>, <Creator:compactGoldPlate>], [<ProjRed|Core:projectred.core.part:55>, <ProjRed|Core:projectred.core.part:55>, <ProjRed|Core:projectred.core.part:55>]]);
recipes.remove(<ExtraUtilities:generator:11>);
recipes.addShaped(<ExtraUtilities:generator:11>, [[<minecraft:nether_star>, <minecraft:nether_star>, <minecraft:nether_star>], [<minecraft:skull:1>, <ExtraUtilities:decorativeBlock1:5>, <minecraft:skull:1>], [<StevesCarts:BlockMetalStorage:2>, <ExtraUtilities:generator:5>, <StevesCarts:BlockMetalStorage:2>]]);

recipes.remove(<ExtraUtilities:generator.8>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8>, [[<ExtraUtilities:generator>, <ExtraUtilities:generator>, <ExtraUtilities:generator>], [<ExtraUtilities:generator>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator>], [<ExtraUtilities:generator>, <ExtraUtilities:generator>, <ExtraUtilities:generator>]]);
recipes.remove(<ExtraUtilities:generator.8:1>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8:1>, [[<ExtraUtilities:generator:1>, <ExtraUtilities:generator:1>, <ExtraUtilities:generator:1>], [<ExtraUtilities:generator:1>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator:1>], [<ExtraUtilities:generator:1>, <ExtraUtilities:generator:1>, <ExtraUtilities:generator:1>]]);
recipes.remove(<ExtraUtilities:generator.8:2>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8:2>, [[<ExtraUtilities:generator:2>, <ExtraUtilities:generator:2>, <ExtraUtilities:generator:2>], [<ExtraUtilities:generator:2>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator:2>], [<ExtraUtilities:generator:2>, <ExtraUtilities:generator:2>, <ExtraUtilities:generator:2>]]);
recipes.remove(<ExtraUtilities:generator.8:3>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8:3>, [[<ExtraUtilities:generator:3>, <ExtraUtilities:generator:3>, <ExtraUtilities:generator:3>], [<ExtraUtilities:generator:3>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator:3>], [<ExtraUtilities:generator:3>, <ExtraUtilities:generator:3>, <ExtraUtilities:generator:3>]]);
recipes.remove(<ExtraUtilities:generator.8:5>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8:5>, [[<ExtraUtilities:generator:5>, <ExtraUtilities:generator:5>, <ExtraUtilities:generator:5>], [<ExtraUtilities:generator:5>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator:5>], [<ExtraUtilities:generator:5>, <ExtraUtilities:generator:5>, <ExtraUtilities:generator:5>]]);
recipes.remove(<ExtraUtilities:generator.8:7>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8:7>, [[<ExtraUtilities:generator:7>, <ExtraUtilities:generator:7>, <ExtraUtilities:generator:7>], [<ExtraUtilities:generator:7>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator:7>], [<ExtraUtilities:generator:7>, <ExtraUtilities:generator:7>, <ExtraUtilities:generator:7>]]);
recipes.remove(<ExtraUtilities:generator.8:8>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8:8>, [[<ExtraUtilities:generator:8>, <ExtraUtilities:generator:8>, <ExtraUtilities:generator:8>], [<ExtraUtilities:generator:8>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator:8>], [<ExtraUtilities:generator:8>, <ExtraUtilities:generator:8>, <ExtraUtilities:generator:8>]]);
recipes.remove(<ExtraUtilities:generator.8:9>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8:9>, [[<ExtraUtilities:generator:9>, <ExtraUtilities:generator:9>, <ExtraUtilities:generator:9>], [<ExtraUtilities:generator:9>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator:9>], [<ExtraUtilities:generator:9>, <ExtraUtilities:generator:9>, <ExtraUtilities:generator:9>]]);
recipes.remove(<ExtraUtilities:generator.8:10>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8:10>, [[<ExtraUtilities:generator:10>, <ExtraUtilities:generator:10>, <ExtraUtilities:generator:10>], [<ExtraUtilities:generator:10>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator:10>], [<ExtraUtilities:generator:10>, <ExtraUtilities:generator:10>, <ExtraUtilities:generator:10>]]);
recipes.remove(<ExtraUtilities:generator.8:11>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.8:11>, [[<ExtraUtilities:generator:11>, <ExtraUtilities:generator:11>, <ExtraUtilities:generator:11>], [<ExtraUtilities:generator:11>, <ThermalExpansion:Frame:7>, <ExtraUtilities:generator:11>], [<ExtraUtilities:generator:11>, <ExtraUtilities:generator:11>, <ExtraUtilities:generator:11>]]);

recipes.remove(<ExtraUtilities:generator.64>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64>, [[<ExtraUtilities:generator.8>, <ExtraUtilities:generator.8>, <ExtraUtilities:generator.8>], [<ExtraUtilities:generator.8>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8>], [<ExtraUtilities:generator.8>, <ExtraUtilities:generator.8>, <ExtraUtilities:generator.8>]]);
recipes.remove(<ExtraUtilities:generator.64:1>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64:1>, [[<ExtraUtilities:generator.8:1>, <ExtraUtilities:generator.8:1>, <ExtraUtilities:generator.8:1>], [<ExtraUtilities:generator.8:1>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8:1>], [<ExtraUtilities:generator.8:1>, <ExtraUtilities:generator.8:1>, <ExtraUtilities:generator.8:1>]]);
recipes.remove(<ExtraUtilities:generator.64:2>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64:2>, [[<ExtraUtilities:generator.8:2>, <ExtraUtilities:generator.8:2>, <ExtraUtilities:generator.8:2>], [<ExtraUtilities:generator.8:2>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8:2>], [<ExtraUtilities:generator.8:2>, <ExtraUtilities:generator.8:2>, <ExtraUtilities:generator.8:2>]]);
recipes.remove(<ExtraUtilities:generator.64:3>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64:3>, [[<ExtraUtilities:generator.8:3>, <ExtraUtilities:generator.8:3>, <ExtraUtilities:generator.8:3>], [<ExtraUtilities:generator.8:3>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8:3>], [<ExtraUtilities:generator.8:3>, <ExtraUtilities:generator.8:3>, <ExtraUtilities:generator.8:3>]]);
recipes.remove(<ExtraUtilities:generator.64:5>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64:5>, [[<ExtraUtilities:generator.8:5>, <ExtraUtilities:generator.8:5>, <ExtraUtilities:generator.8:5>], [<ExtraUtilities:generator.8:5>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8:5>], [<ExtraUtilities:generator.8:5>, <ExtraUtilities:generator.8:5>, <ExtraUtilities:generator.8:5>]]);
recipes.remove(<ExtraUtilities:generator.64:7>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64:7>, [[<ExtraUtilities:generator.8:7>, <ExtraUtilities:generator.8:7>, <ExtraUtilities:generator.8:7>], [<ExtraUtilities:generator.8:7>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8:7>], [<ExtraUtilities:generator.8:7>, <ExtraUtilities:generator.8:7>, <ExtraUtilities:generator.8:7>]]);
recipes.remove(<ExtraUtilities:generator.64:8>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64:8>, [[<ExtraUtilities:generator.8:8>, <ExtraUtilities:generator.8:8>, <ExtraUtilities:generator.8:8>], [<ExtraUtilities:generator.8:8>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8:8>], [<ExtraUtilities:generator.8:8>, <ExtraUtilities:generator.8:8>, <ExtraUtilities:generator.8:8>]]);
recipes.remove(<ExtraUtilities:generator.64:9>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64:9>, [[<ExtraUtilities:generator.8:9>, <ExtraUtilities:generator.8:9>, <ExtraUtilities:generator.8:9>], [<ExtraUtilities:generator.8:9>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8:9>], [<ExtraUtilities:generator.8:9>, <ExtraUtilities:generator.8:9>, <ExtraUtilities:generator.8:9>]]);
recipes.remove(<ExtraUtilities:generator.64:10>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64:10>, [[<ExtraUtilities:generator.8:10>, <ExtraUtilities:generator.8:10>, <ExtraUtilities:generator.8:10>], [<ExtraUtilities:generator.8:10>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8:10>], [<ExtraUtilities:generator.8:10>, <ExtraUtilities:generator.8:10>, <ExtraUtilities:generator.8:10>]]);
recipes.remove(<ExtraUtilities:generator.64:11>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:generator.64:11>, [[<ExtraUtilities:generator.8:11>, <ExtraUtilities:generator.8:11>, <ExtraUtilities:generator.8:11>], [<ExtraUtilities:generator.8:11>, <ThermalExpansion:Frame:9>, <ExtraUtilities:generator.8:11>], [<ExtraUtilities:generator.8:11>, <ExtraUtilities:generator.8:11>, <ExtraUtilities:generator.8:11>]]);

#deep dark portal
recipes.remove(<ExtraUtilities:dark_portal>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:dark_portal>, [[<ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:cobblestone_compressed:7>, <ExtraUtilities:bedrockiumIngot>], [<ExtraUtilities:cobblestone_compressed:7>, <minecraft:bedrock>, <ExtraUtilities:cobblestone_compressed:7>], [<ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:cobblestone_compressed:7>, <ExtraUtilities:bedrockiumIngot>]]);

#remove transfer node(energy)
mods.extraUtils.QED.removeRecipe(<ExtraUtilities:extractor_base:12>);
<ExtraUtilities:extractor_base:12>.addTooltip(format.red("You can't use this to transfer RF!"));
mods.extraUtils.QED.removeRecipe(<ExtraUtilities:extractor_base:13>);
<ExtraUtilities:extractor_base:13>.addTooltip(format.red("You can't use this to transfer RF!"));

#curtain
recipes.remove(<ExtraUtilities:curtains>);
mods.logistics.hammer.addRecipe(<minecraft:wool:*>, <ExtraUtilities:curtains> * 2);

#magicwood
recipes.remove(<ExtraUtilities:decorativeBlock1:8>);
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:bookshelf>, <liquid:xpjuice>);
recipes.addShaped(<ExtraUtilities:decorativeBlock1:8>, [[<ore:ingotAtlarus>, <minecraft:enchanted_book>, <ore:ingotAtlarus>], [<minecraft:enchanted_book>, <Automagy:blockBookshelfEnchanted:1>, <minecraft:enchanted_book>], [<ore:ingotAtlarus>, <minecraft:enchanted_book>, <ore:ingotAtlarus>]]);

#ender obsidian
recipes.remove(<ExtraUtilities:decorativeBlock1:1>);
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:obsidian>, <liquid:ender>);
recipes.addShaped(<ExtraUtilities:decorativeBlock1:1>, [[<enderclay:enderclayblock>, <minecraft:obsidian>, <enderclay:enderclayblock>], [<minecraft:obsidian>, <minecraft:ender_pearl>, <minecraft:obsidian>], [<enderclay:enderclayblock>, <minecraft:obsidian>, <enderclay:enderclayblock>]]);

#drum
recipes.remove(<ExtraUtilities:drum>);
recipes.addShaped(<ExtraUtilities:drum>, [[<ore:ingotSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:cauldron>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:ingotSteel>]]);

#watering can
recipes.remove(<ExtraUtilities:watering_can:1>);
recipes.remove(<ExtraUtilities:watering_can:3>);
recipes.addShaped(<ExtraUtilities:watering_can:1>, [[<ore:ingotSteel>, <minecraft:dye:15>, <harvestcraft:beetseedItem>],  [<ore:ingotSteel>, <minecraft:bowl>, <ore:ingotSteel>], [<harvestcraft:kiwiseedItem>, <ore:ingotSteel>, <harvestcraft:cornseedItem>]]);
recipes.addShaped(<ExtraUtilities:watering_can:3>, [[<ore:fertilizerRich>, <ExtraUtilities:mini-soul>, <ore:fertilizerRich>], [<ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:watering_can:1>, <ExtraUtilities:bedrockiumIngot>], [<xreliquary:mob_ingredient:9>, <ExtraUtilities:bedrockiumIngot>, <xreliquary:mob_ingredient:9>]]);

#golden bag
recipes.remove(<ExtraUtilities:golden_bag>);
recipes.addShaped(<ExtraUtilities:golden_bag>.withTag({enchanted: 1 as byte}), [[<Forestry:craftingMaterial:3>, <Creator:itemCrystal>, <Forestry:craftingMaterial:3>], [<ExtraUtilities:decorativeBlock1:8>, <WitchingGadgets:item.WG_Bag>, <ExtraUtilities:decorativeBlock1:8>], [<Forestry:craftingMaterial:3>, <Creator:blockAlloy:6>, <Forestry:craftingMaterial:3>]]);
recipes.addShaped(<ExtraUtilities:golden_bag>.withTag({enchanted: 1 as byte}), [[<ExtraUtilities:decorativeBlock1:8>, <ExtraUtilities:golden_bag>, <ExtraUtilities:decorativeBlock1:8>]]);

#remove peachful mode to craft nether star
recipes.removeShaped(<minecraft:nether_star>, [[<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>], [<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>], [<minecraft:diamond_sword>, <minecraft:soul_sand>, <minecraft:bow>]]);

#world interaction upgrade
recipes.remove(<ExtraUtilities:nodeUpgrade:2>);
recipes.addShaped(<ExtraUtilities:nodeUpgrade:2>, [[<minecraft:dye:4>, <ProjRed|Core:projectred.core.part:55>, <minecraft:dye:4>], [<ProjRed|Core:projectred.core.part:55>, <minecraft:diamond_pickaxe>, <ProjRed|Core:projectred.core.part:55>], [<minecraft:dye:4>, <ProjRed|Core:projectred.core.part:55>, <minecraft:dye:4>]]);

#spikes
recipes.remove(<ExtraUtilities:spike_base_gold>);
recipes.remove(<ExtraUtilities:spike_base_diamond>);
recipes.remove(<ExtraUtilities:spike_base>);
recipes.remove(<ExtraUtilities:spike_base_wood>);
recipes.addShaped(<ExtraUtilities:spike_base_wood>, [[null, <ExtraUtilities:decorativeBlock1:8>, null], [<ExtraUtilities:decorativeBlock1:8>, <ExtraUtilities:ethericsword>, <ExtraUtilities:decorativeBlock1:8>]]);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:spike_base_diamond>, [[null, <minecraft:diamond_sword>, null], [<minecraft:diamond_sword>, <minecraft:diamond_block>, <minecraft:diamond_sword>], [<minecraft:diamond_block>, <ExtraUtilities:spike_base>, <minecraft:diamond_block>]]);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:spike_base_gold>, [[null, <minecraft:golden_sword>, null], [<minecraft:golden_sword>, <ore:blockGold>, <minecraft:golden_sword>], [<ore:blockGold>, <ExtraUtilities:spike_base_wood>, <ore:blockGold>]]);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:spike_base>, [[null, <minecraft:iron_sword>, null], [<minecraft:iron_sword>, <minecraft:iron_block>, <minecraft:iron_sword>], [<minecraft:iron_block>, <ExtraUtilities:spike_base_gold>, <minecraft:iron_block>]]);

#bedrockium
recipes.remove(<ExtraUtilities:bedrockiumIngot>);
recipes.addShapeless(<ExtraUtilities:bedrockiumIngot> * 9, [<ExtraUtilities:block_bedrockium>]);
recipes.addShaped(<minecraft:bedrock>, [[<ExtraUtilities:block_bedrockium>, <ExtraUtilities:block_bedrockium>, <ExtraUtilities:block_bedrockium>], [<ExtraUtilities:block_bedrockium>, <ExtraUtilities:block_bedrockium>, <ExtraUtilities:block_bedrockium>], [<ExtraUtilities:block_bedrockium>, <ExtraUtilities:block_bedrockium>, <ExtraUtilities:block_bedrockium>]]);

#node
recipes.remove(<ExtraUtilities:extractor_base>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:extractor_base>, [[null, <ExtraUtilities:pipes:*>], [<ore:ingotRedAlloy>, <Avaritia:Resource>, <ore:ingotRedAlloy>], [<RandomThings:ingredient:6>, <minecraft:chest>, <RandomThings:ingredient:6>]]);
recipes.remove(<ExtraUtilities:extractor_base:6>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:extractor_base:6>, [[null, <ExtraUtilities:pipes:*>], [<ProjRed|Core:projectred.core.part:55>, <Avaritia:Resource>, <ProjRed|Core:projectred.core.part:55>], [<RandomThings:ingredient:6>, <BuildCraft|Factory:tankBlock>, <RandomThings:ingredient:6>]]);

#pipes
recipes.remove(<ExtraUtilities:pipes>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:pipes>, [[<ore:blockGlass>, <minecraft:redstone_torch>, <ore:blockGlass>], [<BuildCraft|Transport:item.buildcraftPipe.pipeitemsemerald>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsgold>], [<minecraft:stone_slab>, <ore:gearGold>, <minecraft:stone_slab>]]);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:pipes>, [[<ore:blockGlass>, <minecraft:redstone_torch>, <ore:blockGlass>], [<BuildCraft|Transport:item.buildcraftPipe.pipeitemsemerald>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsgold>], [<minecraft:stone_slab>, <ore:chipsetGold>, <minecraft:stone_slab>]]);
recipes.remove(<ExtraUtilities:pipes:8>);
recipes.addShaped(<ExtraUtilities:pipes:8> * 2, [[<BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay>, <ore:ingotGold>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay>], [<ExtraUtilities:pipes>, <ore:ingotGold>, <ExtraUtilities:pipes>], [<BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay>, <ore:ingotGold>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay>]]);
recipes.remove(<ExtraUtilities:pipes:10>);
recipes.addShaped(<ExtraUtilities:pipes:10> * 2,[[<ExtraUtilities:pipes>, <ore:blockLapis>, <ExtraUtilities:pipes>]]);
recipes.remove(<ExtraUtilities:pipes:11>);
<ExtraUtilities:pipes:11>.addTooltip(format.red("You can't use this to transfer RF!"));
recipes.remove(<ExtraUtilities:pipes:14>);
<ExtraUtilities:pipes:14>.addTooltip(format.red("You can't use this to transfer RF!"));
recipes.remove(<ExtraUtilities:pipes.1>);
recipes.addShaped(<ExtraUtilities:pipes.1> * 2, [[<minecraft:stone_button>, <minecraft:stone_button>, <minecraft:stone_button>], [<ExtraUtilities:pipes>, <ore:gemLapis>, <ExtraUtilities:pipes>], [<minecraft:stone_button>, <minecraft:stone_button>, <minecraft:stone_button>]]);

#matrix
recipes.remove(<ExtraUtilities:decorativeBlock1:12>);
recipes.addShaped(<ExtraUtilities:decorativeBlock1:12>, [[<ore:burntQuartz>, <RandomThings:ingredient:6>, <ore:burntQuartz>], [<RandomThings:ingredient:6>, <ExtraUtilities:decorativeBlock1:1>, <RandomThings:ingredient:6>], [<ore:burntQuartz>, <RandomThings:ingredient:6>, <ore:burntQuartz>]]);

#ender flux crystal
recipes.remove(<ExtraUtilities:endConstructor:2>);
recipes.addShaped(<ExtraUtilities:endConstructor:2>, [[null, <ExtraUtilities:decorativeBlock1:12>, null], [<BuildCraft|Transport:pipeGate>, <ore:blockEnderObsidian>, <BuildCraft|Transport:pipeGate>], [<ore:blockEnderObsidian>, <ore:blockEnderObsidian>, <ore:blockEnderObsidian>]]);

#qed
recipes.remove(<ExtraUtilities:endConstructor>);
recipes.addShaped(<ExtraUtilities:endConstructor>, [[<ore:blockEnderObsidian>, <ore:pearlEnderEye>, <ore:blockEnderObsidian>], [<Forestry:thermionicTubes:12>, <ExtraUtilities:decorativeBlock1:12>, <Forestry:thermionicTubes:12>], [<ore:blockEnderObsidian>, <ore:chipsetPulsating>, <ore:blockEnderObsidian>]]);

#magnum torch
mods.extraUtils.QED.removeRecipe(<ExtraUtilities:magnumTorch>);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:magnumTorch>, [[<minecraft:potion:8229>, <ExtraUtilities:chandelier>, <minecraft:potion:8225>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>]]);
mods.extraUtils.QED.addShapedRecipe(<ExtraUtilities:magnumTorch>, [[<minecraft:potion:8225>, <ExtraUtilities:chandelier>, <minecraft:potion:8229>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>], [<ExtraUtilities:chandelier>, <ExtraUtilities:bedrockiumIngot>, <ExtraUtilities:chandelier>]]);

print("Initialized 'ExtraUtilities.zs'");