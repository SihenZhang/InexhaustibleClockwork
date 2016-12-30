#Name: Magneticraft.zs
#Author: Si_hen

import mods.nei.NEI;

print("Initializing 'Magneticraft.zs'...");

#ore fix
mods.magneticraft.CrushingTable.addRecipe(<Mekanism:OreBlock>, <Magneticraft:item.chunks:16>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:15>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:17>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:18>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:20>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:21>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:22>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:23>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:15>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:17>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:18>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:20>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:21>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:22>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:23>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:15>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:17>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:18>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:20>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:21>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:22>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:23>);
furnace.remove(<*>, <Magneticraft:item.pebbles:23>);
mods.thermalexpansion.Furnace.removeRecipe(<Magneticraft:item.pebbles:23>);
NEI.hide(<Magneticraft:item.chunks:15>);
NEI.hide(<Magneticraft:item.chunks:17>);
NEI.hide(<Magneticraft:item.chunks:18>);
NEI.hide(<Magneticraft:item.chunks:20>);
NEI.hide(<Magneticraft:item.chunks:21>);
NEI.hide(<Magneticraft:item.chunks:22>);
NEI.hide(<Magneticraft:item.chunks:23>);
NEI.hide(<Magneticraft:item.rubble:15>);
NEI.hide(<Magneticraft:item.rubble:17>);
NEI.hide(<Magneticraft:item.rubble:18>);
NEI.hide(<Magneticraft:item.rubble:20>);
NEI.hide(<Magneticraft:item.rubble:21>);
NEI.hide(<Magneticraft:item.rubble:22>);
NEI.hide(<Magneticraft:item.rubble:23>);
NEI.hide(<Magneticraft:item.pebbles:15>);
NEI.hide(<Magneticraft:item.pebbles:17>);
NEI.hide(<Magneticraft:item.pebbles:18>);
NEI.hide(<Magneticraft:item.pebbles:20>);
NEI.hide(<Magneticraft:item.pebbles:21>);
NEI.hide(<Magneticraft:item.pebbles:22>);
NEI.hide(<Magneticraft:item.pebbles:23>);
NEI.hide(<Magneticraft:item.dust:15>);
NEI.hide(<Magneticraft:item.dust:17>);
NEI.hide(<Magneticraft:item.dust:18>);
NEI.hide(<Magneticraft:item.dust:20>);
NEI.hide(<Magneticraft:item.dust:21>);
NEI.hide(<Magneticraft:item.dust:22>);
NEI.hide(<Magneticraft:item.dust:23>);

#remove sulfur from OreDict
<ore:dustSulfur>.remove(<Magneticraft:item.dustSulfur>);
recipes.remove(<Magneticraft:item.dustSulfur>);

#machinehousing
recipes.remove(<Magneticraft:machine_housing>);


#pipe
recipes.remove(<Magneticraft:item.iron_pipe>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:item.iron_pipe> * 2, [[<ore:plateInvar>, null, <ore:plateInvar>],
                                                                      [<ore:plateInvar>, null, <ore:plateInvar>], 
                                                                      [<ore:plateInvar>, null, <ore:plateInvar>]], <liquid:invar.molten> * 288, 20);
print("Initialized 'Magneticraft.zs'");