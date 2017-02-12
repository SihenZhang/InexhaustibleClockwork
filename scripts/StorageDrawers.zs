#Name: StorageDrawers.zs
#Author: Si_hen

print("Initializing 'StorageDrawers.zs'...");

#controller
recipes.remove(<StorageDrawers:controllerSlave>);
recipes.remove(<StorageDrawers:controller>);
recipes.addShaped(<StorageDrawers:controller>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], [<minecraft:comparator>, <StorageDrawers:fullDrawers4:*>, <minecraft:comparator>], [<minecraft:cobblestone>, <ore:chipsetDiamond>, <minecraft:cobblestone>]]);
recipes.addShaped(<StorageDrawers:controllerSlave>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], [<minecraft:comparator>, <StorageDrawers:fullDrawers4:*>, <minecraft:comparator>], [<minecraft:cobblestone>, <ore:chipsetGold>, <minecraft:cobblestone>]]);

#updates
recipes.remove(<StorageDrawers:upgrade:6>);
recipes.remove(<StorageDrawers:upgrade:5>);
recipes.remove(<StorageDrawers:upgrade:4>);
recipes.remove(<StorageDrawers:upgrade:3>);
recipes.addShaped(<StorageDrawers:upgrade:6>, [[<ore:gemEmerald>, <ore:stickWood>, <ore:gemEmerald>], [<ore:stickWood>, <StorageDrawers:upgrade:5>, <ore:stickWood>], [<ore:gemEmerald>, <ore:stickWood>, <ore:gemEmerald>]]);
recipes.addShaped(<StorageDrawers:upgrade:5>, [[<ore:gemDiamond>, <ore:stickWood>, <ore:gemDiamond>], [<ore:stickWood>, <StorageDrawers:upgrade:4>, <ore:stickWood>], [<ore:gemDiamond>, <ore:stickWood>, <ore:gemDiamond>]]);
recipes.addShaped(<StorageDrawers:upgrade:4>, [[<ore:blockObsidian>, <ore:stickWood>, <ore:blockObsidian>], [<ore:stickWood>, <StorageDrawers:upgrade:3>, <ore:stickWood>], [<ore:blockObsidian>, <ore:stickWood>, <ore:blockObsidian>]]);
recipes.addShaped(<StorageDrawers:upgrade:3>, [[<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], [<ore:stickWood>, <StorageDrawers:upgrade:2>, <ore:stickWood>], [<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>]]);

print("Initialized 'StorageDrawers.zs'");