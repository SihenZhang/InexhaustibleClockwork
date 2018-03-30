#Name: AppliedEnergistics.zs
#Author: Si_hen

import mods.appeng.Grinder;
import mods.buildcraft.AssemblyTable;
import mods.forestry.Carpenter;
import mods.thermalexpansion.Furnace;

print("Initializing 'AppliedEnergistics.zs'...");

#Grindstone Changes
recipes.remove(<appliedenergistics2:tile.BlockCrank>);
recipes.addShaped(<appliedenergistics2:tile.BlockCrank>, [[<ImmersiveEngineering:material>, <ImmersiveEngineering:material>, <ImmersiveEngineering:material>], [null, null, <ImmersiveEngineering:material>], [null, null, <ImmersiveEngineering:material>]]);
recipes.remove(<appliedenergistics2:tile.BlockGrinder>);
Grinder.removeRecipe(<ore:dustCoal>);
Grinder.removeRecipe(<ore:dustCharcoal>);
Grinder.removeRecipe(<ore:dustObsidian>);
Grinder.removeRecipe(<ore:dustBronze>);
Grinder.removeRecipe(<ore:dustElectrum>);
Grinder.removeRecipe(<ore:dustInvar>);
Grinder.removeRecipe(<ore:dustBrass>);
Grinder.removeRecipe(<ore:dustCertusQuartz>);
Grinder.removeRecipe(<ore:dustNetherQuartz>);
Grinder.removeRecipe(<ore:dustFluix>);
Grinder.removeRecipe(<ore:dustEnder>);
Grinder.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:45>);
Grinder.removeRecipe(<ore:itemFlint>);
Grinder.removeRecipe(<minecraft:dye:15>);
Grinder.removeRecipe(<ore:dustMithril>);
Grinder.removeRecipe(<ore:dustCyanite>);
Grinder.removeRecipe(<ore:dustGraphite>);
Grinder.removeRecipe(<ore:dustBlutonium>);
Grinder.removeRecipe(<ore:dustLudicrite>);
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
Furnace.removeRecipe(<ore:dustCertusQuartz>);
Furnace.removeRecipe(<ore:dustNetherQuartz>);
mods.mekanism.Crusher.removeRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <*>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:sand>);
mods.immersiveengineering.ArcFurnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <ProjRed|Core:projectred.core.part:12>, null, 100, 512);

#compass
recipes.remove(<appliedenergistics2:tile.BlockSkyCompass>);
recipes.addShaped(<appliedenergistics2:tile.BlockSkyCompass>, [[null, <Creator:compactInvarPlate>], [<Creator:compactSteelPlate>, anycertusquartz, <Creator:compactSteelPlate>], [null, <Creator:compactInvarPlate>]]);

#inscriber
recipes.remove(<appliedenergistics2:tile.BlockInscriber>);
recipes.addShaped(<appliedenergistics2:tile.BlockInscriber>, [[<Creator:compactInvarPlate>, <minecraft:sticky_piston>, <Creator:compactInvarPlate>], [fluix, <ImmersiveEngineering:metalMultiblock:2>, <ore:circuitAdvanced>], [<Creator:compactInvarPlate>, <minecraft:sticky_piston>, <Creator:compactInvarPlate>]]);

#charger
recipes.remove(<appliedenergistics2:tile.BlockCharger>);
recipes.addShaped(<appliedenergistics2:tile.BlockCharger>, [[<Creator:compactInvarPlate>, <ore:circuitAdvanced>, <Creator:compactInvarPlate>], [<Creator:compactInvarPlate>], [<Creator:compactInvarPlate>, fluix, <Creator:compactInvarPlate>]]);

#me chest
recipes.remove(<appliedenergistics2:tile.BlockChest>);
recipes.addShaped(<appliedenergistics2:tile.BlockChest>, [[glassQuartz, <appliedenergistics2:item.ItemMultiPart:380>, glassQuartz], [galCable, <ore:chestWood>, galCable], [<Creator:compactSteelPlate>, <ore:crystalFluix>, <Creator:compactSteelPlate>]]);

#energy acceptor
recipes.remove(<appliedenergistics2:tile.BlockEnergyAcceptor>);
recipes.addShaped(<appliedenergistics2:tile.BlockEnergyAcceptor>, [[<Creator:compactInvarPlate>, fluix, <Creator:compactInvarPlate>], [glassQuartz, <ore:circuitAdvanced>, glassQuartz], [<Creator:compactInvarPlate>, fluix, <Creator:compactInvarPlate>]]);

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
recipes.addShaped(<appliedenergistics2:tile.BlockSecurity>, [[<Creator:compactSteelPlate>, <appliedenergistics2:tile.BlockChest>, <Creator:compactSteelPlate>], [galCable, <appliedenergistics2:item.ToolBiometricCard>, galCable], [<Creator:compactSteelPlate>, <ore:circuitAdvanced>, <Creator:compactSteelPlate>]]);
recipes.remove(<appliedenergistics2:item.ToolBiometricCard>);
recipes.addShaped(<appliedenergistics2:item.ToolBiometricCard>, [[<Creator:compactSteelPlate>, <Creator:compactSteelPlate>, <Creator:compactSteelPlate>], [<Creator:compactGoldPlate>, <ore:dustRedstone>, <Creator:compactGoldPlate>]]);

#quantum network bridge
recipes.remove(<appliedenergistics2:tile.BlockQuantumRing>);
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumRing>, [[<StevesCarts:ModuleComponents:49>, logProcessor, <StevesCarts:ModuleComponents:49>], [engProcessor, <appliedenergistics2:tile.BlockDenseEnergyCell>, <appliedenergistics2:item.ItemMultiPart:76>], [<StevesCarts:ModuleComponents:49>, calProcessor, <StevesCarts:ModuleComponents:49>]]);
recipes.remove(<appliedenergistics2:tile.BlockQuantumLinkChamber>);
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumLinkChamber>, [[lampQuartz, pearlFluix, lampQuartz], [pearlFluix, null, pearlFluix], [lampQuartz, pearlFluix, lampQuartz]]);

#spatial pylon
recipes.remove(<appliedenergistics2:tile.BlockSpatialPylon>);
recipes.addShaped(<appliedenergistics2:tile.BlockSpatialPylon>, [[lampQuartz, <StevesCarts:ModuleComponents:49>, lampQuartz], [<ore:dustFluix>, <ore:crystalPureFluix>, <ore:dustFluix>], [lampQuartz, <StevesCarts:ModuleComponents:49>, lampQuartz]]);
recipes.remove(<appliedenergistics2:tile.BlockSpatialIOPort>);
recipes.addShaped(<appliedenergistics2:tile.BlockSpatialIOPort>, [[glassQuartz, glassQuartz, glassQuartz], [galCable, <appliedenergistics2:tile.BlockIOPort>, galCable], [<Creator:compactInvarPlate>, engProcessor, <Creator:compactInvarPlate>]]);

#me drive
recipes.remove(<appliedenergistics2:tile.BlockDrive>);
recipes.addShaped(<appliedenergistics2:tile.BlockDrive>, [[<Creator:compactInvarPlate>, engProcessor, <Creator:compactInvarPlate>], [galCable, <appliedenergistics2:tile.BlockChest>, galCable], [<Creator:compactInvarPlate>, engProcessor, <Creator:compactInvarPlate>]]);

#me interface
recipes.remove(<appliedenergistics2:tile.BlockInterface>);
recipes.addShaped(<appliedenergistics2:tile.BlockInterface>, [[<Creator:compactSteelPlate>, lampQuartz, <Creator:compactSteelPlate>], [anniCore, engProcessor, formCore], [<Creator:compactSteelPlate>, lampQuartz, <Creator:compactSteelPlate>]]);

#cell workbench
recipes.remove(<appliedenergistics2:tile.BlockCellWorkbench>);
recipes.addShaped(<appliedenergistics2:tile.BlockCellWorkbench>, [[<ore:blockWool>, calProcessor, <ore:blockWool>], [<Creator:compactLeadPlate>, <EnhancedInventories:improvedChest:1>.withTag({frameName: "frame.mc.iron"}), <Creator:compactLeadPlate>], [<Creator:compactLeadPlate>, <Forestry:factory2:2>, <Creator:compactLeadPlate>]]);

#me io
recipes.remove(<appliedenergistics2:tile.BlockIOPort>);
recipes.addShaped(<appliedenergistics2:tile.BlockIOPort>, [[glassQuartz, glassQuartz, glassQuartz], [pearlFluix, <appliedenergistics2:tile.BlockDrive>, pearlFluix], [<Creator:compactSteelPlate>, logProcessor, <Creator:compactSteelPlate>]]);

#condenser
recipes.remove(<appliedenergistics2:tile.BlockCondenser>);
recipes.addShaped(<appliedenergistics2:tile.BlockCondenser>, [[<appliedenergistics2:tile.BlockSkyStone:1>, <appliedenergistics2:tile.BlockQuantumRing>, <appliedenergistics2:tile.BlockSkyStone:1>], [lampQuartz, pearlFluix, lampQuartz], [<appliedenergistics2:tile.BlockSkyStone:1>, <appliedenergistics2:tile.BlockQuantumRing>, <appliedenergistics2:tile.BlockSkyStone:1>]]);

#accelerator
recipes.remove(<appliedenergistics2:tile.BlockQuartzGrowthAccelerator>);
recipes.addShaped(<appliedenergistics2:tile.BlockQuartzGrowthAccelerator>, [[<Creator:compactInvarPlate>, galCable, <Creator:compactInvarPlate>], [glassQuartz, <appliedenergistics2:tile.BlockFluix>, glassQuartz], [<Creator:compactInvarPlate>, galCable, <Creator:compactInvarPlate>]]);

#crafting unit
recipes.remove(<appliedenergistics2:tile.BlockCraftingUnit>);
Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingUnit>, [[<Creator:compactInvarPlate>, calProcessor, <Creator:compactInvarPlate>],
                                                                                 [galCable, logProcessor, galCable], 
                                                                                 [<Creator:compactInvarPlate>, calProcessor, <Creator:compactInvarPlate>]], <liquid:steel.molten> * 1296, 60);
recipes.remove(<appliedenergistics2:tile.BlockCraftingUnit:1>);
Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingUnit:1>, [[engProcessor, logProcessor, engProcessor],
                                                                                   [calProcessor, <appliedenergistics2:tile.BlockCraftingUnit>, calProcessor], 
                                                                                   [engProcessor, logProcessor, engProcessor]], <liquid:invar.molten> * 1296, 500);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage>);
Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage>, [[<appliedenergistics2:item.ItemMultiMaterial:35>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:35>],
                                                                                    [<ore:circuitAdvanced>, <appliedenergistics2:tile.BlockCraftingUnit>, <ore:circuitAdvanced>], 
                                                                                    [<appliedenergistics2:item.ItemMultiMaterial:35>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:35>]], <liquid:invar.molten> * 1296, 100);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage:1>);
Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage:1>, [[<appliedenergistics2:item.ItemMultiMaterial:36>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:36>],
                                                                                      [<ore:circuitAdvanced>, <appliedenergistics2:tile.BlockCraftingStorage>, <ore:circuitAdvanced>], 
                                                                                      [<appliedenergistics2:item.ItemMultiMaterial:36>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:36>]], <liquid:invar.molten> * 2592, 200);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage:2>);
Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage:2>, [[<appliedenergistics2:item.ItemMultiMaterial:37>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:37>],
                                                                                      [<ore:circuitAdvanced>, <appliedenergistics2:tile.BlockCraftingStorage:1>, <ore:circuitAdvanced>], 
                                                                                      [<appliedenergistics2:item.ItemMultiMaterial:37>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:37>]], <liquid:invar.molten> * 3888, 300);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage:3>);
Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage:3>, [[<appliedenergistics2:item.ItemMultiMaterial:38>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:38>],
                                                                                      [<ore:circuitAdvanced>, <appliedenergistics2:tile.BlockCraftingStorage:2>, <ore:circuitAdvanced>], 
                                                                                      [<appliedenergistics2:item.ItemMultiMaterial:38>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:38>]], <liquid:invar.molten> * 5184, 400);
recipes.remove(<appliedenergistics2:tile.BlockCraftingMonitor>);
Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingMonitor>, [[<appliedenergistics2:tile.BlockCraftingUnit>, <appliedenergistics2:item.ItemMultiPart:400>, null],
                                                                                    [null, null, null], 
                                                                                    [null, null, null]], <liquid:steel.molten> * 144, 100);
recipes.remove(<appliedenergistics2:tile.BlockMolecularAssembler>);
Carpenter.addRecipe(<appliedenergistics2:tile.BlockMolecularAssembler>, [[<Creator:compactInvarPlate>, lampQuartz, <Creator:compactInvarPlate>],
                                                                                       [anniCore, <ore:crafterWood>, formCore], 
                                                                                       [<Creator:compactInvarPlate>, lampQuartz, <Creator:compactInvarPlate>]], <liquid:steel.molten> * 2592, 1000);

#manipulator
recipes.remove(<appliedenergistics2:item.ToolEntropyManipulator>);
Carpenter.addRecipe(<appliedenergistics2:item.ToolEntropyManipulator>, [[<ore:crystalPureFluix>, <appliedenergistics2:tile.BlockEnergyCell>, null],
                                                                                      [engProcessor, <ore:ingotSteel>, null], 
                                                                                      [null, null, <ore:ingotSteel>]], <liquid:steel.molten> * 288, 20);

#wireless terminal
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:41>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:41>, [[null, pearlFluix], [<Creator:compactInvarPlate>, <appliedenergistics2:item.ItemMultiPart:140>, <Creator:compactInvarPlate>], [null, <Creator:compactInvarPlate>]]);
recipes.remove(<appliedenergistics2:item.ToolWirelessTerminal>);
Carpenter.addRecipe(<appliedenergistics2:item.ToolWirelessTerminal>, [[null, <appliedenergistics2:item.ItemMultiMaterial:41>, null],
                                                                                    [engProcessor, <appliedenergistics2:item.ItemMultiPart:380>, logProcessor], 
                                                                                    [<appliedenergistics2:tile.BlockDenseEnergyCell>, <ore:circuitAdvanced>, <appliedenergistics2:tile.BlockDenseEnergyCell>]], <liquid:steel.molten> * 1296, 100);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:42>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:42> * 2,  [[<ore:dustFluix>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:dustEnder>], [engProcessor, <StevesCarts:ModuleComponents:45>, engProcessor], [<StevesCarts:ModuleComponents:49>, <StevesCarts:ModuleComponents:49>, <StevesCarts:ModuleComponents:49>]]);

#staff
recipes.remove(<appliedenergistics2:item.ToolChargedStaff>);
recipes.addShaped(<appliedenergistics2:item.ToolChargedStaff>, [[<ore:crystalChargedCertusQuartz>], [null, <ore:ingotSteel>], [null, null, <ore:ingotSteel>]]);

#cannon
recipes.remove(<appliedenergistics2:item.ToolMassCannon>);
recipes.addShaped(<appliedenergistics2:item.ToolMassCannon>, [[<ore:ingotInvar>, <ore:ingotInvar>, formCore], [<appliedenergistics2:item.ItemMultiMaterial:36>, <appliedenergistics2:tile.BlockEnergyCell>], [<ore:ingotInvar>]]);

#memory card
recipes.remove(<appliedenergistics2:item.ToolMemoryCard>);
recipes.addShaped(<appliedenergistics2:item.ToolMemoryCard>, [[calProcessor, <Creator:compactSteelPlate>, <Creator:compactSteelPlate>], [<ore:circuitAdvanced>, logProcessor, <ore:circuitAdvanced>], [<Creator:compactGoldPlate>, <ore:dustRedstone>, <Creator:compactGoldPlate>]]);

#light detector
recipes.remove(<appliedenergistics2:tile.BlockLightDetector>);
recipes.addShaped(<appliedenergistics2:tile.BlockLightDetector>, [[<ore:gemQuartz>, <ore:ingotSteel>]]);

#view cell
recipes.remove(<appliedenergistics2:item.ItemViewCell>);
recipes.addShaped(<appliedenergistics2:item.ItemViewCell>, [[glassQuartz, <ore:dustRedstone>, glassQuartz], [<ore:dustRedstone>, <ore:anycertusquartz
>, <ore:dustRedstone>], [<Creator:compactInvarPlate>, <Creator:compactInvarPlate>, <Creator:compactInvarPlate>]]);

#storage cell
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:39>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:39>, [[lampQuartz, <ProjRed|Core:projectred.core.part:13>, lampQuartz], [<ProjRed|Core:projectred.core.part:59>, null, <ProjRed|Core:projectred.core.part:14>], [<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>]]);
recipes.remove(<extracells:storage.casing>);
Carpenter.addRecipe(<extracells:storage.casing>, [[<ore:blockGlassHardened>, <ore:dustFluix>, <ore:blockGlassHardened>],
                                                                [<ore:dustFluix>, <appliedenergistics2:item.ItemMultiMaterial:39>, <ore:dustFluix>], 
                                                                [<StevesCarts:ModuleComponents:49>, <StevesCarts:ModuleComponents:49>, <StevesCarts:ModuleComponents:49>]], <liquid:silver.molten> * 288, 200);
recipes.remove(<extracells:storage.casing:1>);
Carpenter.addRecipe(<extracells:storage.casing:1>, [[<ore:blockGlassHardened>, <ore:dustFluix>, <ore:blockGlassHardened>],
                                                                  [<ore:dustFluix>, <extracells:storage.casing>, <ore:dustFluix>], 
                                                                  [<extracells:certustank>, <extracells:certustank>, <extracells:certustank>]], <liquid:silver.molten> * 288, 400);
recipes.remove(<extracells:storage.casing:2>);
Carpenter.addRecipe(<extracells:storage.casing:2>, [[<ore:blockGlassHardenedIlluminated>, <ore:dustFluix>, <ore:blockGlassHardenedIlluminated>],
                                                                  [<ore:dustFluix>, <extracells:storage.casing>, <ore:dustFluix>], 
                                                                  [<Mekanism:GasTank>.withTag({tier: 3}), <Mekanism:GasTank>.withTag({tier: 3}), <Mekanism:GasTank>.withTag({tier: 3})]], <liquid:osmium> * 288, 600);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:35>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:35>, [[<ore:dustElectrotine>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:dustElectrotine>], [<appliedenergistics2:item.ItemMultiMaterial:10>, logProcessor, <appliedenergistics2:item.ItemMultiMaterial:10>], [<ore:dustElectrotine>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:dustElectrotine>]]);
recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.1k>);
Carpenter.addRecipe(<appliedenergistics2:item.ItemBasicStorageCell.1k>, [[<appliedenergistics2:item.ItemMultiMaterial:35>, calProcessor, <appliedenergistics2:item.ItemMultiMaterial:35>],
                                                                                       [engProcessor, <appliedenergistics2:item.ItemMultiMaterial:39>, logProcessor], 
                                                                                       [<appliedenergistics2:item.ItemMultiMaterial:35>, <ore:circuitAdvanced>, <appliedenergistics2:item.ItemMultiMaterial:35>]], <liquid:steel.molten> * 1296, 1000);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:36>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:36>, [[<ore:dustElectrotine>, calProcessor, <ore:dustElectrotine>], [<appliedenergistics2:item.ItemMultiMaterial:35>, lampQuartz, <appliedenergistics2:item.ItemMultiMaterial:35>], [<ore:dustElectrotine>, <appliedenergistics2:item.ItemMultiMaterial:35>, <ore:dustElectrotine>]]);
recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.4k>);
Carpenter.addRecipe(<appliedenergistics2:item.ItemBasicStorageCell.4k>, [[<appliedenergistics2:item.ItemMultiMaterial:36>, calProcessor, <appliedenergistics2:item.ItemMultiMaterial:36>],
                                                                                       [engProcessor, <appliedenergistics2:item.ItemBasicStorageCell.1k>, logProcessor], 
                                                                                       [<appliedenergistics2:item.ItemMultiMaterial:36>, <ore:circuitAdvanced>, <appliedenergistics2:item.ItemMultiMaterial:36>]], <liquid:steel.molten> * 1008, 800);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:37>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:37>, [[<Creator:Sunnarium>, engProcessor, <Creator:Sunnarium>], [<appliedenergistics2:item.ItemMultiMaterial:36>, <ProjRed|Core:projectred.core.part:59>, <appliedenergistics2:item.ItemMultiMaterial:36>], [<Creator:Sunnarium>, <appliedenergistics2:item.ItemMultiMaterial:36>, <Creator:Sunnarium>]]);
recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.16k>);
Carpenter.addRecipe(<appliedenergistics2:item.ItemBasicStorageCell.16k>, [[<appliedenergistics2:item.ItemMultiMaterial:37>, calProcessor, <appliedenergistics2:item.ItemMultiMaterial:37>],
                                                                                       [engProcessor, <appliedenergistics2:item.ItemBasicStorageCell.4k>, logProcessor], 
                                                                                       [<appliedenergistics2:item.ItemMultiMaterial:37>, <ore:circuitAdvanced>, <appliedenergistics2:item.ItemMultiMaterial:37>]], <liquid:steel.molten> * 720, 600);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:38>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:38>, [[<Creator:Sunnarium>, engProcessor, <Creator:Sunnarium>], [<appliedenergistics2:item.ItemMultiMaterial:37>, <ProjRed|Core:projectred.core.part:59>, <appliedenergistics2:item.ItemMultiMaterial:37>], [<Creator:Sunnarium>, <appliedenergistics2:item.ItemMultiMaterial:37>, <Creator:Sunnarium>]]);
recipes.remove(<appliedenergistics2:item.ItemBasicStorageCell.64k>);
Carpenter.addRecipe(<appliedenergistics2:item.ItemBasicStorageCell.64k>, [[<appliedenergistics2:item.ItemMultiMaterial:38>, calProcessor, <appliedenergistics2:item.ItemMultiMaterial:38>],
                                                                                       [engProcessor, <appliedenergistics2:item.ItemBasicStorageCell.4k>, logProcessor], 
                                                                                       [<appliedenergistics2:item.ItemMultiMaterial:38>, <ore:circuitAdvanced>, <appliedenergistics2:item.ItemMultiMaterial:38>]], <liquid:steel.molten> * 432, 600);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:32>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:32>, [[<Creator:Sunnarium>, pearlFluix, <Creator:Sunnarium>], [pearlFluix, engProcessor, pearlFluix], [<Creator:Sunnarium>, pearlFluix, <Creator:Sunnarium>]]);
recipes.remove(<appliedenergistics2:item.ItemSpatialStorageCell.2Cubed>);
Carpenter.addRecipe(<appliedenergistics2:item.ItemSpatialStorageCell.2Cubed>, [[<appliedenergistics2:item.ItemMultiMaterial:32>, calProcessor, <appliedenergistics2:item.ItemMultiMaterial:32>],
                                                                                       [engProcessor, <extracells:storage.casing>, logProcessor], 
                                                                                       [<appliedenergistics2:item.ItemMultiMaterial:32>, <ore:circuitElite>, <appliedenergistics2:item.ItemMultiMaterial:32>]], <liquid:steel.molten> * 1296, 1000);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:33>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:33>, [[<Creator:Sunnarium>, <appliedenergistics2:item.ItemMultiMaterial:32>, <Creator:Sunnarium>], [<appliedenergistics2:item.ItemMultiMaterial:32>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:32>], [<Creator:Sunnarium>, <appliedenergistics2:item.ItemMultiMaterial:32>, <Creator:Sunnarium>]]);
recipes.remove(<appliedenergistics2:item.ItemSpatialStorageCell.16Cubed>);
Carpenter.addRecipe(<appliedenergistics2:item.ItemSpatialStorageCell.16Cubed>, [[<appliedenergistics2:item.ItemMultiMaterial:33>, calProcessor, <appliedenergistics2:item.ItemMultiMaterial:33>],
                                                                                       [engProcessor, <appliedenergistics2:item.ItemSpatialStorageCell.2Cubed>, logProcessor], 
                                                                                       [<appliedenergistics2:item.ItemMultiMaterial:33>, <ore:circuitElite>, <appliedenergistics2:item.ItemMultiMaterial:33>]], <liquid:steel.molten> * 1296, 1000);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:34>);
AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:34>, 500000, [<Creator:Sunnarium> * 4, <appliedenergistics2:item.ItemMultiMaterial:33> * 4, engProcessor]);
recipes.remove(<appliedenergistics2:item.ItemSpatialStorageCell.128Cubed>);
AssemblyTable.addRecipe(<appliedenergistics2:item.ItemSpatialStorageCell.128Cubed>, 1000000, [<appliedenergistics2:item.ItemMultiMaterial:34> * 4, <appliedenergistics2:item.ItemSpatialStorageCell.16Cubed>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:3>]);
recipes.remove(<extracells:storage.component>);
AssemblyTable.addRecipe(<extracells:storage.component>, 1000000, [<Creator:Sunnarium> * 4, <appliedenergistics2:item.ItemMultiMaterial:38> * 4, engProcessor * 4, <ProjRed|Core:projectred.core.part:59> * 4]);
recipes.remove(<extracells:storage.physical>);
AssemblyTable.addRecipe(<extracells:storage.physical>, 2000000, [<extracells:storage.component> * 4, <appliedenergistics2:item.ItemBasicStorageCell.64k>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:3>]);
recipes.remove(<extracells:storage.component:1>);
AssemblyTable.addRecipe(<extracells:storage.component:1>, 1500000, [<Creator:Sunnarium> * 4, <extracells:storage.component> * 4, engProcessor * 4, <ProjRed|Core:projectred.core.part:59> * 4]);
recipes.remove(<extracells:storage.physical:1>);
AssemblyTable.addRecipe(<extracells:storage.physical:1>, 3000000, [<extracells:storage.component:1> * 4, <extracells:storage.physical>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:3> * 2]);
recipes.remove(<extracells:storage.component:2>);
AssemblyTable.addRecipe(<extracells:storage.component:2>, 2000000, [<ProjRed|Core:projectred.core.part:14>, <extracells:storage.component:1> * 4, engProcessor * 4, <ProjRed|Core:projectred.core.part:59> * 4]);
recipes.remove(<extracells:storage.physical:2>);
AssemblyTable.addRecipe(<extracells:storage.physical:2>, 4000000, [<extracells:storage.component:2> * 4, <extracells:storage.physical:1>, calProcessor * 2, engProcessor * 2, logProcessor * 2, <Mekanism:ControlCircuit:3> * 3]);
recipes.remove(<extracells:storage.component:3>);
AssemblyTable.addRecipe(<extracells:storage.component:3>, 2500000, [<ProjRed|Core:projectred.core.part:14> * 2, <extracells:storage.component:1> * 4, engProcessor * 4, <ProjRed|Core:projectred.core.part:59> * 4]);
recipes.remove(<extracells:storage.physical:3>);
AssemblyTable.addRecipe(<extracells:storage.physical:3>, 5000000, [<extracells:storage.component:3> * 4, <extracells:storage.physical:2>, calProcessor * 4, engProcessor * 4, logProcessor * 4, <Mekanism:ControlCircuit:3> * 4]);
recipes.remove(<extracells:storage.physical:4>);
AssemblyTable.addRecipe(<extracells:storage.physical:4>, 500000, [<appliedenergistics2:item.ItemBasicStorageCell.16k>, <extracells:storage.casing>, <StorageDrawers:fullDrawers1>]);
recipes.remove(<extracells:storage.component:4>);
recipes.addShaped(<extracells:storage.component:4>, [[<ore:gemLapis>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:gemLapis>], [<appliedenergistics2:item.ItemMultiMaterial:10>, logProcessor, <appliedenergistics2:item.ItemMultiMaterial:10>], [<ore:gemLapis>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:gemLapis>]]);
recipes.remove(<extracells:storage.fluid>);
AssemblyTable.addRecipe(<extracells:storage.fluid>, 500000, [<extracells:storage.component:4> * 4, <extracells:storage.casing>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:2>]);
recipes.remove(<extracells:storage.component:5>);
recipes.addShaped(<extracells:storage.component:5>, [[<ore:gemLapis>, calProcessor, <ore:gemLapis>], [<extracells:storage.component:4>, lampQuartz, <extracells:storage.component:4>], [<ore:gemLapis>, <extracells:storage.component:4>, <ore:gemLapis>]]);
recipes.remove(<extracells:storage.fluid:1>);
AssemblyTable.addRecipe(<extracells:storage.fluid:1>, 1000000, [<extracells:storage.component:5> * 4, <extracells:storage.fluid>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:2>]);
recipes.remove(<extracells:storage.component:6>);
recipes.addShaped(<extracells:storage.component:6>, [[<ore:gemLapis>, engProcessor, <ore:gemLapis>], [<extracells:storage.component:5>, lampQuartz, <extracells:storage.component:5>], [<ore:gemLapis>, <extracells:storage.component:5>, <ore:gemLapis>]]);
recipes.remove(<extracells:storage.fluid:2>);
AssemblyTable.addRecipe(<extracells:storage.fluid:2>, 1500000, [<extracells:storage.component:6> * 4, <extracells:storage.fluid:1>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:2>]);
recipes.remove(<extracells:storage.component:7>);
recipes.addShaped(<extracells:storage.component:7>, [[<ore:gemLapis>, engProcessor, <ore:gemLapis>], [<extracells:storage.component:6>, lampQuartz, <extracells:storage.component:6>], [<ore:gemLapis>, <extracells:storage.component:6>, <ore:gemLapis>]]);
recipes.remove(<extracells:storage.fluid:3>);
AssemblyTable.addRecipe(<extracells:storage.fluid:3>, 2000000, [<extracells:storage.component:7> * 4, <extracells:storage.fluid:2>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:2>]);
recipes.remove(<extracells:storage.component:8>);
AssemblyTable.addRecipe(<extracells:storage.component:8>, 1000000, [<minecraft:dye:4> * 4, <extracells:storage.component:7> * 4, engProcessor * 4, logProcessor * 4]);
recipes.remove(<extracells:storage.fluid:4>);
AssemblyTable.addRecipe(<extracells:storage.fluid:4>, 2500000, [<extracells:storage.component:8> * 4, <extracells:storage.fluid:3>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:3>]);
recipes.remove(<extracells:storage.component:9>);
AssemblyTable.addRecipe(<extracells:storage.component:9>, 1500000, [<minecraft:dye:4> * 4, <extracells:storage.component:8> * 4, engProcessor * 4, logProcessor * 4]);
recipes.remove(<extracells:storage.fluid:5>);
AssemblyTable.addRecipe(<extracells:storage.fluid:5>, 3000000, [<extracells:storage.component:9> * 4, <extracells:storage.fluid:4>, calProcessor * 2, engProcessor * 2, logProcessor * 2, <Mekanism:ControlCircuit:3> * 2]);
recipes.remove(<extracells:storage.component:10>);
AssemblyTable.addRecipe(<extracells:storage.component:10>, 2000000, [<minecraft:dye:4> * 4, <extracells:storage.component:9> * 4, engProcessor * 4, logProcessor * 4]);
recipes.remove(<extracells:storage.fluid:6>);
AssemblyTable.addRecipe(<extracells:storage.fluid:6>, 3500000, [<extracells:storage.component:10> * 4, <extracells:storage.fluid:5>, calProcessor * 4, engProcessor * 4, logProcessor * 4, <Mekanism:ControlCircuit:3> * 4]);
recipes.remove(<extracells:storage.component:11>);
recipes.addShaped(<extracells:storage.component:11>, [[<ore:ingotOsmium>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:ingotOsmium>], [<appliedenergistics2:item.ItemMultiMaterial:10>, logProcessor, <appliedenergistics2:item.ItemMultiMaterial:10>], [<ore:ingotOsmium>, <appliedenergistics2:item.ItemMultiMaterial:10>, <ore:ingotOsmium>]]);
recipes.remove(<extracells:storage.gas>);
AssemblyTable.addRecipe(<extracells:storage.gas>, 500000, [<extracells:storage.component:11> * 4, <extracells:storage.casing>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:2>]);
recipes.remove(<extracells:storage.component:12>);
recipes.addShaped(<extracells:storage.component:12>, [[<ore:ingotOsmium>, calProcessor, <ore:ingotOsmium>], [<extracells:storage.component:11>, lampQuartz, <extracells:storage.component:11>], [<ore:ingotOsmium>, <extracells:storage.component:11>, <ore:ingotOsmium>]]);
recipes.remove(<extracells:storage.gas:1>);
AssemblyTable.addRecipe(<extracells:storage.gas:1>, 1000000, [<extracells:storage.component:12> * 4, <extracells:storage.gas>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:2>]);
recipes.remove(<extracells:storage.component:13>);
recipes.addShaped(<extracells:storage.component:13>, [[<ore:ingotOsmium>, engProcessor, <ore:ingotOsmium>], [<extracells:storage.component:12>, lampQuartz, <extracells:storage.component:12>], [<ore:ingotOsmium>, <extracells:storage.component:12>, <ore:ingotOsmium>]]);
recipes.remove(<extracells:storage.gas:2>);
AssemblyTable.addRecipe(<extracells:storage.gas:2>, 1500000, [<extracells:storage.component:13> * 4, <extracells:storage.gas:1>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:2>]);
recipes.remove(<extracells:storage.component:14>);
recipes.addShaped(<extracells:storage.component:14>, [[<ore:ingotOsmium>, engProcessor, <ore:ingotOsmium>], [<extracells:storage.component:13>, lampQuartz, <extracells:storage.component:13>], [<ore:ingotOsmium>, <extracells:storage.component:13>, <ore:ingotOsmium>]]);
recipes.remove(<extracells:storage.gas:3>);
AssemblyTable.addRecipe(<extracells:storage.gas:3>, 2000000, [<extracells:storage.component:14> * 4, <extracells:storage.gas:2>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:2>]);
recipes.remove(<extracells:storage.component:15>);
AssemblyTable.addRecipe(<extracells:storage.component:15>, 1000000, [<Mekanism:Ingot:1> * 4, <extracells:storage.component:14> * 4, engProcessor * 4, logProcessor * 4]);
recipes.remove(<extracells:storage.gas:4>);
AssemblyTable.addRecipe(<extracells:storage.gas:4>, 2500000, [<extracells:storage.component:15> * 4, <extracells:storage.gas:3>, calProcessor, engProcessor, logProcessor, <Mekanism:ControlCircuit:3>]);
recipes.remove(<extracells:storage.component:16>);
AssemblyTable.addRecipe(<extracells:storage.component:16>, 1500000, [<Mekanism:Ingot:1> * 4, <extracells:storage.component:15> * 4, engProcessor * 4, logProcessor * 4]);
recipes.remove(<extracells:storage.gas:5>);
AssemblyTable.addRecipe(<extracells:storage.gas:5>, 3000000, [<extracells:storage.component:16> * 4, <extracells:storage.gas:4>, calProcessor * 2, engProcessor * 2, logProcessor * 2, <Mekanism:ControlCircuit:3> * 2]);
recipes.remove(<extracells:storage.component:17>);
AssemblyTable.addRecipe(<extracells:storage.component:17>, 2000000, [<Mekanism:Ingot:1> * 4, <extracells:storage.component:16> * 4, engProcessor * 4, logProcessor * 4]);
recipes.remove(<extracells:storage.gas:6>);
AssemblyTable.addRecipe(<extracells:storage.gas:6>, 3500000, [<extracells:storage.component:17> * 4, <extracells:storage.gas:5>, calProcessor * 4, engProcessor * 4, logProcessor * 4, <Mekanism:ControlCircuit:3> * 4]);

#crystal seed
recipes.remove(<appliedenergistics2:item.ItemCrystalSeed>);
recipes.addShaped(<appliedenergistics2:item.ItemCrystalSeed> * 6, [[null, <ore:crystalChargedCertusQuartz>], [<ore:dustCertusQuartz>, <ore:sand>, <ore:dustCertusQuartz>], [null, <ore:crystalChargedCertusQuartz>]]);
recipes.remove(<appliedenergistics2:item.ItemCrystalSeed:600>);
recipes.addShaped(<appliedenergistics2:item.ItemCrystalSeed:600> * 6, [[null, <ore:crystalChargedCertusQuartz>], [<ore:dustQuartz>, <ore:sand>, <ore:dustQuartz>], [null, <ore:crystalChargedCertusQuartz>]]);
recipes.remove(<appliedenergistics2:item.ItemCrystalSeed:1200>);
recipes.addShaped(<appliedenergistics2:item.ItemCrystalSeed:1200> * 6, [[null, <ore:crystalChargedCertusQuartz>], [<ore:dustFluix>, <ore:sand>, <ore:dustFluix>], [null, <ore:crystalChargedCertusQuartz>]]);

#color applicator
recipes.remove(<appliedenergistics2:item.ToolColorApplicator>);
recipes.addShaped(<appliedenergistics2:item.ToolColorApplicator>, [[formCore, <ore:ingotSteel>], [<ore:ingotSteel>, <appliedenergistics2:item.ItemMultiMaterial:36>], [null, null, <appliedenergistics2:tile.BlockEnergyCell>]]);

#card
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:25>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:25>, [[<ore:ingotElectrum>, <ore:ingotSteel>], [<ore:chipsetRed>, calProcessor, <ore:ingotSteel>], [<ore:ingotElectrum>, <ore:ingotSteel>]]);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:28>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:28>, [[<ore:gemCrystalFlux>, <ore:ingotSteel>], [<ore:chipsetDiamond>, <appliedenergistics2:item.ItemMultiMaterial:25>, <ore:ingotSteel>], [<ore:gemCrystalFlux>, <ore:ingotSteel>]]);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:27>);
AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:27>, 200000, [<appliedenergistics2:item.ItemMultiMaterial:25>, <minecraft:chest>]);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:53>);
AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:53>, 200000, [<appliedenergistics2:item.ItemMultiMaterial:25>, <minecraft:crafting_table>]);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:26>);
AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:26>, 200000, [<appliedenergistics2:item.ItemMultiMaterial:25>, <minecraft:redstone_torch>]);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:29>);
AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:29>, 500000, [<appliedenergistics2:item.ItemMultiMaterial:28>, <minecraft:wool:*>]);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:31>);
AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:31>, 500000, [<appliedenergistics2:item.ItemMultiMaterial:28>, <minecraft:redstone_torch>]);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:30>);
AssemblyTable.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:30>, 1000000, [<appliedenergistics2:item.ItemMultiMaterial:28>, <ThermalExpansion:augment:130> * 4]);

#pattern
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:52>);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:52>, [[lampQuartz, <Creator:Sunnarium>, lampQuartz], [<Creator:Sunnarium>, <appliedenergistics2:item.ItemMultiMaterial:39>, <Creator:Sunnarium>], [<StevesCarts:ModuleComponents:49>, <StevesCarts:ModuleComponents:49>, <StevesCarts:ModuleComponents:49>]]);

print("Initialized 'AppliedEnergistics.zs'");