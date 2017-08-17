#Name: Creator.zs
#Author: Si_hen & Prunoideae

import mods.nei.NEI;

print("Initializing 'Creator.zs'...");

#complex
mods.railcraft.Rolling.addShaped(<Creator:ctComplex>, [[<ore:ingotCopper>, <ore:ingotCopper>, null], 
                                                       [<ore:ingotCopper>, <ore:ingotTin>, null],
                                                       [null, null, null]]);
mods.railcraft.RockCrusher.addRecipe(<Creator:ctComplex>, false, false, [<ThermalFoundation:material:41> * 4], [1]);
mods.railcraft.Rolling.addShaped(<Creator:tcsComplex>, [[<ore:ingotTin>, <ore:ingotCopper>, null], 
                                                       [<ore:ingotCopper>, <ore:ingotSilver>, null],
                                                       [null, null, null]]);
mods.railcraft.RockCrusher.addRecipe(<Creator:tcsComplex>, false, false, [<Creator:dustTincosi> * 4], [1]);
mods.railcraft.Rolling.addShaped(<Creator:iaComplex>, [[<ore:ingotIron>, <ore:ingotIron>, null], 
                                                       [<ore:ingotIron>, <ore:ingotAluminium>, null],
                                                       [null, null, null]]);
mods.railcraft.Rolling.addShaped(<Creator:iaComplex>, [[<ore:ingotIron>, <ore:ingotIron>, null], 
                                                       [<ore:ingotIron>, <ore:ingotAluminum>, null],
                                                       [null, null, null]]);
mods.railcraft.RockCrusher.addRecipe(<Creator:iaComplex>, false, false, [<Creator:dustIral> * 4], [1]);

#Tools
recipes.addShaped(<Creator:IronHammer>, [[null, <ore:ingotIron>, <ore:ingotIron>], [<ore:treatedStick>, <ore:ingotIron>, <ore:ingotIron>], [null, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<Creator:IronHammer>, [[<ore:ingotIron>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:ingotIron>, <ore:treatedStick>], [<ore:ingotIron>, <ore:ingotIron>, null]]);
recipes.addShaped(<Creator:IronWrench>, [[<ore:ingotIron>, <Creator:IronHammer>.anyDamage().transformDamage(), <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [null, <ore:ingotIron>]]);

#nether star fragment
mods.forestry.Carpenter.addRecipe(<minecraft:nether_star>, [[<Creator:nether_star_fragment>, <Creator:nether_star_fragment>, null],
                                                            [<Creator:nether_star_fragment>, <Creator:nether_star_fragment>, null], 
                                                            [null, null, null]], <liquid:lava> * 4000, 40);

#Sunnarium
mods.magneticraft.Polymerizer.addRecipe(<liquid:lava> * 1000, <minecraft:glowstone_dust>, <Creator:Sunnarium>, 500);

#gunpowder barrel
recipes.addShaped(<Prunoideae:gunpowderBarrel>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:dustGunpowder>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.addShaped(<Prunoideae:bombRemote>, [[null, <ImmersiveEngineering:coil>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part>], [<ProjRed|Core:projectred.core.part>, <minecraft:stone_button>, <ProjRed|Core:projectred.core.part>]]);

#Plates
<ore:plateGold>.add(<Creator:GoldPlate>);
<ore:plateObsidian>.add(<Creator:ObsidianPlate>);
<ore:plateBronze>.add(<Creator:BronzePlate>);
<ore:plateAluminum>.add(<Creator:AluminumPlate>);
<ore:plateAluminium>.add(<Creator:AluminumPlate>);
<ore:plateConstantan>.add(<Creator:ConstantanPlate>);
<ore:plateSilver>.add(<Creator:SilverPlate>);
<ore:plateMithril>.add(<Creator:MithrilPlate>);
<ore:plateInvar>.add(<Creator:InvarPlate>);
<ore:platePlatinum>.add(<Creator:PlatinumPlate>);
<ore:plateTungsten>.add(<Creator:TungstenPlate>);
<ore:plateLumium>.add(<Creator:LumiumPlate>);
<ore:plateElectrum>.add(<Creator:ElectrumPlate>);
<ore:plateSignalum>.add(<Creator:SignalumPlate>);
<ore:plateNickel>.add(<Creator:NickelPlate>);
<ore:plateEnderium>.add(<Creator:EnderiumPlate>);
<ore:plateOsmium>.add(<Creator:OsmiumPlate>);
<ore:plateElectricalSteel>.add(<Creator:ElectricalSteelPlate>);
<ore:plateEnergeticAlloy>.add(<Creator:EnergeticAlloyPlate>);
<ore:platePhasedGold>.add(<Creator:PhasedGoldPlate>);
<ore:plateVibrantAlloy>.add(<Creator:PhasedGoldPlate>);
<ore:plateDarkSteel>.add(<Creator:DarkSteelPlate>);

recipes.addShaped(<Creator:GoldPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotGold>], [<ore:ingotGold>]]);
mods.railcraft.Rolling.addShaped(<Creator:GoldPlate> * 4, [[<ore:ingotGold>, <ore:ingotGold>, null], 
                                                           [<ore:ingotGold>, <ore:ingotGold>, null],
                                                           [null, null, null]]);
recipes.addShaped(<Creator:ObsidianPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotObsidian>], [<ore:ingotObsidian>]]);
mods.railcraft.Rolling.addShaped(<Creator:ObsidianPlate> * 4, [[<ore:ingotObsidian>, <ore:ingotObsidian>, null], 
                                                               [<ore:ingotObsidian>, <ore:ingotObsidian>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:BronzePlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotBronze>], [<ore:ingotBronze>]]);
mods.railcraft.Rolling.addShaped(<Creator:BronzePlate> * 4, [[<ore:ingotBronze>, <ore:ingotBronze>, null], 
                                                             [<ore:ingotBronze>, <ore:ingotBronze>, null],
                                                             [null, null, null]]);
recipes.addShaped(<Creator:AluminumPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotAluminum>], [<ore:ingotAluminum>]]);
mods.railcraft.Rolling.addShaped(<Creator:AluminumPlate> * 4, [[<ore:ingotAluminum>, <ore:ingotAluminum>, null], 
                                                               [<ore:ingotAluminum>, <ore:ingotAluminum>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:AluminumPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotAluminium>], [<ore:ingotAluminium>]]);
mods.railcraft.Rolling.addShaped(<Creator:AluminumPlate> * 4, [[<ore:ingotAluminium>, <ore:ingotAluminium>, null], 
                                                               [<ore:ingotAluminium>, <ore:ingotAluminium>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:ConstantanPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotConstantan>], [<ore:ingotConstantan>]]);
mods.railcraft.Rolling.addShaped(<Creator:ConstantanPlate> * 4, [[<ore:ingotConstantan>, <ore:ingotConstantan>, null], 
                                                                 [<ore:ingotConstantan>, <ore:ingotConstantan>, null],
                                                                 [null, null, null]]);
recipes.addShaped(<Creator:SilverPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotSilver>], [<ore:ingotSilver>]]);
mods.railcraft.Rolling.addShaped(<Creator:SilverPlate> * 4, [[<ore:ingotSilver>, <ore:ingotSilver>, null], 
                                                             [<ore:ingotSilver>, <ore:ingotSilver>, null],
                                                             [null, null, null]]);
recipes.addShaped(<Creator:MithrilPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotMithril>], [<ore:ingotMithril>]]);
mods.railcraft.Rolling.addShaped(<Creator:MithrilPlate> * 4, [[<ore:ingotMithril>, <ore:ingotMithril>, null], 
                                                              [<ore:ingotMithril>, <ore:ingotMithril>, null],
                                                              [null, null, null]]);
recipes.addShaped(<Creator:InvarPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotInvar>], [<ore:ingotInvar>]]);
mods.railcraft.Rolling.addShaped(<Creator:InvarPlate> * 4, [[<ore:ingotInvar>, <ore:ingotInvar>, null], 
                                                            [<ore:ingotInvar>, <ore:ingotInvar>, null],
                                                            [null, null, null]]);
recipes.addShaped(<Creator:PlatinumPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotPlatinum>], [<ore:ingotPlatinum>]]);
mods.railcraft.Rolling.addShaped(<Creator:PlatinumPlate> * 4, [[<ore:ingotPlatinum>, <ore:ingotPlatinum>, null], 
                                                               [<ore:ingotPlatinum>, <ore:ingotPlatinum>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:TungstenPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotTungsten>], [<ore:ingotTungsten>]]);
mods.railcraft.Rolling.addShaped(<Creator:TungstenPlate> * 4, [[<ore:ingotTungsten>, <ore:ingotTungsten>, null], 
                                                               [<ore:ingotTungsten>, <ore:ingotTungsten>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:LumiumPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotLumium>], [<ore:ingotLumium>]]);
mods.railcraft.Rolling.addShaped(<Creator:LumiumPlate> * 4, [[<ore:ingotLumium>, <ore:ingotLumium>, null], 
                                                               [<ore:ingotLumium>, <ore:ingotLumium>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:ElectrumPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotElectrum>], [<ore:ingotElectrum>]]);
mods.railcraft.Rolling.addShaped(<Creator:ElectrumPlate> * 4, [[<ore:ingotElectrum>, <ore:ingotElectrum>, null], 
                                                               [<ore:ingotElectrum>, <ore:ingotElectrum>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:SignalumPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotSignalum>], [<ore:ingotSignalum>]]);
mods.railcraft.Rolling.addShaped(<Creator:SignalumPlate> * 4, [[<ore:ingotSignalum>, <ore:ingotSignalum>, null], 
                                                               [<ore:ingotSignalum>, <ore:ingotSignalum>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:NickelPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotNickel>], [<ore:ingotNickel>]]);
mods.railcraft.Rolling.addShaped(<Creator:NickelPlate> * 4, [[<ore:ingotNickel>, <ore:ingotNickel>, null], 
                                                               [<ore:ingotNickel>, <ore:ingotNickel>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:EnderiumPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotEnderium>], [<ore:ingotEnderium>]]);
mods.railcraft.Rolling.addShaped(<Creator:EnderiumPlate> * 4, [[<ore:ingotEnderium>, <ore:ingotEnderium>, null], 
                                                               [<ore:ingotEnderium>, <ore:ingotEnderium>, null],
                                                               [null, null, null]]);
recipes.addShaped(<Creator:OsmiumPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotOsmium>], [<ore:ingotOsmium>]]);
mods.railcraft.Rolling.addShaped(<Creator:OsmiumPlate> * 4, [[<ore:ingotOsmium>, <ore:ingotOsmium>, null], 
                                                             [<ore:ingotOsmium>, <ore:ingotOsmium>, null],
                                                             [null, null, null]]);
recipes.addShaped(<Creator:ElectricalSteelPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotElectricalSteel>], [<ore:ingotElectricalSteel>]]);
mods.railcraft.Rolling.addShaped(<Creator:ElectricalSteelPlate> * 4, [[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, null], 
                                                                      [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, null],
                                                                      [null, null, null]]);
recipes.addShaped(<Creator:EnergeticAlloyPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotEnergeticAlloy>], [<ore:ingotEnergeticAlloy>]]);
mods.railcraft.Rolling.addShaped(<Creator:EnergeticAlloyPlate> * 4, [[<ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, null], 
                                                                     [<ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, null],
                                                                     [null, null, null]]);
recipes.addShaped(<Creator:PhasedGoldPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotPhasedGold>], [<ore:ingotPhasedGold>]]);
mods.railcraft.Rolling.addShaped(<Creator:PhasedGoldPlate> * 4, [[<ore:ingotPhasedGold>, <ore:ingotPhasedGold>, null], 
                                                                 [<ore:ingotPhasedGold>, <ore:ingotPhasedGold>, null],
                                                                 [null, null, null]]);
recipes.addShaped(<Creator:DarkSteelPlate>, [[<Creator:IronHammer>.anyDamage().transformDamage()], [<ore:ingotDarkSteel>], [<ore:ingotDarkSteel>]]);
mods.railcraft.Rolling.addShaped(<Creator:DarkSteelPlate> * 4, [[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null], 
                                                                [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null],
                                                                [null, null, null]]);

mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactAluminumPlate>, <ore:plateAluminum>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactBronzePlate>, <ore:plateBronze>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactConstantanPlate>, <ore:plateConstantan>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactCopperPlate>, <ore:plateCopper>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactElectrumPlate>, <ore:plateElectrum>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactEnderiumPlate>, <ore:plateEnderium>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactGoldPlate>, <ore:plateGold>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactInvarPlate>, <ore:plateInvar>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactIronPlate>, <ore:plateIron>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactLeadPlate>, <ore:plateLead>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactLumiumPlate>, <ore:plateLumium>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactMithrilPlate>, <ore:plateMithril>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactNickelPlate>, <ore:plateNickel>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactObsidianPlate>, <ore:plateObsidian>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactOsmiumPlate>, <ore:plateOsmium>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactPlatinumPlate>, <ore:platePlatinum>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactSignalumPlate>, <ore:plateSignalum>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactSilverPlate>, <ore:plateSilver>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactSteelPlate>, <ore:plateSteel>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactTinPlate>, <Railcraft:part.plate:2>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactTungstenPlate>, <ore:plateTungsten>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactElectricalSteelPlate>, <ore:plateElectricalSteel>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactEnergeticAlloyPlate>, <ore:plateEnergeticAlloy>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactPhasedGoldPlate>, <ore:platePhasedGold>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactDarkSteelPlate>, <ore:plateDarkSteel>, <ImmersiveEngineering:mold>, 20000, 3);

mods.mekanism.Compressor.addRecipe(<Creator:compactAluminumPlate> * 3, <gas:liquidOsmium>, <Creator:denseAluminumPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactBronzePlate> * 3, <gas:liquidOsmium>, <Creator:denseBronzePlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactConstantanPlate> * 3, <gas:liquidOsmium>, <Creator:denseConstantanPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactCopperPlate> * 3, <gas:liquidOsmium>, <Creator:denseCopperPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactElectrumPlate> * 3, <gas:liquidOsmium>, <Creator:denseElectrumPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactEnderiumPlate> * 3, <gas:liquidOsmium>, <Creator:denseEnderiumPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactGoldPlate> * 3, <gas:liquidOsmium>, <Creator:denseGoldPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactInvarPlate> * 3, <gas:liquidOsmium>, <Creator:denseInvarPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactIronPlate> * 3, <gas:liquidOsmium>, <Creator:denseIronPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactLeadPlate> * 3, <gas:liquidOsmium>, <Creator:denseLeadPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactLumiumPlate> * 3, <gas:liquidOsmium>, <Creator:denseLumiumPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactMithrilPlate> * 3, <gas:liquidOsmium>, <Creator:denseMithrilPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactNickelPlate> * 3, <gas:liquidOsmium>, <Creator:denseNickelPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactObsidianPlate> * 3, <gas:liquidOsmium>, <Creator:denseObsidianPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactOsmiumPlate> * 3, <gas:liquidOsmium>, <Creator:denseOsmiumPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactPlatinumPlate> * 3, <gas:liquidOsmium>, <Creator:densePlatinumPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactSignalumPlate> * 3, <gas:liquidOsmium>, <Creator:denseSignalumPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactSilverPlate> * 3, <gas:liquidOsmium>, <Creator:denseSilverPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactSteelPlate> * 3, <gas:liquidOsmium>, <Creator:denseSteelPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactTinPlate> * 3, <gas:liquidOsmium>, <Creator:denseTinPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactTungstenPlate> * 3, <gas:liquidOsmium>, <Creator:denseTungstenPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactElectricalSteelPlate> * 3, <gas:liquidOsmium>, <Creator:denseElectricalSteelPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactEnergeticAlloyPlate> * 3, <gas:liquidOsmium>, <Creator:denseEnergeticAlloyPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactPhasedGoldPlate> * 3, <gas:liquidOsmium>, <Creator:densePhasedGoldPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactDarkSteelPlate> * 3, <gas:liquidOsmium>, <Creator:denseDarkSteelPlate>);

#dust
recipes.addShaped(<ThermalFoundation:material>, [[<Creator:ironDustSmall>, <Creator:ironDustSmall>], [<Creator:ironDustSmall>, <Creator:ironDustSmall>]]);
recipes.addShaped(<Creator:ironDustSmall>, [[<Creator:ironDustTiny>, <Creator:ironDustTiny>, <Creator:ironDustTiny>], [<Creator:ironDustTiny>, <Creator:ironDustTiny>, <Creator:ironDustTiny>], [<Creator:ironDustTiny>, <Creator:ironDustTiny>, <Creator:ironDustTiny>]]);
recipes.addShaped(<ThermalFoundation:material:1>, [[<Creator:goldDustSmall>, <Creator:goldDustSmall>], [<Creator:goldDustSmall>, <Creator:goldDustSmall>]]);
recipes.addShaped(<Creator:goldDustSmall>, [[<Creator:goldDustTiny>, <Creator:goldDustTiny>, <Creator:goldDustTiny>], [<Creator:goldDustTiny>, <Creator:goldDustTiny>, <Creator:goldDustTiny>], [<Creator:goldDustTiny>, <Creator:goldDustTiny>, <Creator:goldDustTiny>]]);
recipes.addShaped(<ThermalFoundation:material:32>, [[<Creator:copperDustSmall>, <Creator:copperDustSmall>], [<Creator:copperDustSmall>, <Creator:copperDustSmall>]]);
recipes.addShaped(<Creator:copperDustSmall>, [[<Creator:copperDustTiny>, <Creator:copperDustTiny>, <Creator:copperDustTiny>], [<Creator:copperDustTiny>, <Creator:copperDustTiny>, <Creator:copperDustTiny>], [<Creator:copperDustTiny>, <Creator:copperDustTiny>, <Creator:copperDustTiny>]]);
recipes.addShaped(<ThermalFoundation:material:33>, [[<Creator:tinDustSmall>, <Creator:tinDustSmall>], [<Creator:tinDustSmall>, <Creator:tinDustSmall>]]);
recipes.addShaped(<Creator:tinDustSmall>, [[<Creator:tinDustTiny>, <Creator:tinDustTiny>, <Creator:tinDustTiny>], [<Creator:tinDustTiny>, <Creator:tinDustTiny>, <Creator:tinDustTiny>], [<Creator:tinDustTiny>, <Creator:tinDustTiny>, <Creator:tinDustTiny>]]);
recipes.addShaped(<ThermalFoundation:material:34>, [[<Creator:silverDustSmall>, <Creator:silverDustSmall>], [<Creator:silverDustSmall>, <Creator:silverDustSmall>]]);
recipes.addShaped(<Creator:silverDustSmall>, [[<Creator:silverDustTiny>, <Creator:silverDustTiny>, <Creator:silverDustTiny>], [<Creator:silverDustTiny>, <Creator:silverDustTiny>, <Creator:silverDustTiny>], [<Creator:silverDustTiny>, <Creator:silverDustTiny>, <Creator:silverDustTiny>]]);
recipes.addShaped(<ThermalFoundation:material:35>, [[<Creator:leadDustSmall>, <Creator:leadDustSmall>], [<Creator:leadDustSmall>, <Creator:leadDustSmall>]]);
recipes.addShaped(<Creator:leadDustSmall>, [[<Creator:leadDustTiny>, <Creator:leadDustTiny>, <Creator:leadDustTiny>], [<Creator:leadDustTiny>, <Creator:leadDustTiny>, <Creator:leadDustTiny>], [<Creator:leadDustTiny>, <Creator:leadDustTiny>, <Creator:leadDustTiny>]]);
recipes.addShaped(<ThermalFoundation:material:36>, [[<Creator:nickelDustSmall>, <Creator:nickelDustSmall>], [<Creator:nickelDustSmall>, <Creator:nickelDustSmall>]]);
recipes.addShaped(<Creator:nickelDustSmall>, [[<Creator:nickelDustTiny>, <Creator:nickelDustTiny>, <Creator:nickelDustTiny>], [<Creator:nickelDustTiny>, <Creator:nickelDustTiny>, <Creator:nickelDustTiny>], [<Creator:nickelDustTiny>, <Creator:nickelDustTiny>, <Creator:nickelDustTiny>]]);
recipes.addShaped(<ThermalFoundation:material:37>, [[<Creator:platinumDustSmall>, <Creator:platinumDustSmall>], [<Creator:platinumDustSmall>, <Creator:platinumDustSmall>]]);
recipes.addShaped(<Creator:platinumDustSmall>, [[<Creator:platinumDustTiny>, <Creator:platinumDustTiny>, <Creator:platinumDustTiny>], [<Creator:platinumDustTiny>, <Creator:platinumDustTiny>, <Creator:platinumDustTiny>], [<Creator:platinumDustTiny>, <Creator:platinumDustTiny>, <Creator:platinumDustTiny>]]);
recipes.addShaped(<TConstruct:materials:40>, [[<Creator:aluminumDustSmall>, <Creator:aluminumDustSmall>], [<Creator:aluminumDustSmall>, <Creator:aluminumDustSmall>]]);
recipes.addShaped(<Creator:aluminumDustSmall>, [[<Creator:aluminumDustTiny>, <Creator:aluminumDustTiny>, <Creator:aluminumDustTiny>], [<Creator:aluminumDustTiny>, <Creator:aluminumDustTiny>, <Creator:aluminumDustTiny>], [<Creator:aluminumDustTiny>, <Creator:aluminumDustTiny>, <Creator:aluminumDustTiny>]]);
recipes.addShaped(<Mekanism:Dust:2>, [[<Creator:osmiumDustSmall>, <Creator:osmiumDustSmall>], [<Creator:osmiumDustSmall>, <Creator:osmiumDustSmall>]]);
recipes.addShaped(<Creator:osmiumDustSmall>, [[<Creator:osmiumDustTiny>, <Creator:osmiumDustTiny>, <Creator:osmiumDustTiny>], [<Creator:osmiumDustTiny>, <Creator:osmiumDustTiny>, <Creator:osmiumDustTiny>], [<Creator:osmiumDustTiny>, <Creator:osmiumDustTiny>, <Creator:osmiumDustTiny>]]);
recipes.addShaped(<Magneticraft:item.dust:4>, [[<Creator:tungstenDustSmall>, <Creator:tungstenDustSmall>], [<Creator:tungstenDustSmall>, <Creator:tungstenDustSmall>]]);
recipes.addShaped(<Creator:tungstenDustSmall>, [[<Creator:tungstenDustTiny>, <Creator:tungstenDustTiny>, <Creator:tungstenDustTiny>], [<Creator:tungstenDustTiny>, <Creator:tungstenDustTiny>, <Creator:tungstenDustTiny>], [<Creator:tungstenDustTiny>, <Creator:tungstenDustTiny>, <Creator:tungstenDustTiny>]]);
recipes.addShaped(<Magneticraft:item.dust:12>, [[<Creator:zincDustSmall>, <Creator:zincDustSmall>], [<Creator:zincDustSmall>, <Creator:zincDustSmall>]]);
recipes.addShaped(<Creator:zincDustSmall>, [[<Creator:zincDustTiny>, <Creator:zincDustTiny>, <Creator:zincDustTiny>], [<Creator:zincDustTiny>, <Creator:zincDustTiny>, <Creator:zincDustTiny>], [<Creator:zincDustTiny>, <Creator:zincDustTiny>, <Creator:zincDustTiny>]]);

#wire
mods.railcraft.Rolling.addShaped(<Creator:wireGold> * 6, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], 
                                                              [<ore:plateGold>, null, <ore:plateGold>],
                                                              [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);
mods.railcraft.Rolling.addShaped(<Creator:wireAluminum> * 6, [[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>], 
                                                              [<ore:plateAluminium>, null, <ore:plateAluminium>],
                                                              [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
mods.railcraft.Rolling.addShaped(<Creator:wireCopper> * 6, [[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], 
                                                            [<ore:plateCopper>, null, <ore:plateCopper>],
                                                            [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);
mods.railcraft.Rolling.addShaped(<Creator:wireElectrum> * 6, [[<ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>], 
                                                              [<ore:plateElectrum>, null, <ore:plateElectrum>],
                                                              [<ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>]]);
mods.railcraft.Rolling.addShaped(<Creator:wireSteel> * 6, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
                                                           [<ore:plateSteel>, null, <ore:plateSteel>],
                                                           [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
														   
#alloy
recipes.addShaped(<Creator:blockAlloy>, [[<Creator:itemAlloy>, <Creator:itemAlloy>, <Creator:itemAlloy>], [<Creator:itemAlloy>, <Creator:itemAlloy>, <Creator:itemAlloy>], [<Creator:itemAlloy>, <Creator:itemAlloy>, <Creator:itemAlloy>]]);
recipes.addShapeless(<Creator:itemAlloy> * 9, [<Creator:blockAlloy>]);
mods.thermalexpansion.Smelter.addRecipe(6000, <Mekanism:OtherDust:1>, <ProjRed|Core:projectred.core.part:12>, <Creator:itemAlloy>);
mods.thermalexpansion.Smelter.addRecipe(6000, <TConstruct:materials:16>, <ProjRed|Core:projectred.core.part:12>, <Creator:itemAlloy>);
mods.immersiveengineering.ArcFurnace.addRecipe(<Creator:itemAlloy>, <ore:ingotIron>, null, 100, 512, [<ore:dustCoal>, <ProjRed|Core:projectred.core.part:12>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<Creator:itemAlloy>, <ore:dustIron>, null, 100, 512, [<ore:dustCoal>, <ProjRed|Core:projectred.core.part:12>], "Alloying");

recipes.addShaped(<Creator:blockAlloy:1>, [[<Creator:itemAlloy:1>, <Creator:itemAlloy:1>, <Creator:itemAlloy:1>], [<Creator:itemAlloy:1>, <Creator:itemAlloy:1>, <Creator:itemAlloy:1>], [<Creator:itemAlloy:1>, <Creator:itemAlloy:1>, <Creator:itemAlloy:1>]]);
recipes.addShapeless(<Creator:itemAlloy:1> * 9, [<Creator:blockAlloy:1>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<Creator:itemAlloy:1>, <Creator:itemAlloy:6>, null, 200, 512, [<ore:dustRedstone>, <Creator:Sunnarium>], "Alloying");

recipes.addShaped(<Creator:blockAlloy:2>, [[<Creator:itemAlloy:2>, <Creator:itemAlloy:2>, <Creator:itemAlloy:2>], [<Creator:itemAlloy:2>, <Creator:itemAlloy:2>, <Creator:itemAlloy:2>], [<Creator:itemAlloy:2>, <Creator:itemAlloy:2>, <Creator:itemAlloy:2>]]);
recipes.addShapeless(<Creator:itemAlloy:2> * 9, [<Creator:blockAlloy:2>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<Creator:itemAlloy:2> * 2, <Creator:itemAlloy:1> * 2, null, 400, 512, [<ThermalFoundation:material:76> * 8, <ThermalFoundation:material:69>], "Alloying");

recipes.addShaped(<Creator:blockAlloy:3>, [[<Creator:itemAlloy:3>, <Creator:itemAlloy:3>, <Creator:itemAlloy:3>], [<Creator:itemAlloy:3>, <Creator:itemAlloy:3>, <Creator:itemAlloy:3>], [<Creator:itemAlloy:3>, <Creator:itemAlloy:3>, <Creator:itemAlloy:3>]]);
recipes.addShapeless(<Creator:itemAlloy:3> * 9, [<Creator:blockAlloy:3>]);
mods.mekanism.Infuser.addRecipe("OBSIDIAN", 20, <Magneticraft:item.ingotCarbide>, <Creator:itemAlloy:3>);

recipes.addShaped(<Creator:blockAlloy:4>, [[<Creator:itemAlloy:4>, <Creator:itemAlloy:4>, <Creator:itemAlloy:4>], [<Creator:itemAlloy:4>, <Creator:itemAlloy:4>, <Creator:itemAlloy:4>], [<Creator:itemAlloy:4>, <Creator:itemAlloy:4>, <Creator:itemAlloy:4>]]);
recipes.addShapeless(<Creator:itemAlloy:4> * 9, [<Creator:blockAlloy:4>]);
mods.thermalexpansion.Smelter.addRecipe(6000, <minecraft:gold_ingot>, <minecraft:soul_sand>, <Creator:itemAlloy:4>);

recipes.addShaped(<Creator:blockAlloy:5>, [[<Creator:itemAlloy:5>, <Creator:itemAlloy:5>, <Creator:itemAlloy:5>], [<Creator:itemAlloy:5>, <Creator:itemAlloy:5>, <Creator:itemAlloy:5>], [<Creator:itemAlloy:5>, <Creator:itemAlloy:5>, <Creator:itemAlloy:5>]]);
recipes.addShapeless(<Creator:itemAlloy:5> * 9, [<Creator:blockAlloy:5>]);
mods.thermalexpansion.Smelter.addRecipe(10000, <Creator:itemAlloy:4>, <ThermalFoundation:material:516>, <Creator:itemAlloy:5>);

recipes.addShaped(<Creator:blockAlloy:6>, [[<Creator:itemAlloy:6>, <Creator:itemAlloy:6>, <Creator:itemAlloy:6>], [<Creator:itemAlloy:6>, <Creator:itemAlloy:6>, <Creator:itemAlloy:6>], [<Creator:itemAlloy:6>, <Creator:itemAlloy:6>, <Creator:itemAlloy:6>]]);
recipes.addShapeless(<Creator:itemAlloy:6> * 9, [<Creator:blockAlloy:6>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<Creator:itemAlloy:6>, <ore:ingotGold>, null, 200, 512, [<ore:dustDiamond>, <ore:dustDiamond>], "Alloying");
mods.mekanism.Infuser.addRecipe("DIAMOND", 10, <minecraft:gold_ingot>, <Creator:itemAlloy:6>);

recipes.addShaped(<Creator:blockAlloy:7>, [[<Creator:itemAlloy:7>, <Creator:itemAlloy:7>, <Creator:itemAlloy:7>], [<Creator:itemAlloy:7>, <Creator:itemAlloy:7>, <Creator:itemAlloy:7>], [<Creator:itemAlloy:7>, <Creator:itemAlloy:7>, <Creator:itemAlloy:7>]]);
recipes.addShapeless(<Creator:itemAlloy:7> * 9, [<Creator:blockAlloy:7>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<Creator:itemAlloy:7>, <ore:ingotSilver>, null, 200, 512, [<ore:dustDiamond>, <ore:dustDiamond>], "Alloying");
mods.mekanism.Infuser.addRecipe("DIAMOND", 10, <ThermalFoundation:material:66>, <Creator:itemAlloy:7>);

recipes.addShaped(<Creator:blockAlloy:8>, [[<Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>], [<Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>], [<Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>]]);
recipes.addShapeless(<Creator:itemAlloy:8> * 9, [<Creator:blockAlloy:8>]);
mods.thaumcraft.Crucible.addRecipe("VOIDMETAL", <Creator:itemAlloy:8>, <Thaumcraft:ItemResource:16>, "spiritus 4, alienis 2");
mods.thaumcraft.Research.addCruciblePage("VOIDMETAL", <Creator:itemAlloy:8>);

recipes.addShaped(<Creator:blockAlloy:9>, [[<Creator:itemAlloy:9>, <Creator:itemAlloy:9>, <Creator:itemAlloy:9>], [<Creator:itemAlloy:9>, <Creator:itemAlloy:9>, <Creator:itemAlloy:9>], [<Creator:itemAlloy:9>, <Creator:itemAlloy:9>, <Creator:itemAlloy:9>]]);
recipes.addShapeless(<Creator:itemAlloy:9> * 9, [<Creator:blockAlloy:9>]);
mods.thaumcraft.Infusion.addRecipe("VOIDMETAL", <ThermalFoundation:material:69>, [<Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>, <Creator:itemAlloy:8>], "praecantatio
 128, alienis 64, vacuos 64, auram 32", <Creator:itemAlloy:9>, 10);
mods.thaumcraft.Research.addInfusionPage("VOIDMETAL", <Creator:itemAlloy:9>);

recipes.addShaped(<Creator:blockAlloy:10>, [[<Creator:itemAlloy:10>, <Creator:itemAlloy:10>, <Creator:itemAlloy:10>], [<Creator:itemAlloy:10>, <Creator:itemAlloy:10>, <Creator:itemAlloy:10>], [<Creator:itemAlloy:10>, <Creator:itemAlloy:10>, <Creator:itemAlloy:10>]]);
recipes.addShapeless(<Creator:itemAlloy:10> * 9, [<Creator:blockAlloy:10>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<Creator:itemAlloy:10>, <Thaumcraft:ItemResource:2>, null, 100, 512, [<ore:dustElectrotine>, <ore:dustGold>], "Alloying");

recipes.addShaped(<Creator:blockAlloy:11>, [[<Creator:itemAlloy:11>, <Creator:itemAlloy:11>, <Creator:itemAlloy:11>], [<Creator:itemAlloy:11>, <Creator:itemAlloy:11>, <Creator:itemAlloy:11>], [<Creator:itemAlloy:11>, <Creator:itemAlloy:11>, <Creator:itemAlloy:11>]]);
recipes.addShapeless(<Creator:itemAlloy:11> * 9, [<Creator:blockAlloy:11>]);
mods.thaumcraft.Crucible.addRecipe("ASPECTS", <Creator:itemAlloy:11>, <ThermalFoundation:material:70>, "tenebrae 4, perditio 2");

recipes.addShaped(<Creator:blockAlloy:12>, [[<Creator:itemAlloy:12>, <Creator:itemAlloy:12>, <Creator:itemAlloy:12>], [<Creator:itemAlloy:12>, <Creator:itemAlloy:12>, <Creator:itemAlloy:12>], [<Creator:itemAlloy:12>, <Creator:itemAlloy:12>, <Creator:itemAlloy:12>]]);
recipes.addShapeless(<Creator:itemAlloy:12> * 9, [<Creator:blockAlloy:12>]);
mods.thermalexpansion.Smelter.addRecipe(20000, <Creator:itemAlloy:10>, <Creator:itemAlloy:11>, <Creator:itemAlloy:12>);

recipes.addShaped(<Redstonic:tile.blockVibrantium>, [[<Creator:itemAlloy:13>, <Creator:itemAlloy:13>, <Creator:itemAlloy:13>], [<Creator:itemAlloy:13>, <Creator:itemAlloy:13>, <Creator:itemAlloy:13>], [<Creator:itemAlloy:13>, <Creator:itemAlloy:13>, <Creator:itemAlloy:13>]]);
recipes.addShapeless(<Creator:itemAlloy:13> * 9, [<Redstonic:tile.blockVibrantium>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<Creator:itemAlloy:13>, <Creator:itemAlloy:2> * 32, null, 6000, 4096, [<Creator:itemAlloy:14> * 16, <Creator:itemCrystal:3> * 2], "Alloying");

mods.immersiveengineering.ArcFurnace.addRecipe(<Creator:itemAlloy:14>, <Creator:itemAlloy:5>, null, 100, 512, [<Creator:itemAlloy:3>, <Creator:itemCrystal>], "Alloying");

#crystal
<ore:itemPulsatingCrystal>.add(<Creator:itemCrystal>);
<ore:itemVibrantCrystal>.add(<Creator:itemCrystal:1>);
<ore:itemEnderCrystal>.add(<Creator:itemCrystal:2>);
<ore:itemEnticingCrystal>.add(<Creator:itemCrystal:3>);
mods.extraUtils.QED.addShapedRecipe(<Creator:itemCrystal>, [[<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>], [<ore:ingotEnderium>, <RandomThings:ingredient:6>, <ore:ingotEnderium>], [<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>]]);
mods.extraUtils.QED.addShapedRecipe(<Creator:itemCrystal:1>, [[<ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>], [<ore:ingotVibrantAlloy>, <RandomThings:ingredient>, <ore:ingotVibrantAlloy>], [<ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>]]);
mods.thermalexpansion.Smelter.addRecipe(400000, <Creator:itemCrystal>, <enderclay:itemenderclay> * 4, <Creator:itemCrystal:2>);
mods.thermalexpansion.Smelter.addRecipe(500000, <Creator:itemCrystal:1>, <ExtraUtilities:golden_lasso:2>.withTag({ForgeData: {id: "Villager"}}), <Creator:itemCrystal:3>, <ExtraUtilities:golden_lasso:2>, 100);
<Creator:itemCrystal:3>.addTooltip(format.gray("To craft this, you need a Golden Lasso with a captured villager."));
<Creator:itemCrystal:3>.addTooltip(format.gray("你需要一个捕捉了村民的黄金套索来制作它。"));

#Error Items
recipes.addShaped(<Prunoideae:errorItem1>,[[<minecraft:apple>, <minecraft:cobblestone>, <minecraft:paper>],[<minecraft:golden_sword>, <minecraft:torch>, <minecraft:hopper>],[<minecraft:carpet:15>, <minecraft:leaves>, <minecraft:pumpkin>]]);
NEI.hide(<Prunoideae:errorItem1>);

#Log Igniter
recipes.addShaped(<Prunoideae:logIgniter>, [[<minecraft:cobblestone>, <minecraft:stone_pressure_plate>, <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:iron_ingot>, <minecraft:cobblestone>], [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>]]);

print("Initialized 'Creator.zs'");