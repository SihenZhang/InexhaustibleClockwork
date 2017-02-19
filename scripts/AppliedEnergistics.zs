#Name: AppliedEnergistics.zs
#Author: Si_hen & Prunoideae

print("Initializing 'AppliedEnergistics.zs'...");

#Grindstone Changes
recipes.remove(<appliedenergistics2:tile.BlockCrank>);
recipes.addShaped(<appliedenergistics2:tile.BlockCrank>, [[<ImmersiveEngineering:material>, <ImmersiveEngineering:material>, <ImmersiveEngineering:material>], [null, null, <ImmersiveEngineering:material>], [null, null, <ImmersiveEngineering:material>]]);
recipes.remove(<appliedenergistics2:tile.BlockGrinder>);
mods.appeng.Grinder.removeRecipe(<ore:dustCoal>);
mods.appeng.Grinder.removeRecipe(<ore:dustCharcoal>);
mods.appeng.Grinder.removeRecipe(<ore:dustObsidian>);
mods.appeng.Grinder.removeRecipe(<ore:dustBronze>);
mods.appeng.Grinder.removeRecipe(<ore:dustElectrum>);
mods.appeng.Grinder.removeRecipe(<ore:dustInvar>);
mods.appeng.Grinder.removeRecipe(<ore:dustBrass>);
mods.appeng.Grinder.removeRecipe(<ore:dustCertusQuartz>);
mods.appeng.Grinder.removeRecipe(<ore:dustNetherQuartz>);
mods.appeng.Grinder.removeRecipe(<ore:dustFluix>);
mods.appeng.Grinder.removeRecipe(<ore:dustEnder>);
mods.appeng.Grinder.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:45>);
mods.appeng.Grinder.removeRecipe(<ore:itemFlint>);
mods.appeng.Grinder.removeRecipe(<minecraft:dye:15>);
mods.appeng.Grinder.removeRecipe(<ore:dustMithril>);
mods.appeng.Grinder.removeRecipe(<ore:dustCyanite>);
mods.appeng.Grinder.removeRecipe(<ore:dustGraphite>);
mods.appeng.Grinder.removeRecipe(<ore:dustBlutonium>);
mods.appeng.Grinder.removeRecipe(<ore:dustLudicrite>);
<appliedenergistics2:tile.BlockGrinder>.addTooltip(format.red("I'm so sorry but I can't leave it here!"));

#Certus Quartz Unified
val anycertusquartz = <ore:anycertusquartz>;
anycertusquartz.add(<appliedenergistics2:item.ItemMultiMaterial>); 
anycertusquartz.add(<appliedenergistics2:item.ItemMultiMaterial:1>); 
anycertusquartz.add(<appliedenergistics2:item.ItemMultiMaterial:10>); 

val certusquartz = <ore:certusquartz>;
certusquartz.add(<appliedenergistics2:item.ItemMultiMaterial>); 
certusquartz.add(<appliedenergistics2:item.ItemMultiMaterial:1>); 

#Fluix Unified
val fluix = <ore:fluix>;
fluix.add(<appliedenergistics2:item.ItemMultiMaterial:7>);
fluix.add(<appliedenergistics2:item.ItemMultiMaterial:12>);

#Quartz Glass
val glassQuartz = <ore:glassQuartz>;
val lampQuartz = <appliedenergistics2:tile.BlockQuartzLamp>;
glassQuartz.add(<appliedenergistics2:tile.BlockQuartzGlass>);
glassQuartz.add(lampQuartz);
recipes.remove(lampQuartz);
recipes.addShaped(lampQuartz, [[<Creator:Sunnarium>, <appliedenergistics2:tile.BlockQuartzGlass>, <Creator:Sunnarium>]]);

#material
val logProcessor = <appliedenergistics2:item.ItemMultiMaterial:22>;
val calProcessor = <appliedenergistics2:item.ItemMultiMaterial:23>;
val engProcessor = <appliedenergistics2:item.ItemMultiMaterial:24>;
val pearlFluix = <appliedenergistics2:item.ItemMultiMaterial:9>;
val formCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
val anniCore = <appliedenergistics2:item.ItemMultiMaterial:44>;
val galCable = <appliedenergistics2:item.ItemMultiPart:16>;
recipes.remove(pearlFluix);
recipes.addShaped(pearlFluix, [[<ore:dustFluix>, <ore:crystalPureFluix>, <ore:dustFluix>], [<ore:crystalPureFluix>, <ore:pearlEnder>, <ore:crystalPureFluix>], [<ore:dustFluix>, <ore:crystalPureFluix>, <ore:dustFluix>]]);

#silicon
<ore:itemSilicon>.remove(<appliedenergistics2:item.ItemMultiMaterial:5>);
furnace.remove(<appliedenergistics2:item.ItemMultiMaterial:5>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustCertusQuartz>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustNetherQuartz>);
mods.mekanism.Crusher.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <*>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:sand>);
mods.immersiveengineering.ArcFurnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <ProjRed|Core:projectred.core.part:12>, null, 100, 512);

#compass
recipes.remove(<appliedenergistics2:tile.BlockSkyCompass>);
recipes.addShaped(<appliedenergistics2:tile.BlockSkyCompass>, [[null, <ore:logWood>], [<Railcraft:part.plate:1>, anycertusquartz, <Railcraft:part.plate:1>], [null, <ore:logWood>]]);

#inscriber
recipes.remove(<appliedenergistics2:tile.BlockInscriber>);
recipes.addShaped(<appliedenergistics2:tile.BlockInscriber>, [[<ore:logWood>, <minecraft:sticky_piston>, <ore:logWood>], [fluix, <ImmersiveEngineering:metalMultiblock:2>, <ore:circuitAdvanced>], [<ore:logWood>, <minecraft:sticky_piston>, <ore:logWood>]]);

#charger
recipes.remove(<appliedenergistics2:tile.BlockCharger>);
recipes.addShaped(<appliedenergistics2:tile.BlockCharger>, [[<ore:logWood>, <ore:circuitAdvanced>, <ore:logWood>], [<ore:logWood>], [<ore:logWood>, fluix, <ore:logWood>]]);

#me chest
recipes.remove(<appliedenergistics2:tile.BlockChest>);
recipes.addShaped(<appliedenergistics2:tile.BlockChest>, [[glassQuartz, <appliedenergistics2:item.ItemMultiPart:380>, glassQuartz], [galCable, <IronChest:BlockIronChest:7>, galCable], [<Railcraft:part.plate:1>, <ore:crystalFluix>, <Railcraft:part.plate:1>]]);

#energy acceptor
recipes.remove(<appliedenergistics2:tile.BlockEnergyAcceptor>);
recipes.addShaped(<appliedenergistics2:tile.BlockEnergyAcceptor>, [[<ore:logWood>, fluix, <ore:logWood>], [glassQuartz, <ore:circuitAdvanced>, glassQuartz], [<ore:logWood>, fluix, <ore:logWood>]]);

#energy cells
recipes.remove(<appliedenergistics2:tile.BlockEnergyCell>);
recipes.addShaped(<appliedenergistics2:tile.BlockEnergyCell>, [[<appliedenergistics2:item.ItemMultiMaterial:10>, <ore:dustFluix>, <appliedenergistics2:item.ItemMultiMaterial:10>], [<ore:dustFluix>, lampQuartz, <ore:dustFluix>], [<appliedenergistics2:item.ItemMultiMaterial:10>, <ore:dustFluix>, <appliedenergistics2:item.ItemMultiMaterial:10>]]);

#generator
recipes.remove(<appliedenergistics2:tile.BlockVibrationChamber>);
<appliedenergistics2:tile.BlockVibrationChamber>.addTooltip(format.red("I think Energy Acceptor may be a better choice."));
recipes.remove(<extracells:vibrantchamberfluid>);
<extracells:vibrantchamberfluid>.addTooltip(format.red("I think Energy Acceptor may be a better choice."));

#security
recipes.remove(<appliedenergistics2:tile.BlockSecurity>);
recipes.addShaped(<appliedenergistics2:tile.BlockSecurity>, [[<Railcraft:part.plate:1>, <appliedenergistics2:tile.BlockChest>, <Railcraft:part.plate:1>], [galCable, <appliedenergistics2:item.ToolBiometricCard>, galCable], [<Railcraft:part.plate:1>, <ore:circuitAdvanced>, <Railcraft:part.plate:1>]]);
recipes.remove(<appliedenergistics2:item.ToolBiometricCard>);
recipes.addShaped(<appliedenergistics2:item.ToolBiometricCard>, [[<Railcraft:part.plate:1>, <Railcraft:part.plate:1>, <Railcraft:part.plate:1>], [<Creator:GoldPlate>, <ore:dustRedstone>, <Creator:GoldPlate>]]);

#quantum network bridge
recipes.remove(<appliedenergistics2:tile.BlockQuantumRing>);
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumRing>, [[glassQuartz, logProcessor, glassQuartz], [engProcessor, <appliedenergistics2:tile.BlockDenseEnergyCell>, <appliedenergistics2:item.ItemMultiPart:76>], [glassQuartz, calProcessor, glassQuartz]]);
recipes.remove(<appliedenergistics2:tile.BlockQuantumLinkChamber>);
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumLinkChamber>, [[lampQuartz, pearlFluix, lampQuartz], [pearlFluix, null, pearlFluix], [lampQuartz, pearlFluix, lampQuartz]]);

#spatial pylon
recipes.remove(<appliedenergistics2:tile.BlockSpatialPylon>);
recipes.addShaped(<appliedenergistics2:tile.BlockSpatialPylon>, [[lampQuartz, glassQuartz, lampQuartz], [<ore:dustFluix>, <ore:crystalPureFluix>, <ore:dustFluix>], [lampQuartz, glassQuartz, lampQuartz]]);
recipes.remove(<appliedenergistics2:tile.BlockSpatialIOPort>);
recipes.addShaped(<appliedenergistics2:tile.BlockSpatialIOPort>, [[glassQuartz, glassQuartz, glassQuartz], [galCable, <appliedenergistics2:tile.BlockIOPort>, galCable], [<ore:logWood>, engProcessor, <ore:logWood>]]);

#me drive
recipes.remove(<appliedenergistics2:tile.BlockDrive>);
recipes.addShaped(<appliedenergistics2:tile.BlockDrive>, [[<ore:logWood>, engProcessor, <ore:logWood>], [galCable, <appliedenergistics2:tile.BlockChest>, galCable], [<ore:logWood>, logProcessor, <ore:logWood>]]);

#me interface
recipes.remove(<appliedenergistics2:tile.BlockInterface>);
recipes.addShaped(<appliedenergistics2:tile.BlockInterface>*4, [[<Railcraft:part.plate:1>, lampQuartz, <Railcraft:part.plate:1>], [anniCore, calProcessor, formCore], [<Railcraft:part.plate:1>, lampQuartz, <Railcraft:part.plate:1>]]);

#cell workbench
recipes.remove(<appliedenergistics2:tile.BlockCellWorkbench>);
recipes.addShaped(<appliedenergistics2:tile.BlockCellWorkbench>, [[<ore:blockWool>, calProcessor, <ore:blockWool>], [<Railcraft:part.plate:4>, <IronChest:BlockIronChest>, <Railcraft:part.plate:4>], [<Railcraft:part.plate:4>, <Forestry:factory2:2>, <Railcraft:part.plate:4>]]);

#me io
recipes.remove(<appliedenergistics2:tile.BlockIOPort>);
recipes.addShaped(<appliedenergistics2:tile.BlockIOPort>, [[glassQuartz, glassQuartz, glassQuartz], [pearlFluix, <appliedenergistics2:tile.BlockDrive>, pearlFluix], [<Railcraft:part.plate:1>, logProcessor, <Railcraft:part.plate:1>]]);

#condenser
recipes.remove(<appliedenergistics2:tile.BlockCondenser>);
recipes.addShaped(<appliedenergistics2:tile.BlockCondenser>, [[<appliedenergistics2:tile.BlockSkyStone:1>, galCable, <appliedenergistics2:tile.BlockSkyStone:1>], [lampQuartz, pearlFluix, lampQuartz], [<appliedenergistics2:tile.BlockSkyStone:1>, galCable, <appliedenergistics2:tile.BlockSkyStone:1>]]);

#accelerator
recipes.remove(<appliedenergistics2:tile.BlockQuartzGrowthAccelerator>);
recipes.addShaped(<appliedenergistics2:tile.BlockQuartzGrowthAccelerator>, [[<ore:logWood>, galCable, <ore:logWood>], [glassQuartz, <appliedenergistics2:tile.BlockFluix>, glassQuartz], [<ore:logWood>, galCable, <ore:logWood>]]);

#crafting unit
recipes.remove(<appliedenergistics2:tile.BlockCraftingUnit>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingUnit>*4, [[<ore:logWood>, calProcessor, <ore:logWood>],
                                                                                 [galCable, logProcessor, galCable], 
                                                                                 [<ore:logWood>, calProcessor, <ore:logWood>]], <liquid:steel.molten> * 288, 60);
recipes.remove(<appliedenergistics2:tile.BlockCraftingUnit:1>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingUnit:1>*4, [[<ore:logWood>, logProcessor, <ore:logWood>],
                                                                                   [calProcessor, <appliedenergistics2:tile.BlockCraftingUnit>, calProcessor], 
                                                                                   [<ore:logWood>, logProcessor, <ore:logWood>]], <liquid:invar.molten> * 288, 20);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage>*4, [[<ore:logWood>, calProcessor, <ore:logWood>],
                                                                                    [<appliedenergistics2:item.ItemMultiMaterial:35>, <appliedenergistics2:tile.BlockCraftingUnit>, <ore:circuitAdvanced>], 
                                                                                    [<ore:logWood>, calProcessor, <ore:logWood>]], <liquid:invar.molten> * 288, 150);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage:1>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage:1>*4, [[<ore:logWood>, calProcessor, <ore:logWood>],
                                                                                    [<appliedenergistics2:item.ItemMultiMaterial:36>, <appliedenergistics2:tile.BlockCraftingUnit>, <ore:circuitAdvanced>], 
                                                                                    [<ore:logWood>, calProcessor, <ore:logWood>]], <liquid:invar.molten> * 288, 150);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage:2>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage:2>*4, [[<ore:logWood>, calProcessor, <ore:logWood>],
                                                                                    [<appliedenergistics2:item.ItemMultiMaterial:37>, <appliedenergistics2:tile.BlockCraftingUnit>, <ore:circuitAdvanced>], 
                                                                                    [<ore:logWood>, calProcessor, <ore:logWood>]], <liquid:invar.molten> * 288, 150);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage:3>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage:3>*4, [[<ore:logWood>, calProcessor, <ore:logWood>],
                                                                                    [<appliedenergistics2:item.ItemMultiMaterial:38>, <appliedenergistics2:tile.BlockCraftingUnit>, <ore:circuitAdvanced>], 
                                                                                    [<ore:logWood>, calProcessor, <ore:logWood>]], <liquid:invar.molten> * 288, 150);

																					recipes.remove(<appliedenergistics2:tile.BlockCraftingMonitor>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingMonitor>, [[<appliedenergistics2:tile.BlockCraftingUnit>, <appliedenergistics2:item.ItemMultiPart:400>, null],
                                                                                    [null, null, null], 
                                                                                    [null, null, null]], <liquid:steel.molten> * 144, 100);
recipes.remove(<appliedenergistics2:tile.BlockMolecularAssembler>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockMolecularAssembler>, [[<ore:logWood>, lampQuartz, <ore:logWood>],
                                                                                       [anniCore, <ore:crafterWood>, formCore], 
                                                                                       [<ore:logWood>, lampQuartz, <ore:logWood>]], <liquid:steel.molten> * 288, 100);

#manipulator
recipes.remove(<appliedenergistics2:item.ToolEntropyManipulator>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:item.ToolEntropyManipulator>, [[<ore:crystalPureFluix>, <appliedenergistics2:tile.BlockEnergyCell>, null],
                                                                                      [engProcessor, <ore:ingotSteel>, null], 
                                                                                      [null, null, <ore:ingotSteel>]], <liquid:steel.molten> * 144, 20);

#wireless terminal
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:41>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:41>, [[null, pearlFluix], [<ore:logWood>, <appliedenergistics2:item.ItemMultiPart:140>, <ore:logWood>], [null, <ore:logWood>]]);
recipes.remove(<appliedenergistics2:item.ToolWirelessTerminal>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:item.ToolWirelessTerminal>, [[null, <appliedenergistics2:item.ItemMultiMaterial:41>, null],
                                                                                    [engProcessor, <appliedenergistics2:item.ItemMultiPart:380>, logProcessor], 
                                                                                    [<ore:circuitAdvanced>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <ore:circuitAdvanced>]], <liquid:steel.molten> * 288, 100);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:42>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:42> * 2,  [[<ore:dustFluix>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:dustEnder>], [engProcessor, <StevesCarts:ModuleComponents:45>, engProcessor], [glassQuartz, glassQuartz, glassQuartz]]);

#staff
recipes.remove(<appliedenergistics2:item.ToolChargedStaff>);
recipes.addShaped(<appliedenergistics2:item.ToolChargedStaff>, [[<ore:crystalChargedCertusQuartz>], [null, <ore:ingotSteel>], [null, null, <ore:ingotSteel>]]);

#cannon
recipes.remove(<appliedenergistics2:item.ToolMassCannon>);
recipes.addShaped(<appliedenergistics2:item.ToolMassCannon>, [[<ore:ingotInvar>, <ore:ingotInvar>, formCore], [<appliedenergistics2:item.ItemMultiMaterial:36>, <appliedenergistics2:tile.BlockEnergyCell>], [<ore:ingotInvar>]]);

#memory card
recipes.remove(<appliedenergistics2:item.ToolMemoryCard>);
recipes.addShaped(<appliedenergistics2:item.ToolMemoryCard>, [[calProcessor, <Railcraft:part.plate:1>, <Railcraft:part.plate:1>], [<Creator:GoldPlate>, <ore:dustRedstone>, <Creator:GoldPlate>] ]);

#light detector
recipes.remove(<appliedenergistics2:tile.BlockLightDetector>);
recipes.addShaped(<appliedenergistics2:tile.BlockLightDetector>, [[<ore:gemQuartz>, <ore:ingotSteel>]]);

#network tool
recipes.addShaped(<appliedenergistics2:item.ToolNetworkTool>, [[<ThermalExpansion:wrench>, <ore:itemIlluminatedPanel>], [calProcessor, <minecraft:chest>]]);

#view cell
recipes.remove(<appliedenergistics2:item.ItemViewCell>);
recipes.addShaped(<appliedenergistics2:item.ItemViewCell>, [[glassQuartz, <ore:dustRedstone>, glassQuartz], [<ore:dustRedstone>, <ore:anycertusquartz
>, <ore:dustRedstone>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

#storage cell
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:39>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:39>, [[glassQuartz, <ProjRed|Core:projectred.core.part:56>, glassQuartz], [<minecraft:redstone>, null, <minecraft:glowstone_dust>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:35>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:35>, [[<ore:dustElectrotine>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:dustElectrotine>], [<appliedenergistics2:item.ItemMultiMaterial:10>, logProcessor, <appliedenergistics2:item.ItemMultiMaterial:10>], [<ore:dustElectrotine>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:dustElectrotine>]]);
recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.1k>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:item.ItemBasicStorageCell.1k>, [[<appliedenergistics2:item.ItemMultiMaterial:35>, <appliedenergistics2:item.ItemMultiMaterial:39>]], <liquid:steel.molten> * 288, 1000);

recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:36>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:36>, [[<ore:dustElectrotine>, calProcessor, <ore:dustElectrotine>], [<appliedenergistics2:item.ItemMultiMaterial:35>, lampQuartz, <appliedenergistics2:item.ItemMultiMaterial:35>], [<ore:dustElectrotine>, <appliedenergistics2:item.ItemMultiMaterial:35>, <ore:dustElectrotine>]]);
recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.4k>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:item.ItemBasicStorageCell.4k>, [[<appliedenergistics2:item.ItemMultiMaterial:36>, <appliedenergistics2:item.ItemMultiMaterial:39>]], <liquid:steel.molten> * 288, 1000);

recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:37>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:37>, [[<Creator:Sunnarium>, engProcessor, <Creator:Sunnarium>], [<appliedenergistics2:item.ItemMultiMaterial:36>, <ProjRed|Core:projectred.core.part:59>, <appliedenergistics2:item.ItemMultiMaterial:36>], [<Creator:Sunnarium>, <appliedenergistics2:item.ItemMultiMaterial:36>, <Creator:Sunnarium>]]);
recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.16k>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:item.ItemBasicStorageCell.16k>, [[<appliedenergistics2:item.ItemMultiMaterial:37>, <appliedenergistics2:item.ItemMultiMaterial:39>]], <liquid:steel.molten> * 288, 1000);

recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:38>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:38>, [[<Creator:Sunnarium>, engProcessor, <Creator:Sunnarium>], [<appliedenergistics2:item.ItemMultiMaterial:37>, <ProjRed|Core:projectred.core.part:59>, <appliedenergistics2:item.ItemMultiMaterial:37>], [<Creator:Sunnarium>, <appliedenergistics2:item.ItemMultiMaterial:37>, <Creator:Sunnarium>]]);
recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.64k>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:item.ItemBasicStorageCell.64k>, [[<appliedenergistics2:item.ItemMultiMaterial:38>, <appliedenergistics2:item.ItemMultiMaterial:39>]], <liquid:steel.molten> * 288, 1000);


#crystal seed
recipes.remove(<appliedenergistics2:item.ItemCrystalSeed>);
recipes.addShaped(<appliedenergistics2:item.ItemCrystalSeed> * 8, [[null, <ore:crystalChargedCertusQuartz>], [<ore:dustCertusQuartz>, <ore:sand>, <ore:dustCertusQuartz>], [null, <ore:crystalChargedCertusQuartz>]]);
recipes.remove(<appliedenergistics2:item.ItemCrystalSeed:600>);
recipes.addShaped(<appliedenergistics2:item.ItemCrystalSeed:600> * 8, [[null, <ore:crystalChargedCertusQuartz>], [<ore:dustQuartz>, <ore:sand>, <ore:dustQuartz>], [null, <ore:crystalChargedCertusQuartz>]]);
recipes.remove(<appliedenergistics2:item.ItemCrystalSeed:1200>);
recipes.addShaped(<appliedenergistics2:item.ItemCrystalSeed:1200> * 8, [[null, <ore:crystalChargedCertusQuartz>], [<ore:dustFluix>, <ore:sand>, <ore:dustFluix>], [null, <ore:crystalChargedCertusQuartz>]]);

#color applicator
recipes.remove(<appliedenergistics2:item.ToolColorApplicator>);
recipes.addShaped(<appliedenergistics2:item.ToolColorApplicator>, [[formCore, <ore:ingotSteel>], [<ore:ingotSteel>, <appliedenergistics2:item.ItemMultiMaterial:36>], [null, null, <appliedenergistics2:tile.BlockEnergyCell>]]);

#

#pattern
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:52>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:52>*8, [[glassQuartz, <Creator:Sunnarium>, glassQuartz], [<Creator:Sunnarium>,null, <Creator:Sunnarium>], [glassQuartz, glassQuartz, glassQuartz]]);

#glass cable
recipes.remove(galCable);
recipes.addShapeless(galCable*64,[<appliedenergistics2:item.ItemMultiPart:140>,fluix,fluix]);

print("Initialized 'AppliedEnergistics.zs'");
