#Name: ThermalExpansion.zs
#Author: Si_hen

print("Initializing 'ThermalExpansion.zs'...");

#Basic Machine Frame
recipes.remove(<ThermalExpansion:Frame>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Frame>, [[<Creator:compactInvarPlate>, <ore:blockGlass>, <Creator:compactInvarPlate>],
                                                             [<ore:blockGlass>, <ore:gearElectrum>, <ore:blockGlass>], 
                                                             [<Creator:compactInvarPlate>, <ore:blockGlass>, <Creator:compactInvarPlate>]], <liquid:electrum.molten> * 1152, 20);






print("Initialized 'ThermalExpansion.zs'");