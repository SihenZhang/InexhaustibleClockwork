#Name: StorageDrawers.zs
#Author: Si_hen

print("Initializing 'StorageDrawers.zs'...");

recipes.remove(<StorageDrawers:controllerSlave>);
recipes.remove(<StorageDrawers:controller>);
recipes.addShaped(<StorageDrawers:controller>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], [<minecraft:comparator>, <StorageDrawers:fullDrawers4:*>, <minecraft:comparator>], [<minecraft:cobblestone>, <ore:chipsetDiamond>, <minecraft:cobblestone>]]);
recipes.addShaped(<StorageDrawers:controllerSlave>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], [<minecraft:comparator>, <StorageDrawers:fullDrawers4:*>, <minecraft:comparator>], [<minecraft:cobblestone>, <ore:chipsetGold>, <minecraft:cobblestone>]]);

print("Initialized 'StorageDrawers.zs'");