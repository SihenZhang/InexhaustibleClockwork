#Name: PamsHarvestCraft.zs
#Author: Si_hen

print("Initializing 'PamsHarvestCraft.zs'...");

recipes.remove(<harvestcraft:apiary>);
recipes.addShaped(<harvestcraft:apiary>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <Forestry:apiculture>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.remove(<harvestcraft:animaltrap>);
recipes.addShaped(<harvestcraft:animaltrap>, [[<ore:stickWood>, <OpenBlocks:beartrap>, <ore:stickWood>], [<minecraft:string>, <minecraft:chest>, <minecraft:string>], [<ore:stickWood>, <minecraft:string>, <ore:stickWood>]]);
recipes.remove(<harvestcraft:presser>);
recipes.addShaped(<harvestcraft:presser>, [[<ore:plateSteel>, <minecraft:piston>, <ore:plateSteel>], [<ore:plateSteel>, <Forestry:factory:1>, <ore:plateSteel>], [<ore:plateSteel>, <minecraft:piston>, <ore:plateSteel>]]);
recipes.remove(<harvestcraft:market>);
recipes.addShaped(<harvestcraft:market>, [[<harvestcraft:blueberryItem>, <ore:gemEmerald>, <harvestcraft:raspberryItem>], [<ore:gemEmerald>, <ExtraUtilities:watering_can:1>, <ore:gemEmerald>], [<harvestcraft:blackberryItem>, <ore:gemEmerald>, <harvestcraft:candleberryItem>]]);

print("Initialized 'PamsHarvestCraft.zs'");