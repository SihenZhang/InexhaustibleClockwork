#Name: EnderClay.zs
#Author: Si_hen

print("Initializing 'EnderClay.zs'...");

recipes.remove(<enderclay:cursed_lasso>);
recipes.addShapeless(<enderclay:cursed_lasso>, [<ExtraUtilities:golden_lasso>, <xreliquary:mob_ingredient:1>]);

print("Initialized 'EnderClay.zs'");