#Name: OilRefining.zs
#Author: Si_hen

print("Initializing 'OilRefining.zs'...");

mods.buildcraft.Refinery.removeRecipe(<liquid:fuel>);
mods.buildcraft.Refinery.removeRecipe(<liquid:bioethanol>);
mods.immersiveengineering.Refinery.removeRecipe(<liquid:biodiesel>);
mods.immersiveengineering.Fermenter.removeFluidRecipe(<liquid:ethanol>);
mods.magneticraft.OilDistillery.addRecipe(<liquid:heavyoil> * 1000, <liquid:lightoil> * 2000, 50000);
mods.tconstruct.Smeltery.addAlloy(<liquid:fuel> * 16, [<liquid:lightoil> * 13, <liquid:heavyoil> * 3]);
mods.forestry.Fermenter.addRecipe(<liquid:ethanol>, <minecraft:reeds>, <liquid:plantoil>, 80, 1);
mods.forestry.Fermenter.addRecipe(<liquid:ethanol>, <minecraft:melon>, <liquid:plantoil>, 80, 1);
mods.forestry.Fermenter.addRecipe(<liquid:ethanol>, <minecraft:apple>, <liquid:plantoil>, 80, 1);
mods.forestry.Fermenter.addRecipe(<liquid:ethanol>, <minecraft:potato>, <liquid:plantoil>, 80, 1);
mods.forestry.Fermenter.addRecipe(<liquid:ethanol>, <minecraft:wheat>, <liquid:plantoil>, 80, 1);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 20, <minecraft:reeds>, 80);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 20, <minecraft:melon>, 80);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 20, <ore:listAllfruit>, 80);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 20, <ore:listAllveggie>, 80);
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 20, <ore:listAllgrain>, 80);
mods.forestry.Still.addRecipe(<liquid:bioethanol> * 2, <liquid:ethanol> * 10, 2.5); 
mods.immersiveengineering.Refinery.addRecipe(<liquid:biodiesel> * 64, <liquid:fuel> * 8, <liquid:bioethanol> * 8);

print("Initialized 'OilRefining.zs'");