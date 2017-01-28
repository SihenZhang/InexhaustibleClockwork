#Name: ZettaIndustries.zs
#Author: Si_hen

import mods.nei.NEI;

print("Initializing 'ZettaIndustries.zs'...");

#charcoalblock
recipes.remove(<zettaindustries:charcoalblock>);
furnace.setFuel(<zettaindustries:charcoalblock>, 0);
NEI.hide(<zettaindustries:charcoalblock>);

#graphiteblock
furnace.remove(<zettaindustries:BlockGraphite>);
mods.thermalexpansion.Furnace.removeRecipe(<zettaindustries:charcoalblock>);
<ore:blockGraphite>.remove(<zettaindustries:BlockGraphite>);
NEI.hide(<zettaindustries:BlockGraphite>);

print("Initialized 'ZettaIndustries.zs'");