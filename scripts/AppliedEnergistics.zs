#Name: AppliedEnergistics.zs
#Author: Si_hen

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
recipes.addShaped(lampQuartz, [[<Creator:Sunnarium>, glassQuartz, <Creator:Sunnarium>]]);

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
recipes.remove(formCore);

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
recipes.addShaped(<appliedenergistics2:tile.BlockSkyCompass>, [[null, <ore:ingotInvar>], [<ore:ingotSteel>, anycertusquartz, <ore:ingotSteel>], [null, <ore:ingotInvar>]]);

#inscriber
recipes.remove(<appliedenergistics2:tile.BlockInscriber>);
recipes.addShaped(<appliedenergistics2:tile.BlockInscriber>, [[<ore:ingotInvar>, <minecraft:sticky_piston>, <ore:ingotInvar>], [fluix, <ImmersiveEngineering:metalMultiblock:2>, <ore:circuitAdvanced>], [<ore:ingotInvar>, <minecraft:sticky_piston>, <ore:ingotInvar>]]);

#charger
recipes.remove(<appliedenergistics2:tile.BlockCharger>);
recipes.addShaped(<appliedenergistics2:tile.BlockCharger>, [[<ore:ingotInvar>, <ore:circuitAdvanced>, <ore:ingotInvar>], [<ore:ingotInvar>], [<ore:ingotInvar>, fluix, <ore:ingotInvar>]]);

#me chest
recipes.remove(<appliedenergistics2:tile.BlockChest>);
recipes.addShaped(<appliedenergistics2:tile.BlockChest>, [[glassQuartz, <appliedenergistics2:item.ItemMultiPart:380>, glassQuartz], [galCable, <IronChest:BlockIronChest:6>, galCable], [<ore:ingotSteel>, <ore:crystalFluix>, <ore:ingotSteel>]]);

#energy acceptor
recipes.remove(<appliedenergistics2:tile.BlockEnergyAcceptor>);
recipes.addShaped(<appliedenergistics2:tile.BlockEnergyAcceptor>, [[<ore:ingotInvar>, fluix, <ore:ingotInvar>], [glassQuartz, <ore:circuitAdvanced>, glassQuartz], [<ore:ingotInvar>, fluix, <ore:ingotInvar>]]);

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
recipes.addShaped(<appliedenergistics2:tile.BlockSecurity>, [[<ore:ingotSteel>, <appliedenergistics2:tile.BlockChest>, <ore:ingotSteel>], [galCable, <appliedenergistics2:item.ToolBiometricCard>, galCable], [<ore:ingotSteel>, <ore:circuitAdvanced>, <ore:ingotSteel>]]);
recipes.remove(<appliedenergistics2:item.ToolBiometricCard>);
recipes.addShaped(<appliedenergistics2:item.ToolBiometricCard>, [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>]]);

#quantum network bridge
recipes.remove(<appliedenergistics2:tile.BlockQuantumRing>);
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumRing>, [[<StevesCarts:ModuleComponents:49>, logProcessor, <StevesCarts:ModuleComponents:49>], [engProcessor, <appliedenergistics2:tile.BlockDenseEnergyCell>, <appliedenergistics2:item.ItemMultiPart:76>], [<StevesCarts:ModuleComponents:49>, calProcessor, <StevesCarts:ModuleComponents:49>]]);
recipes.remove(<appliedenergistics2:tile.BlockQuantumLinkChamber>);
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumLinkChamber>, [[lampQuartz, pearlFluix, lampQuartz], [pearlFluix, null, pearlFluix], [lampQuartz, pearlFluix, lampQuartz]]);

#spatial pylon
recipes.remove(<appliedenergistics2:tile.BlockSpatialPylon>);
recipes.addShaped(<appliedenergistics2:tile.BlockSpatialPylon>, [[lampQuartz, <StevesCarts:ModuleComponents:49>, lampQuartz], [<ore:dustFluix>, <ore:crystalPureFluix>, <ore:dustFluix>], [lampQuartz, <StevesCarts:ModuleComponents:49>, lampQuartz]]);
recipes.remove(<appliedenergistics2:tile.BlockSpatialIOPort>);
recipes.addShaped(<appliedenergistics2:tile.BlockSpatialIOPort>, [[glassQuartz, glassQuartz, glassQuartz], [galCable, <appliedenergistics2:tile.BlockIOPort>, galCable], [<ore:ingotInvar>, engProcessor, <ore:ingotInvar>]]);

#me drive
recipes.remove(<appliedenergistics2:tile.BlockDrive>);
recipes.addShaped(<appliedenergistics2:tile.BlockDrive>, [[<ore:ingotInvar>, engProcessor, <ore:ingotInvar>], [galCable, <appliedenergistics2:tile.BlockChest>, galCable], [<ore:ingotInvar>, engProcessor, <ore:ingotInvar>]]);

#me interface
recipes.remove(<appliedenergistics2:tile.BlockInterface>);
recipes.addShaped(<appliedenergistics2:tile.BlockInterface>, [[<ore:ingotSteel>, lampQuartz, <ore:ingotSteel>], [anniCore, engProcessor, formCore], [<ore:ingotSteel>, lampQuartz, <ore:ingotSteel>]]);

#cell workbench
recipes.remove(<appliedenergistics2:tile.BlockCellWorkbench>);
recipes.addShaped(<appliedenergistics2:tile.BlockCellWorkbench>, [[<ore:blockWool>, calProcessor, <ore:blockWool>], [<ore:ingotLead>, <IronChest:BlockIronChest>, <ore:ingotLead>], [<ore:ingotLead>, <Forestry:factory2:2>, <ore:ingotLead>]]);

#me io
recipes.remove(<appliedenergistics2:tile.BlockIOPort>);
recipes.addShaped(<appliedenergistics2:tile.BlockIOPort>, [[glassQuartz, glassQuartz, glassQuartz], [pearlFluix, <appliedenergistics2:tile.BlockDrive>, pearlFluix], [<ore:ingotSteel>, logProcessor, <ore:ingotSteel>]]);

#condenser
recipes.remove(<appliedenergistics2:tile.BlockCondenser>);
recipes.addShaped(<appliedenergistics2:tile.BlockCondenser>, [[<appliedenergistics2:tile.BlockSkyStone:1>, <appliedenergistics2:tile.BlockQuantumRing>, <appliedenergistics2:tile.BlockSkyStone:1>], [lampQuartz, pearlFluix, lampQuartz], [<appliedenergistics2:tile.BlockSkyStone:1>, <appliedenergistics2:tile.BlockQuantumRing>, <appliedenergistics2:tile.BlockSkyStone:1>]]);

#accelerator
recipes.remove(<appliedenergistics2:tile.BlockQuartzGrowthAccelerator>);
recipes.addShaped(<appliedenergistics2:tile.BlockQuartzGrowthAccelerator>, [[<ore:ingotInvar>, galCable, <ore:ingotInvar>], [glassQuartz, <appliedenergistics2:tile.BlockFluix>, glassQuartz], [<ore:ingotInvar>, galCable, <ore:ingotInvar>]]);

#crafting unit
recipes.remove(<appliedenergistics2:tile.BlockCraftingUnit>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingUnit>, [[<ore:ingotInvar>, calProcessor, <ore:ingotInvar>],
                                                                                 [galCable, logProcessor, galCable], 
                                                                                 [<ore:ingotInvar>, calProcessor, <ore:ingotInvar>]], <liquid:steel.molten> * 1296, 60);
recipes.remove(<appliedenergistics2:tile.BlockCraftingUnit:1>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingUnit:1>, [[engProcessor, logProcessor, engProcessor],
                                                                                   [calProcessor, <appliedenergistics2:tile.BlockCraftingUnit>, calProcessor], 
                                                                                   [engProcessor, logProcessor, engProcessor]], <liquid:invar.molten> * 1296, 500);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage>, [[<appliedenergistics2:item.ItemMultiMaterial:35>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:35>],
                                                                                    [<ore:circuitAdvanced>, <appliedenergistics2:tile.BlockCraftingUnit>, <ore:circuitAdvanced>], 
                                                                                    [<appliedenergistics2:item.ItemMultiMaterial:35>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:35>]], <liquid:invar.molten> * 1296, 100);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage:1>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage:1>, [[<appliedenergistics2:item.ItemMultiMaterial:36>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:36>],
                                                                                      [<ore:circuitAdvanced>, <appliedenergistics2:tile.BlockCraftingStorage>, <ore:circuitAdvanced>], 
                                                                                      [<appliedenergistics2:item.ItemMultiMaterial:36>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:36>]], <liquid:invar.molten> * 2592, 200);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage:2>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage:2>, [[<appliedenergistics2:item.ItemMultiMaterial:37>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:37>],
                                                                                      [<ore:circuitAdvanced>, <appliedenergistics2:tile.BlockCraftingStorage:1>, <ore:circuitAdvanced>], 
                                                                                      [<appliedenergistics2:item.ItemMultiMaterial:37>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:37>]], <liquid:invar.molten> * 3888, 300);
recipes.remove(<appliedenergistics2:tile.BlockCraftingStorage:3>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingStorage:3>, [[<appliedenergistics2:item.ItemMultiMaterial:38>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:38>],
                                                                                      [<ore:circuitAdvanced>, <appliedenergistics2:tile.BlockCraftingStorage:2>, <ore:circuitAdvanced>], 
                                                                                      [<appliedenergistics2:item.ItemMultiMaterial:38>, engProcessor, <appliedenergistics2:item.ItemMultiMaterial:38>]], <liquid:invar.molten> * 5184, 400);
recipes.remove(<appliedenergistics2:tile.BlockCraftingMonitor>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockCraftingMonitor>, [[<appliedenergistics2:tile.BlockCraftingUnit>, <appliedenergistics2:item.ItemMultiPart:400>, null],
                                                                                    [null, null, null], 
                                                                                    [null, null, null]], <liquid:steel.molten> * 144, 100);
recipes.remove(<appliedenergistics2:tile.BlockMolecularAssembler>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:tile.BlockMolecularAssembler>, [[<ore:ingotInvar>, lampQuartz, <ore:ingotInvar>],
                                                                                       [anniCore, <ore:crafterWood>, formCore], 
                                                                                       [<ore:ingotInvar>, lampQuartz, <ore:ingotInvar>]], <liquid:steel.molten> * 2592, 1000);

#manipulator
recipes.remove(<appliedenergistics2:item.ToolEntropyManipulator>);
mods.forestry.Carpenter.addRecipe(<appliedenergistics2:item.ToolEntropyManipulator>, [[<ore:crystalPureFluix>, <appliedenergistics2:tile.BlockEnergyCell>, null],
                                                                                       [engProcessor, <ore:ingotSteel>, null], 
                                                                                       [null, null, <ore:ingotSteel>]], <liquid:steel.molten> * 288, 20);









print("Initialized 'AppliedEnergistics.zs'");
