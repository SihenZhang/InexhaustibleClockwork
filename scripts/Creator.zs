#Name: Creator.zs
#Author: Si_hen

print("Initializing 'Creator.zs'...");

#comples
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

#Sunnarium
mods.magneticraft.Polymerizer.addRecipe(<liquid:lava> * 1000, <minecraft:glowstone_dust>, <Creator:Sunnarium>, 500);

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
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactBronzePlate>, <ore:plateBronze>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactCopperPlate>, <ore:plateCopper>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactGoldPlate>, <ore:plateGold>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactIronPlate>, <ore:plateIron>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactLeadPlate>, <ore:plateLead>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactSteelPlate>, <ore:plateSteel>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactTinPlate>, <ore:plateTin>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactElectrumPlate>, <ore:plateElectrum>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactInvarPlate>, <ore:plateInvar>, <ImmersiveEngineering:mold>, 20000, 3);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:compactNickelPlate>, <ore:plateNickel>, <ImmersiveEngineering:mold>, 20000, 3);
mods.mekanism.Compressor.addRecipe(<Creator:compactLeadPlate> * 3, <gas:liquidOsmium>, <Creator:denseLeadPlate>);
mods.mekanism.Compressor.addRecipe(<Creator:compactNickelPlate> * 3, <gas:liquidOsmium>, <Creator:denseNickelPlate>);

#dust
recipes.addShaped(<ThermalFoundation:material>, [[<Creator:ironDustSmall>, <Creator:ironDustSmall>], [<Creator:ironDustSmall>, <Creator:ironDustSmall>]]);
recipes.addShaped(<Creator:ironDustSmall>, [[<Creator:ironDustTiny>, <Creator:ironDustTiny>, <Creator:ironDustTiny>], [<Creator:ironDustTiny>, <Creator:ironDustTiny>, <Creator:ironDustTiny>], [<Creator:ironDustTiny>, <Creator:ironDustTiny>, <Creator:ironDustTiny>]]);
recipes.addShaped(<ThermalFoundation:material:36>, [[<Creator:nickelDustSmall>, <Creator:nickelDustSmall>], [<Creator:nickelDustSmall>, <Creator:nickelDustSmall>]]);
recipes.addShaped(<Creator:nickelDustSmall>, [[<Creator:nickelDustTiny>, <Creator:nickelDustTiny>, <Creator:nickelDustTiny>], [<Creator:nickelDustTiny>, <Creator:nickelDustTiny>, <Creator:nickelDustTiny>], [<Creator:nickelDustTiny>, <Creator:nickelDustTiny>, <Creator:nickelDustTiny>]]);

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

print("Initialized 'Creator.zs'");