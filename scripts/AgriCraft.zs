#Name: AgriCraft.zs
#Author: Si_hen

print("Initializing 'AgriCraft.zs'...");

recipes.remove(<AgriCraft:sprinkler>);
recipes.addShaped(<AgriCraft:sprinkler>, [[null, <ore:plankWood>], [null, <ore:ingotSteel>], [<minecraft:iron_bars>, <minecraft:bucket>, <minecraft:iron_bars>]]);

recipes.remove(<AgriCraft:cropsItem>);
recipes.addShaped(<AgriCraft:cropsItem>, [[<ore:treatedStick>, <ore:treatedStick>], [<ore:treatedStick>, <ore:treatedStick>]]);

recipes.remove(<AgriCraft:clipper>);
recipes.addShaped(<AgriCraft:clipper>, [[null, <StevesCarts:ModuleComponents:49>], [<ore:treatedStick>, <ExtraUtilities:shears>], [null, <ore:treatedStick>]]);

print("Initialized 'AgriCraft.zs'");