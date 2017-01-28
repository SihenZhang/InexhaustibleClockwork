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

#superconductor
recipes.remove(<zettaindustries:blockcontroler>);
NEI.hide(<zettaindustries:blockcontroler>);
recipes.remove(<zettaindustries:blockwire>);
recipes.addShaped(<zettaindustries:blockwire> * 18, [[<ThermalExpansion:Frame:5>, <Mekanism:MachineBlock2:11>.withTag({tier: 0, fluidTank: {FluidName: "cryotheum", Amount: 14000}}), <ThermalExpansion:Frame:5>], [<Mekanism:MachineBlock2:11>.withTag({tier: 0, fluidTank: {FluidName: "cryotheum", Amount: 14000}}), <ThermalExpansion:Cell:4>, <Mekanism:MachineBlock2:11>.withTag({tier: 0, fluidTank: {FluidName: "cryotheum", Amount: 14000}})], [<ThermalExpansion:Frame:5>, <Mekanism:MachineBlock2:11>.withTag({tier: 0, fluidTank: {FluidName: "cryotheum", Amount: 14000}}), <ThermalExpansion:Frame:5>]]);

print("Initialized 'ZettaIndustries.zs'");