#Name: AppliedEnergistics.zs
#Author: Si_hen

print("Initializing 'AppliedEnergistics.zs'...");

#Grindstone Changes
recipes.remove(<appliedenergistics2:tile.BlockCrank>);
recipes.addShaped(<appliedenergistics2:tile.BlockCrank>, [[<ImmersiveEngineering:material>, <ImmersiveEngineering:material>, <ImmersiveEngineering:material>], [null, null, <ImmersiveEngineering:material>], [null, null, <ImmersiveEngineering:material>]]);
recipes.remove(<appliedenergistics2:tile.BlockGrinder>);

#Flour
mods.appeng.Grinder.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:4>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wheat>);
mods.immersiveengineering.Crusher.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:4>);
mods.railcraft.RockCrusher.removeRecipe(<minecraft:wheat>);

print("Initialized 'AppliedEnergistics.zs'");
