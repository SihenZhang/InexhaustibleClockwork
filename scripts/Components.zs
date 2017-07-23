#Name: Components.zs
#Author: Prunoideae

print("Initializing 'Components.zs'...");

#Hi there, here're something'bout little poor Prunoideae's Components

mods.forestry.Carpenter.addRecipe(<Creator:chamberIron>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                          [<ore:plateIron>, null, <ore:plateIron>], 
                                                          [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 576, 40);
mods.forestry.Carpenter.addRecipe(<Creator:chamberElectrum>, [[<Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>],
                                                          [<Creator:compactElectrumPlate>, null, <Creator:compactElectrumPlate>], 
                                                          [<Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 576, 80);														  
mods.forestry.Carpenter.addRecipe(<Creator:chamberOsmium>, [[<Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>],
                                                          [<Creator:compactOsmiumPlate>, null, <Creator:compactOsmiumPlate>], 
                                                          [<Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>]], <liquid:osmium> * 576, 160);

#Magnets
recipes.remove(<Magneticraft:item.magnet>);
recipes.addShaped(<Creator:magnetIron>, [[null, <minecraft:dye:4>, null], [null, <ore:ingotIron>, null], [null, <minecraft:redstone>, null]]);
mods.railcraft.Rolling.addShaped(<Creator:magnetNico>, [[null, <minecraft:dye:4>, null], 
                                                        [null, <ore:ingotNickel>, null],
                                                        [null, <minecraft:redstone>, null]]);
mods.thermalexpansion.Smelter.addRecipe(35000, <Creator:dustIral> * 3, <minecraft:redstone_block>, <Creator:magnetIral>);

#Coils
mods.railcraft.Rolling.addShaped(<Creator:coilCopper>, [[<Creator:wireCopper>, <Creator:wireCopper>, <Creator:wireCopper>], 
                                                        [<Creator:wireCopper>, <ore:ingotIron>, <Creator:wireCopper>],
                                                        [<Creator:wireCopper>, <Creator:wireCopper>, <Creator:wireCopper>]]);
mods.railcraft.Rolling.addShaped(<Creator:coilSteel>, [[<Creator:wireSteel>, <Creator:wireSteel>, <Creator:wireSteel>], 
                                                        [<Creator:wireSteel>, null, <Creator:wireSteel>],
                                                        [<Creator:wireSteel>, <Creator:wireSteel>, <Creator:wireSteel>]]);
mods.railcraft.Rolling.addShaped(<Creator:coilElectrum>, [[<Creator:wireElectrum>, <Creator:wireElectrum>, <Creator:wireElectrum>], 
                                                        [<Creator:wireElectrum>, null, <Creator:wireElectrum>],
                                                        [<Creator:wireElectrum>, <Creator:wireElectrum>, <Creator:wireElectrum>]]);
mods.railcraft.Rolling.addShaped(<Creator:coilAluminum>, [[<Creator:wireAluminum>, <Creator:wireAluminum>, <Creator:wireAluminum>], 
                                                        [<Creator:wireAluminum>, null, <Creator:wireAluminum>],
                                                        [<Creator:wireAluminum>, <Creator:wireAluminum>, <Creator:wireAluminum>]]);

mods.railcraft.Rolling.addShaped(<Creator:excitingCoil>, [[<Creator:wireSteel>, <Creator:wireSteel>, <Creator:wireSteel>], 
                                                        [<Creator:wireSteel>, <ore:ingotIron>, <Creator:wireSteel>],
                                                        [<Creator:wireSteel>, <Creator:wireSteel>, <Creator:wireSteel>]]);
														
#commutator
mods.forestry.Carpenter.addRecipe(<Creator:commutator>, [[null, null, <ore:crystalCertusQuartz>],
                                                          [<Creator:wireCopper>, <ore:plateIron>, null], 
                                                          [null, null, <ore:crystalCertusQuartz>]], <liquid:iron.molten> * 144, 10);
														
#Grinding Chamber
mods.forestry.Carpenter.addRecipe(<Creator:chamberIronG>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                          [<minecraft:flint>, null, <minecraft:flint>], 
                                                          [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 576, 60);
mods.forestry.Carpenter.addRecipe(<Creator:chamberElectrumG>, [[<Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>],
                                                          [<Railcraft:borehead.steel>, null, <Railcraft:borehead.steel>], 
                                                          [<Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 576, 120);														  
mods.forestry.Carpenter.addRecipe(<Creator:chamberOsmiumG>, [[<Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>],
                                                          [<Railcraft:borehead.diamond>, null, <Railcraft:borehead.diamond>], 
                                                          [<Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>]], <liquid:osmium> * 576, 240);

#eddy current heating chamber
mods.forestry.Carpenter.addRecipe(<Creator:chamberElectrumEH>, [[<Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>],
                                                          [<Creator:coilSteel>, <Creator:chamberElectrum>, <Creator:coilSteel>], 
                                                          [<Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>, <Creator:compactElectrumPlate>]], <liquid:electrum.molten> * 576, 160);
mods.forestry.Carpenter.addRecipe(<Creator:chamberOsmiumEH>, [[<Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>],
                                                          [<Creator:coilAluminum>, <Creator:chamberOsmium>, <Creator:coilAluminum>], 
                                                          [<Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>, <Creator:compactOsmiumPlate>]], <liquid:osmium> * 576, 320);
#rotator and stator
mods.forestry.Carpenter.addRecipe(<Creator:rotatorCCopper>, [[null, <Creator:coilCopper>, null],
                                                          [<Creator:coilCopper>, <OpenBlocks:wrench>, <Creator:coilCopper>], 
                                                          [null, <Creator:coilCopper>, null]], <liquid:iron.molten> * 144, 10);
mods.forestry.Carpenter.addRecipe(<Creator:rotatorMNico>, [[null, <Creator:magnetNico>, null],
                                                          [<Creator:magnetNico>, <ore:ingotNickel>, <Creator:magnetNico>], 
                                                          [null, <Creator:magnetNico>, null]], <liquid:invar.molten> * 144, 20);
mods.forestry.Carpenter.addRecipe(<Creator:rotatorMIral>, [[null, <Creator:magnetIral>, null],
                                                          [<Creator:magnetIral>, <ore:ingotAluminum>, <Creator:magnetIral>], 
                                                          [null, <Creator:magnetIral>, null]], <liquid:aluminum.molten> * 144, 30);

#generators and motors
mods.forestry.Carpenter.addRecipe(<Creator:generatorDCA>, [[<Creator:compactIronPlate>, <Creator:magnetIron>, <Creator:compactIronPlate>],
                                                          [<Creator:commutator>, <Creator:rotatorCCopper>, <Creator:commutator>], 
                                                          [<Creator:compactIronPlate>, <Creator:magnetIron>, <Creator:compactIronPlate>]], <liquid:iron.molten> * 288, 20);
mods.forestry.Carpenter.addRecipe(<Creator:generatorDC>, [[<ore:plateIron>, <Creator:magnetIron>, <ore:plateIron>],
                                                          [<Creator:commutator>, <Creator:coilCopper>, <Creator:commutator>], 
                                                          [<ore:plateIron>, <Creator:magnetIron>, <ore:plateIron>]], <liquid:iron.molten> * 144, 20);
mods.forestry.Carpenter.addRecipe(<Creator:generatorACSP>, [[<Creator:InvarPlate>, <Creator:excitingCoil>, <Creator:InvarPlate>],
                                                          [<Creator:coilSteel>, <Creator:rotatorMNico>, <Creator:coilSteel>], 
                                                          [<Creator:InvarPlate>, <Creator:excitingCoil>, <Creator:InvarPlate>]], <liquid:invar.molten> * 288, 40);
mods.forestry.Carpenter.addRecipe(<Creator:generatorACTP>, [[<Creator:compactElectrumPlate>, <Creator:coilAluminum>, <Creator:compactElectrumPlate>],
                                                          [<Creator:magnetIral>, <Creator:rotatorMIral>, <Creator:magnetIral>], 
                                                          [<Creator:coilAluminum>, <Creator:compactElectrumPlate>, <Creator:coilAluminum>]], <liquid:electrum.molten> * 576, 80);

recipes.addShapeless(<Creator:motorDC>,[<Creator:generatorDC>,<ForgeMicroblock:stoneRod>,<ore:gearTin>]);
recipes.addShapeless(<Creator:motorACSP>,[<Creator:generatorACSP>,<OpenBlocks:wrench>,<ore:gearInvar>]);
recipes.addShapeless(<Creator:motorACTPA>,[<Creator:generatorACTP>,<OpenBlocks:wrench>,<ore:gearElectrum>]);

#mekanism circuits (5 mb copper each circuit, HAYO!)
mods.mekanism.Infuser.removeRecipe(<Mekanism:ControlCircuit>);
mods.forestry.Carpenter.addRecipe(<Mekanism:ControlCircuit>, [[<ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>],
                                                              [<minecraft:redstone>, <ore:plateIron>, <minecraft:redstone>], 
                                                              [<ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>]], <liquid:copper.molten> * 5, 20);
recipes.remove(<Mekanism:ControlCircuit:1>);
mods.forestry.Carpenter.addRecipe(<Mekanism:ControlCircuit:1>, [[<ProjRed|Core:projectred.core.part:56>, <minecraft:glowstone_dust>, <minecraft:redstone>],
                                                                [<minecraft:dye:4>, <Mekanism:ControlCircuit>, <minecraft:dye:4>], 
                                                                [<minecraft:redstone>, <minecraft:glowstone_dust>, <ProjRed|Core:projectred.core.part:56>]], <liquid:copper.molten> * 5, 40);
recipes.remove(<Mekanism:ControlCircuit:2>);
mods.forestry.Carpenter.addRecipe(<Mekanism:ControlCircuit:2>, [[<ProjRed|Core:projectred.core.part:13>, <ProjRed|Core:projectred.core.part:14>, <ProjRed|Core:projectred.core.part:13>],
                                                          [<ProjRed|Core:projectred.core.part:59>, <Mekanism:ControlCircuit:1>, <ProjRed|Core:projectred.core.part:59>], 
                                                          [<ProjRed|Core:projectred.core.part:13>, <ProjRed|Core:projectred.core.part:14>, <ProjRed|Core:projectred.core.part:13>]], <liquid:copper.molten> * 5, 40);
recipes.remove(<Mekanism:ControlCircuit:3>);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ControlCircuit:3>, 30000, [<Mekanism:ControlCircuit:2>, <Magneticraft:item.ingotCarbide>*8, <ThermalFoundation:material:69>]);

print("Initialized 'Components.zs'");