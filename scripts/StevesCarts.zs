#Name: StevesCarts.zs
#Author: Si_hen

print("Initializing 'StevesCarts.zs'...");

#chunk loader
recipes.remove(<StevesCarts:CartModule:49>);
recipes.addShaped(<StevesCarts:CartModule:49>, [[null, <Railcraft:machine.alpha>, null], [<StevesCarts:ModuleComponents:9>, <ore:ingotIron>, <StevesCarts:ModuleComponents:9>], [<ore:ingotIron>, <StevesCarts:ModuleComponents:16>, <ore:ingotIron>]]);

print("Initialized 'StevesCarts.zs'");