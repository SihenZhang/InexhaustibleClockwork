#Name: Gendustry.zs
#Author: Prunoideae & Si_hen

import mods.nei.NEI;

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

#mutagen tank
#recipes.remove(<gendustry:MutagenTank>);
#recipes.addShaped(<gendustry:MutagenTank>, [[<ore:sheetPlastic>, <ore:paneGlassColorless>, <ore:sheetPlastic>], [<ore:sheetPlastic>, <ore:paneGlassColorless>, <ore:sheetPlastic>], [<ore:sheetPlastic>, <ore:paneGlassColorless>, <ore:sheetPlastic>]]);

#power module
#recipes.remove(<gendustry:PowerModule>);
#recipes.addShaped(<gendustry:PowerModule>, [[<Creator:EnergeticAlloyPlate>, <Creator:EnergeticAlloyPlate>, <Creator:EnergeticAlloyPlate>], [<ExtraBees:misc>, <ProjRed|Core:projectred.core.part:59>, <ExtraBees:misc>], [<Creator:EnergeticAlloyPlate>, <ProjRed|Core:projectred.core.part:10>, <Creator:EnergeticAlloyPlate>]]);

#bee receptacle
#recipes.remove(<gendustry:BeeReceptacle>);
#recipes.addShaped(<gendustry:BeeReceptacle>, [[<Creator:EnergeticAlloyPlate>, <Creator:EnergeticAlloyPlate>, <Creator:EnergeticAlloyPlate>], [<Creator:EnergeticAlloyPlate>, <ore:beeComb>, <Creator:EnergeticAlloyPlate>], [<Creator:EnergeticAlloyPlate>, <Mekanism:ControlCircuit:2>, <Creator:EnergeticAlloyPlate>]]);

#processer
#recipes.remove(<gendustry:GeneticsProcessor>);
#recipes.remove(<gendustry:EnvProcessor>);

#upgrade frame
#recipes.remove(<gendustry:UpgradeFrame>);
#mods.forestry.Carpenter.addRecipe(<gendustry:UpgradeFrame>, [[<Creator:compactTinPlate>, <ore:nuggetGold>, <Creator:compactTinPlate>],
#                                                              [<minecraft:redstone>, null, <minecraft:redstone>], 
#                                                              [<Creator:compactTinPlate>, <ore:nuggetGold>, <Creator:compactTinPlate>]], <liquid:gold.molten> * 288, 200);

#labware
#recipes.remove(<gendustry:Labware>);
#recipes.addShaped(<gendustry:Labware> * 8, [[<ore:sheetPlastic>, null, <ore:sheetPlastic>], [<ore:sheetPlastic>, null, <ore:sheetPlastic>], [null, <ore:gemDiamond>]]);

#climate control module
#recipes.remove(<gendustry:ClimateModule>);
#recipes.addShaped(<gendustry:ClimateModule>, [[<ore:plateGold>, <minecraft:redstone>, <ore:plateGold>], [<ore:plateGold>, <ore:gearGold>, <ore:plateGold>], [<ore:plateGold>, <minecraft:redstone>, <ore:plateGold>]]);

#pollen collection kit
#recipes.remove(<gendustry:PollenKit>);
#recipes.addShapeless(<gendustry:PollenKit>, [<gendustry:Labware>, <Forestry:craftingMaterial:2>, <Forestry:craftingMaterial:3>]);

#industrial apiary
recipes.remove(<gendustry:IndustrialApiary>);
recipes.addShaped(<gendustry:IndustrialApiary>, [[<gendustry:PowerModule>, <gendustry:BeeReceptacle>, <gendustry:PowerModule>], [<Forestry:craftingMaterial:6>, <Forestry:impregnatedCasing>, <Forestry:craftingMaterial:6>], [<Mekanism:ControlCircuit:2>, <Genetics:misc:11>, <Mekanism:ControlCircuit:2>]]);

#all of machines
#recipes.remove(<gendustry:MutagenProducer>);
#recipes.remove(<gendustry:MutatronAdv>);
#recipes.remove(<gendustry:Mutatron>);
#recipes.remove(<gendustry:Sampler>);
#recipes.remove(<gendustry:Imprinter>);
#recipes.remove(<gendustry:Liquifier>);
#recipes.remove(<gendustry:Extractor>);
#recipes.remove(<gendustry:Transposer>);
#recipes.remove(<gendustry:Replicator>);
#recipes.remove(<gendustry:GeneSampleBlank>);
#recipes.remove(<gendustry:GeneTemplate>);
#<gendustry:MutagenProducer>.addTooltip(format.red("This machine has no recipe now!"));
#<gendustry:MutatronAdv>.addTooltip(format.red("This machine has no recipe now!"));
#<gendustry:Mutatron>.addTooltip(format.red("This machine has no recipe now!"));
#<gendustry:Sampler>.addTooltip(format.red("This machine has no recipe now!"));
#<gendustry:Imprinter>.addTooltip(format.red("This machine has no recipe now!"));
#<gendustry:Liquifier>.addTooltip(format.red("This machine has no recipe now!"));
#<gendustry:Extractor>.addTooltip(format.red("This machine has no recipe now!"));
#<gendustry:Transposer>.addTooltip(format.red("This machine has no recipe now!"));
#<gendustry:Replicator>.addTooltip(format.red("This machine has no recipe now!"));
#<gendustry:GeneSampleBlank>.addTooltip(format.red("This item has no recipe now!"));
#<gendustry:GeneTemplate>.addTooltip(format.red("This item has no recipe now!"));
#NEI.hide(<gendustry:MutagenProducer>);
#NEI.hide(<gendustry:MutatronAdv>);
#NEI.hide(<gendustry:Mutatron>);
#NEI.hide(<gendustry:Sampler>);
#NEI.hide(<gendustry:Imprinter>);
#NEI.hide(<gendustry:Liquifier>);
#NEI.hide(<gendustry:Extractor>);
#NEI.hide(<gendustry:Transposer>);
#NEI.hide(<gendustry:Replicator>);
#NEI.hide(<gendustry:GeneSampleBlank>);
#NEI.hide(<gendustry:GeneTemplate>);
#NEI.hide(<gendustry:fluid.Mutagen>);
#NEI.hide(<gendustry:fluid.LiquidDNA>);
#NEI.hide(<gendustry:fluid.Protein>);
#NEI.hide(<gendustry:Waste>);
#NEI.hide(<gendustry:MutagenBucket>);
#NEI.hide(<gendustry:MutagenCan>);
#NEI.hide(<gendustry:LiquidDNABucket>);
#NEI.hide(<gendustry:LiquidDNACan>);
#NEI.hide(<gendustry:ProteinBucket>);
#NEI.hide(<gendustry:ProteinCan>);

print("Initialized 'Gendustry.zs'");