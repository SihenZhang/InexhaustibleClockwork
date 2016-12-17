#Name: Gendustry.zs
#Author: Si_hen

print("Initializing 'Gendustry.zs'...");

#industrial grafter
recipes.remove(<gendustry:IndustrialGrafter:*>);
mods.forestry.Carpenter.addRecipe(<gendustry:IndustrialGrafter:100>.withTag({charge: 0}), [[null, <ThermalExpansion:augment:130>, <ore:blockDiamond>],
                                                                                          [null, <Forestry:grafter>, <ThermalExpansion:augment:130>], 
                                                                                          [<ThermalExpansion:capacitor:4>, null, null]], <liquid:osmium.molten> * 288, 200);

#industrial scoop
recipes.remove(<gendustry:IndustrialScoop:*>);
mods.forestry.Carpenter.addRecipe(<gendustry:IndustrialScoop:100>.withTag({charge: 0}), [[null, <ThermalExpansion:augment:130>, <ore:gemDiamond>],
                                                                                         [null, <Forestry:scoop>, <ThermalExpansion:augment:130>], 
                                                                                         [<ThermalExpansion:capacitor:4>, null, null]], <liquid:osmium.molten> * 288, 200);

#mutagen tank
recipes.remove(<gendustry:MutagenTank>);
recipes.addShaped(<gendustry:MutagenTank>, [[<ore:sheetPlastic>, <ore:paneGlassColorless>, <ore:sheetPlastic>], [<ore:sheetPlastic>, <ore:paneGlassColorless>, <ore:sheetPlastic>], [<ore:sheetPlastic>, <ore:paneGlassColorless>, <ore:sheetPlastic>]]);

#power module
recipes.remove(<gendustry:PowerModule>);
recipes.addShaped(<gendustry:PowerModule>, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:gearGold>, <ProjRed|Core:projectred.core.part:59>, <ore:gearGold>], [<ore:plateGold>, <ProjRed|Core:projectred.core.part:10>, <ore:plateGold>]]);

#bee receptacle
recipes.remove(<gendustry:BeeReceptacle>);
recipes.addShaped(<gendustry:BeeReceptacle>, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:plateGold>, <ore:beeComb>, <ore:plateGold>], [<ore:plateGold>, <Mekanism:ControlCircuit:1>, <ore:plateGold>]]);

#processer
recipes.remove(<gendustry:GeneticsProcessor>);
recipes.remove(<gendustry:EnvProcessor>);

#upgrade frame
recipes.remove(<gendustry:UpgradeFrame>);
mods.forestry.Carpenter.addRecipe(<gendustry:UpgradeFrame>, [[<Creator:compactTinPlate>, <ore:nuggetGold>, <Creator:compactTinPlate>],
                                                              [<minecraft:redstone>, null, <minecraft:redstone>], 
                                                              [<Creator:compactTinPlate>, <ore:nuggetGold>, <Creator:compactTinPlate>]], <liquid:gold.molten> * 288, 200);

#labware
recipes.remove(<gendustry:Labware>);
recipes.addShaped(<gendustry:Labware> * 8, [[<ore:sheetPlastic>, null, <ore:sheetPlastic>], [<ore:sheetPlastic>, null, <ore:sheetPlastic>], [null, <ore:gemDiamond>]]);

#climate control module
recipes.remove(<gendustry:ClimateModule>);
recipes.addShaped(<gendustry:ClimateModule>, [[<ore:plateGold>, <minecraft:redstone>, <ore:plateGold>], [<ore:plateGold>, <ore:gearGold>, <ore:plateGold>], [<ore:plateGold>, <minecraft:redstone>, <ore:plateGold>]]);

#pollen collection kit
recipes.remove(<gendustry:PollenKit>);
recipes.addShapeless(<gendustry:PollenKit>, [<gendustry:Labware>, <Forestry:craftingMaterial:2>, <Forestry:craftingMaterial:3>]);

#industrial apiary
recipes.remove(<gendustry:IndustrialApiary>);
recipes.addShaped(<gendustry:IndustrialApiary>, [[<gendustry:PowerModule>, <gendustry:BeeReceptacle>, <gendustry:PowerModule>], [<Forestry:craftingMaterial:6>, <Forestry:impregnatedCasing>, <Forestry:craftingMaterial:6>], [<Mekanism:ControlCircuit:1>, <Forestry:hardenedMachine>, <Mekanism:ControlCircuit:1>]]);

#mutagen producer
recipes.remove(<gendustry:MutagenProducer>);
val magmaCrucible = <ThermalExpansion:Machine:4>.withTag({Level: 2 as byte});
mods.avaritia.ExtremeCrafting.addShaped(<gendustry:MutagenProducer>, [[<Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <Mekanism:ControlCircuit:3>, <Mekanism:ControlCircuit:3>, <minecraft:hopper>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <Mekanism:ControlCircuit:3>, <Mekanism:ControlCircuit:3>, magmaCrucible, <ThermalExpansion:augment:128>, <ImmersiveEngineering:coil:2>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <BuildCraft|Silicon:laserBlock>, <BigReactors:BRMetalBlock>, <OpenBlocks:tank>, <Magneticraft:item.iron_pipe>, <gendustry:MutagenTank>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <ImmersiveEngineering:coil:2>, <ProjRed|Core:projectred.core.part:14>, <Mekanism:MachineBlock3:1>, <ProjRed|Core:projectred.core.part:14>, <ImmersiveEngineering:coil:2>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <ImmersiveEngineering:metalDevice:6>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, null, null]]);

#mutatron
recipes.remove(<gendustry:MutatronAdv>);
<gendustry:MutatronAdv>.addTooltip(format.red("This machine has no recipe now!"));
recipes.remove(<gendustry:Mutatron>);
mods.avaritia.ExtremeCrafting.addShaped(<gendustry:Mutatron>, [[<Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>, <gendustry:MutagenTank>, <ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <Mekanism:ControlCircuit:3>, <Mekanism:ControlCircuit:3>, <Magneticraft:item.iron_pipe>, <Mekanism:ControlCircuit:3>, <Mekanism:ControlCircuit:3>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <BuildCraft|Silicon:laserBlock>, <Mekanism:MachineBlock2:14>, <gendustry:BeeReceptacle>, <Mekanism:MachineBlock2:14>, <BuildCraft|Silicon:laserBlock>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <ImmersiveEngineering:coil:2>, <ProjRed|Core:projectred.core.part:14>, <ProjRed|Core:projectred.core.part:14>, <ProjRed|Core:projectred.core.part:14>, <ImmersiveEngineering:coil:2>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <Creator:denseLeadPlate>, null, null], [<Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <ImmersiveEngineering:metalDevice:6>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, <Creator:denseLeadPlate>, null, null]]);

#sampler
recipes.remove(<gendustry:Sampler>);
mods.avaritia.ExtremeCrafting.addShaped(<gendustry:Sampler>, [[<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <minecraft:hopper>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <minecraft:piston>, <minecraft:piston>, <OpenBlocks:tank>, <minecraft:piston>, <minecraft:piston>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <ImmersiveEngineering:coil:1>, <ImmersiveEngineering:coil:1>, <Magneticraft:item.iron_pipe>, <ImmersiveEngineering:coil:1>, <ImmersiveEngineering:coil:1>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <ImmersiveEngineering:coil:1>, <ThermalExpansion:augment:130>, <Forestry:factory:2>, <Magneticraft:item.iron_pipe>, <Mekanism:MachineBlock2:7>, <BiblioCraft:item.BiblioChase>, null, null], [<Creator:denseNickelPlate>, <ImmersiveEngineering:coil:1>, <ImmersiveEngineering:coil:2>, <ThermalExpansion:augment:130>, <Mekanism:ControlCircuit:3>, <Mekanism:ControlCircuit:3>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <ImmersiveEngineering:metalDevice:8>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <Mekanism:ControlCircuit:3>, <Mekanism:ControlCircuit:3>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <ImmersiveEngineering:metalDevice:6>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null]]);

#imprinter
recipes.remove(<gendustry:Imprinter>);
mods.avaritia.ExtremeCrafting.addShaped(<gendustry:Imprinter>, [[<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Mekanism:ControlCircuit:3>, <Mekanism:ControlCircuit:3>, <ProjRed|Core:projectred.core.part:14>, <Mekanism:AtomicAlloy>, <Mekanism:AtomicAlloy>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Mekanism:ControlCircuit:3>, <gendustry:GeneTemplate>, <gendustry:GeneticsProcessor>, <gendustry:Labware>, <Mekanism:AtomicAlloy>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <gendustry:BeeReceptacle>, <ProjRed|Core:projectred.core.part:10>, <BuildCraft|Silicon:laserTableBlock:5>, <ProjRed|Core:projectred.core.part:10>, <gendustry:BeeReceptacle>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <gendustry:PowerModule>, <ProjRed|Core:projectred.core.part:59>, <BuildCraft|Silicon:laserBlock>, <ProjRed|Core:projectred.core.part:59>, <gendustry:PowerModule>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <ImmersiveEngineering:metalDevice:6>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null]]);

#liquifier
recipes.remove(<gendustry:Liquifier>);
mods.avaritia.ExtremeCrafting.addShaped(<gendustry:Liquifier>, [[<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <BuildCraft|Silicon:redstoneChipset:3>, <BuildCraft|Silicon:redstoneChipset:3>, <Mekanism:ControlCircuit:3>, <Forestry:thermionicTubes:5>, <Forestry:thermionicTubes:5>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <BuildCraft|Silicon:redstoneChipset:3>, <BuildCraft|Silicon:redstoneChipset:3>, <Mekanism:ControlCircuit:3>, <Forestry:thermionicTubes:5>, <Forestry:thermionicTubes:5>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Magneticraft:item.plastic>, <StevesCarts:ModuleComponents:20>, magmaCrucible, <Magneticraft:item.iron_pipe>, <OpenBlocks:tank>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <gendustry:PowerModule>, <gendustry:PowerModule>, <ImmersiveEngineering:coil:2>, <gendustry:PowerModule>, <gendustry:PowerModule>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <ImmersiveEngineering:metalDevice:6>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null]]);

#extractor
recipes.remove(<gendustry:Extractor>);
mods.avaritia.ExtremeCrafting.addShaped(<gendustry:Extractor>, [[<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <StevesCarts:ModuleComponents:20>, <StevesCarts:ModuleComponents:20>, <Mekanism:AtomicAlloy>, <StevesCarts:ModuleComponents:20>, <StevesCarts:ModuleComponents:20>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <StevesCarts:ModuleComponents:20>, <ProjRed|Core:projectred.core.part:59>, <gendustry:Labware>, <ProjRed|Core:projectred.core.part:14>, <StevesCarts:ModuleComponents:20>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <gendustry:BeeReceptacle>, <ProjRed|Core:projectred.core.part:55>, magmaCrucible, <ProjRed|Core:projectred.core.part:55>, <OpenBlocks:tank>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Mekanism:ControlCircuit:3>, <gendustry:GeneticsProcessor>, <gendustry:PowerModule>, <gendustry:GeneticsProcessor>, <Mekanism:ControlCircuit:3>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <ImmersiveEngineering:metalDevice:6>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null]]);

#transposer
recipes.remove(<gendustry:Transposer>);
mods.avaritia.ExtremeCrafting.addShaped(<gendustry:Transposer>, [[<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <StevesCarts:ModuleComponents:20>, <StevesCarts:ModuleComponents:20>, <ProjRed|Core:projectred.core.part:10>, <StevesCarts:ModuleComponents:20>, <StevesCarts:ModuleComponents:20>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <StevesCarts:ModuleComponents:20>, <gendustry:GeneTemplate>, <ProjRed|Core:projectred.core.part:55>, <gendustry:Labware>, <StevesCarts:ModuleComponents:20>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <gendustry:GeneTemplate>, <gendustry:GeneticsProcessor>, <appliedenergistics2:item.ItemMultiMaterial:9>, <gendustry:GeneticsProcessor>, <gendustry:GeneTemplate>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Mekanism:ControlCircuit:3>, <Mekanism:ControlCircuit:3>, <gendustry:PowerModule>, <Mekanism:ControlCircuit:3>, <Mekanism:ControlCircuit:3>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <ImmersiveEngineering:metalDevice:6>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null]]);

#replicator
recipes.remove(<gendustry:Replicator>);
mods.avaritia.ExtremeCrafting.addShaped(<gendustry:Replicator>, [[<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <StevesCarts:ModuleComponents:49>, <gendustry:GeneticsProcessor>, <gendustry:PowerModule>, <gendustry:GeneticsProcessor>, <StevesCarts:ModuleComponents:49>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <gendustry:Extractor>, <gendustry:Liquifier>, <gendustry:GeneTemplate>, <gendustry:Sampler>, <gendustry:Transposer>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <OpenBlocks:tank>, <OpenBlocks:tank>, <gendustry:Imprinter>, <gendustry:Mutatron>, <gendustry:BeeReceptacle>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Mekanism:ControlCircuit:3>, <ThermalExpansion:Frame:11>, <ThermalExpansion:Cell:4>, <ThermalExpansion:Frame:11>, <Mekanism:ControlCircuit:3>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <ImmersiveEngineering:coil:2>, <Creator:denseNickelPlate>, null, null], [<Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <ImmersiveEngineering:metalDevice:6>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, <Creator:denseNickelPlate>, null, null]]);

print("Initialized 'Gendustry.zs'");