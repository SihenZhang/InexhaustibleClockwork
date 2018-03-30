#Name: OilRefining.zs
#Author: Si_hen

import mods.buildcraft.Refinery;
import mods.forestry.Fermenter;
import mods.immersiveengineering.DieselGeneratorFuel;
import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.Refinery;

print("Initializing 'OilRefining.zs'...");

Refinery.removeRecipe(<liquid:fuel>);
Refinery.removeRecipe(<liquid:bioethanol>);
Refinery.removeRecipe(<liquid:biodiesel>);
Fermenter.removeFluidRecipe(<liquid:ethanol>);
mods.magneticraft.OilDistillery.addRecipe(<liquid:heavyoil> * 25, <liquid:lightoil> * 50, 1250);
mods.tconstruct.Smeltery.addAlloy(<liquid:fuel> * 16, [<liquid:lightoil> * 13, <liquid:heavyoil> * 3]);
Fermenter.addRecipe(<liquid:ethanol>, <minecraft:reeds>, <liquid:plantoil>, 80, 1);
Fermenter.addRecipe(<liquid:ethanol>, <minecraft:melon>, <liquid:plantoil>, 80, 1);
Fermenter.addRecipe(<liquid:ethanol>, <minecraft:apple>, <liquid:plantoil>, 80, 1);
Fermenter.addRecipe(<liquid:ethanol>, <minecraft:potato>, <liquid:plantoil>, 80, 1);
Fermenter.addRecipe(<liquid:ethanol>, <minecraft:wheat>, <liquid:plantoil>, 80, 1);
Fermenter.addRecipe(null, <liquid:ethanol> * 20, <minecraft:reeds>, 80);
Fermenter.addRecipe(null, <liquid:ethanol> * 20, <minecraft:melon>, 80);
Fermenter.addRecipe(null, <liquid:ethanol> * 20, <ore:listAllfruit>, 80);
Fermenter.addRecipe(null, <liquid:ethanol> * 20, <ore:listAllveggie>, 80);
Fermenter.addRecipe(null, <liquid:ethanol> * 20, <ore:listAllgrain>, 80);
mods.forestry.Still.addRecipe(<liquid:bioethanol> * 2, <liquid:ethanol> * 10, 2.5); 
Refinery.addRecipe(<liquid:biodiesel> * 16, <liquid:fuel> * 8, <liquid:bioethanol> * 8);
DieselGeneratorFuel.remove(<liquid:fuel>);
DieselGeneratorFuel.add(<liquid:fuel>, 125);
DieselGeneratorFuel.remove(<liquid:biodiesel>);
DieselGeneratorFuel.add(<liquid:biodiesel>, 650);

print("Initialized 'OilRefining.zs'");