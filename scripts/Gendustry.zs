#Name: Gendustry.zs
#Author: Prunoideae & Si_hen

print("Initializing 'Gendustry.zs'...");

#industrial grafter
recipes.remove(<gendustry:IndustrialGrafter:*>);
mods.forestry.Carpenter.addRecipe(<gendustry:IndustrialGrafter:100>.withTag({charge: 0}), [[null, <ThermalExpansion:augment:130>, <ore:blockDiamond>],
                                                                                          [null, <Forestry:grafter>, <ThermalExpansion:augment:130>], 
                                                                                          [<ThermalExpansion:capacitor:4>, null, null]], <liquid:osmium> * 288, 200);

#industrial scoop
recipes.remove(<gendustry:IndustrialScoop:*>);
mods.forestry.Carpenter.addRecipe(<gendustry:IndustrialScoop:100>.withTag({charge: 0}), [[null, <ThermalExpansion:augment:130>, <ore:gemDiamond>],
                                                                                         [null, <Forestry:scoop>, <ThermalExpansion:augment:130>], 
                                                                                         [<ThermalExpansion:capacitor:4>, null, null]], <liquid:osmium> * 288, 200);

#industrial apiary
recipes.remove(<gendustry:IndustrialApiary>);
recipes.addShaped(<gendustry:IndustrialApiary>, [[<gendustry:PowerModule>, <gendustry:BeeReceptacle>, <gendustry:PowerModule>], [<Forestry:craftingMaterial:6>, <Forestry:impregnatedCasing>, <Forestry:craftingMaterial:6>], [<Mekanism:ControlCircuit:2>, <Genetics:misc:11>, <Mekanism:ControlCircuit:2>]]);

print("Initialized 'Gendustry.zs'");