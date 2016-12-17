#Name: Mekanism.zs
#Author: Si_hen

print("Initializing 'Mekanism.zs'...");

#remove Gunpowder recipes
mods.mekanism.Crusher.removeRecipe(<minecraft:gunpowder>);
mods.mekanism.Enrichment.removeRecipe(<ore:dustSaltpeter>);

#remove Paper recipe
recipes.removeShaped(<minecraft:paper>, [[<Mekanism:Sawdust>, <Mekanism:Sawdust>, <Mekanism:Sawdust>]]);

print("Initialized 'Mekanism.zs'");