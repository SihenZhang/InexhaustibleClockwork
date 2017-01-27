#Name: PamsHarvestCraft.zs
#Author: Si_hen

print("Initializing 'PamsHarvestCraft.zs'...");

recipes.remove(<harvestcraft:presser>);
recipes.addShaped(<harvestcraft:presser>, [[<ore:plateSteel>, <minecraft:piston>, <ore:plateSteel>], [<ore:plateSteel>, <Forestry:factory:1>, <ore:plateSteel>], [<ore:plateSteel>, <minecraft:piston>, <ore:plateSteel>]]);
recipes.remove(<harvestcraft:market>);
recipes.addShaped(<harvestcraft:market>, [[<harvestcraft:blueberryItem>, <ore:gemEmerald>, <harvestcraft:raspberryItem>], [<ore:gemEmerald>, <ExtraUtilities:watering_can:1>, <ore:gemEmerald>], [<harvestcraft:blackberryItem>, <ore:gemEmerald>, <harvestcraft:candleberryItem>]]);

print("Initialized 'PamsHarvestCraft.zs'");