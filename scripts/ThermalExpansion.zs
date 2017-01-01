#Name: ThermalExpansion.zs
#Author: Si_hen

print("Initializing 'ThermalExpansion.zs'...");

#Bad frames go away!
recipes.remove(<ThermalExpansion:Frame>);
recipes.remove(<ThermalExpansion:Frame:1>);
recipes.remove(<ThermalExpansion:Frame:2>);
recipes.remove(<ThermalExpansion:Frame:3>);

#val magmaCrucible = <ThermalExpansion:Machine:4>.withTag({Level: 2 as byte});
#basic machines

#redstone furance
recipes.remove(<ThermalExpansion:Machine>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine> , [[<Creator:compactElectrumPlate>, <Forestry:chipsets:3>, <Creator:compactElectrumPlate>],
                                                                      [<minecraft:redstone>, <Creator:chamberElectrumEH>, <minecraft:redstone>], 
                                                                      [<Creator:compactElectrumPlate>, <ThermalExpansion:material:1>, <Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
#pulverizer
recipes.remove(<ThermalExpansion:Machine:1>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:1> , [[<Creator:compactElectrumPlate>, <Forestry:chipsets:3>, <Creator:compactElectrumPlate>],
                                                                      [<Creator:motorACTPA>, <Creator:chamberElectrumG>, <Creator:motorACTPA>], 
                                                                      [<Creator:compactElectrumPlate>, <ThermalExpansion:material:1>, <Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
#sawmill
recipes.remove(<ThermalExpansion:Machine:2>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:2> , [[<Creator:compactElectrumPlate>, <Forestry:chipsets:3>, <Creator:compactElectrumPlate>],
                                                                      [<minecraft:iron_axe>, <Creator:chamberElectrum>, <minecraft:iron_axe>], 
                                                                      [<Creator:motorACTPA>, <ThermalExpansion:material:1>, <Creator:motorACTPA>]], <liquid:electrum.molten> * 288, 300);
#inductioin smelter
recipes.remove(<ThermalExpansion:Machine:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:3> , [[<Creator:compactElectrumPlate>, <Forestry:chipsets:3>, <Creator:compactElectrumPlate>],
                                                                      [<ThermalExpansion:Frame:4>, <Creator:chamberElectrumEH>, <ThermalExpansion:Frame:4>], 
                                                                      [<ThermalExpansion:material:1>, <Creator:compactElectrumPlate>, <ThermalExpansion:material:1>]], <liquid:electrum.molten> * 288, 300);
#magma crucible
recipes.remove(<ThermalExpansion:Machine:4>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:4> , [[<Creator:compactElectrumPlate>, <Magneticraft:mg_tank>, <Creator:compactElectrumPlate>],
                                                                      [<ThermalExpansion:Frame:4>, <Creator:chamberElectrumEH>, <ThermalExpansion:Frame:4>], 
                                                                      [<ThermalExpansion:material:1>, <Forestry:chipsets:3>, <ThermalExpansion:material:1>]], <liquid:electrum.molten> * 288, 300);
#fluid transposer
recipes.remove(<ThermalExpansion:Machine:5>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:5> , [[<Creator:compactElectrumPlate>, <Creator:motorACTPA> , <Creator:compactElectrumPlate>],
                                                                      [<Magneticraft:mg_tank>, <Creator:chamberElectrum>, <minecraft:chest>], 
                                                                      [<Forestry:chipsets:3>, <ThermalExpansion:material:1>, <Forestry:chipsets:3>]], <liquid:electrum.molten> * 288, 300);
#glacial precipitator
recipes.remove(<ThermalExpansion:Machine:6>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:6> , [[<ImmersiveEngineering:metalDecoration:4>, <Magneticraft:mg_tank> , <ImmersiveEngineering:metalDecoration:4>],
                                                                      [<Creator:motorACTPA>, <Creator:chamberElectrum>, <Creator:motorACTPA>], 
                                                                      [<ThermalExpansion:material:1>, <Forestry:chipsets:3>, <ThermalExpansion:material:1>]], <liquid:electrum.molten> * 288, 300);
#igneous extruder
recipes.remove(<ThermalExpansion:Machine:7>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:7> , [[<Creator:compactElectrumPlate>, <Creator:compactElectrumPlate> , <Creator:compactElectrumPlate>],
                                                                      [<Magneticraft:mg_tank>, <Creator:chamberElectrum>, <Magneticraft:mg_tank>], 
                                                                      [<ThermalExpansion:material>, <minecraft:piston>, <ThermalExpansion:material>]], <liquid:electrum.molten> * 288, 300);

#cyclic assembler
recipes.remove(<ThermalExpansion:Machine:9>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:9> , [[<Forestry:chipsets:3>, <minecraft:chest> , <Forestry:chipsets:3>],
                                                                      [<ore:gearInvar>, <Creator:chamberElectrum>, <ore:gearInvar>], 
                                                                      [<ThermalExpansion:material>, <ThermalExpansion:material:1>, <ThermalExpansion:material>]], <liquid:electrum.molten> * 288, 300);
#energy infuser
recipes.remove(<ThermalExpansion:Machine:10>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Machine:10> , [[<Creator:compactElectrumPlate>, <ThermalExpansion:Frame:4> , <Creator:compactElectrumPlate>],
                                                                      [<ThermalExpansion:material:2>, <Creator:chamberElectrum>, <ThermalExpansion:material:2>], 
                                                                      [<Forestry:chipsets:3>, <ThermalExpansion:material:1>, <Forestry:chipsets:3>]], <liquid:electrum.molten> * 288, 300);
#devices

#autonomous activator
recipes.remove(<ThermalExpansion:Device:2>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:2> , [[<Magneticraft:inserter>, <minecraft:chest> , <Magneticraft:inserter>],
                                                                      [<Creator:motorACTPA>, <Creator:chamberElectrum>, <Creator:motorACTPA>], 
                                                                      [<Forestry:chipsets:3>, <ThermalExpansion:material:1>, <Forestry:chipsets:3>]], <liquid:electrum.molten> * 576, 300);
#terrain smasher
recipes.remove(<ThermalExpansion:Device:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:3> , [[<Magneticraft:inserter>, <minecraft:iron_pickaxe> , <Magneticraft:inserter>],
                                                                      [<ore:gearCopper>, <Creator:chamberElectrum>, <ore:gearCopper>], 
                                                                      [<Forestry:chipsets:3>, <ThermalExpansion:material:1>, <Forestry:chipsets:3>]], <liquid:electrum.molten> * 288, 300);
#acquisition apparatus
recipes.remove(<ThermalExpansion:Device:4>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:4> , [[<ore:plateElectrum>, <Magneticraft:inserter> , <ore:plateElectrum>],
                                                                      [<ThermalExpansion:material>, <minecraft:chest>, <ThermalExpansion:material>], 
                                                                      [<ore:plateElectrum>, <ThermalExpansion:material>, <ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#nullifier
recipes.remove(<ThermalExpansion:Device:5>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:5> , [[<ore:plateElectrum>, <ore:gearTin> , <ore:plateElectrum>],
                                                                      [<minecraft:hopper>, <minecraft:lava_bucket>, <Magneticraft:mg_tank>], 
                                                                      [<ore:plateElectrum>, <ThermalExpansion:material>, <ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#item allocator
recipes.remove(<ThermalExpansion:Device:6>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Device:6> , [[<ore:plateElectrum>, <minecraft:hopper> , <ore:plateElectrum>],
                                                                      [<ore:plateElectrum>, <ThermalExpansion:material>, <ore:plateElectrum>], 
                                                                      [null,null,null]], <liquid:electrum.molten> * 288, 300);
#generators

#vote gaben for president, and there will be no ww3.
recipes.remove(<ThermalExpansion:Dynamo>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo> , [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                      [<ore:gearCopper>, <Creator:generatorACTP>, <ore:gearCopper>], 
                                                                      [<ore:plateElectrum>,<Magneticraft:mg_tank>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#hey, where is the magmatic dynamo?

#compression dynamo
recipes.remove(<ThermalExpansion:Dynamo:2>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo:2> , [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                      [<Magneticraft:mg_tank>, <Creator:generatorACTP>, <Magneticraft:mg_tank>], 
                                                                      [<ore:plateElectrum>,<Forestry:chipsets:3>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#reactant dynamo
recipes.remove(<ThermalExpansion:Dynamo:3>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo:3> , [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                      [<ore:gearBronze>, <Creator:generatorACTP>, <Magneticraft:mg_tank>], 
                                                                      [<ore:plateElectrum>,<ore:plateElectrum>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);
#enervation dynamo
recipes.remove(<ThermalExpansion:Dynamo:4>);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Dynamo:4> , [[<ore:plateElectrum>, <ThermalExpansion:material:2> , <ore:plateElectrum>],
                                                                      [<ThermalExpansion:material:1>, <Creator:chamberElectrum>, <ThermalExpansion:material:1>], 
                                                                      [<ore:plateElectrum>,<Forestry:chipsets:3>,<ore:plateElectrum>]], <liquid:electrum.molten> * 288, 300);

#frames
recipes.remove(<ThermalExpansion:Frame:4>); #leadstone energy cell frame
recipes.remove(<ThermalExpansion:Frame:5>); #hardened energy cell frame
recipes.remove(<ThermalExpansion:Frame:6>); #redstone energy cell frame empty
recipes.remove(<ThermalExpansion:Frame:8>); #resonant energy cell frame empty
recipes.remove(<ThermalExpansion:Frame:10>); #tesseract frame empty
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Frame:4> , [[<Creator:compactElectrumPlate>, <Creator:compactLeadPlate> , <Creator:compactElectrumPlate>],
                                                                      [<Creator:compactLeadPlate>, <ore:blockRedstone>, <Creator:compactLeadPlate>], 
                                                                      [<Creator:compactElectrumPlate>,<Creator:compactLeadPlate>,<Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 288, 300);
mods.forestry.Carpenter.addRecipe(<ThermalExpansion:Frame:5> , [[null, <Creator:compactInvarPlate> ,null ],
                                                                      [<Creator:compactInvarPlate>, <ThermalExpansion:Frame:4>, <Creator:compactInvarPlate>], 
                                                                      [null,<Creator:compactInvarPlate>,null]], <liquid:electrum.molten> * 288, 300);


#those abandoned kids :<
recipes.remove (<ThermalExpansion:Machine:8>);
recipes.remove (<ThermalExpansion:Machine:11>);
print("Initialized 'ThermalExpansion.zs'");