#Name: Avaritia.zs
#Author: Si_hen

print("Initializing 'Avaritia.zs'...");

recipes.remove(<Avaritia:Dire_Crafting>);
recipes.addShaped(<Avaritia:Dire_Crafting>, [[null, <Avaritia:Resource>], [<Avaritia:Resource>, <Avaritia:Triple_Craft>, <Avaritia:Resource>], [null, <Avaritia:Resource>]]);

print("Initialized 'Avaritia.zs'");