#Name: SimplyJetpacks.zs
#Author: Si_hen

print("Initializing 'SimplyJetpacks.zs'...");

#thrusters
recipes.remove(<simplyjetpacks:components:31>);
recipes.addShaped(<simplyjetpacks:components:31>, [[<Creator:compactIronPlate>, <ore:gearIron>, <Creator:compactIronPlate>], [<Magneticraft:item.iron_pipe>, <Forestry:engine:2>, <Magneticraft:item.iron_pipe>], [<Creator:compactIronPlate>, <ore:ingotRedAlloy>, <Creator:compactIronPlate>]]);

recipes.addShaped(<Creator:SJComponents>, [[<Creator:compactElectricalSteelPlate>, <Redstonic:capacitor>, <Creator:compactElectricalSteelPlate>], [<BuildCraft|Silicon:redstoneChipset>, <simplyjetpacks:components:31>, <BuildCraft|Silicon:redstoneChipset>], [<Creator:compactElectricalSteelPlate>, <ore:ingotRedAlloy>, <Creator:compactElectricalSteelPlate>]]);

recipes.remove(<simplyjetpacks:components:11>);
recipes.addShaped(<simplyjetpacks:components:11>, [[<Creator:compactLeadPlate>, <ThermalExpansion:material:1>, <Creator:compactLeadPlate>], [<ThermalExpansion:Cell:1>, <Creator:SJComponents>, <ThermalExpansion:Cell:1>], [<Creator:compactLeadPlate>, <ore:ingotRedAlloy>, <Creator:compactLeadPlate>]]);

mods.buildcraft.AssemblyTable.removeRecipe(<simplyjetpacks:components:32>);
recipes.addShaped(<simplyjetpacks:components:32>, [[<Creator:compactGoldPlate>, <ore:gearGold>, <Creator:compactGoldPlate>], [<BuildCraft|Silicon:redstoneChipset:2>, <simplyjetpacks:components:11>, <BuildCraft|Silicon:redstoneChipset:2>], [<Creator:compactGoldPlate>, <BuildCraft|Silicon:redstoneChipset>, <Creator:compactGoldPlate>]]);

recipes.remove(<simplyjetpacks:components:12>);
mods.extraUtils.QED.addShapedRecipe(<simplyjetpacks:components:12>, [[<Creator:compactInvarPlate>, <ThermalExpansion:material:1>, <Creator:compactInvarPlate>], [<ThermalExpansion:Cell:2>, <simplyjetpacks:components:32>, <ThermalExpansion:Cell:2>], [<Creator:compactInvarPlate>, <BuildCraft|Silicon:redstoneChipset:6>, <Creator:compactInvarPlate>]]);

mods.extraUtils.QED.addShapedRecipe(<Creator:SJComponents:1>, [[<Creator:denseEnergeticAlloyPlate>, <Creator:gearEnergized>, <Creator:denseEnergeticAlloyPlate>], [<Creator:itemCrystal>, <simplyjetpacks:components:12>, <Creator:itemCrystal>], [<Creator:denseEnergeticAlloyPlate>, <BuildCraft|Silicon:redstoneChipset:6>, <Creator:denseEnergeticAlloyPlate>]]);

recipes.remove(<simplyjetpacks:components:13>);
mods.extraUtils.QED.addShapedRecipe(<simplyjetpacks:components:13>, [[<Creator:denseElectrumPlate>, <ThermalExpansion:material:1>, <Creator:denseElectrumPlate>], [<ThermalExpansion:Cell:3>, <Creator:SJComponents:1>, <ThermalExpansion:Cell:3>], [<Creator:denseElectrumPlate>, <BuildCraft|Silicon:redstoneChipset:3>, <Creator:denseElectrumPlate>]]);

mods.extraUtils.QED.addShapedRecipe(<Creator:SJComponents:2>, [[<Creator:densePhasedGoldPlate>, <Creator:gearVibrant>, <Creator:densePhasedGoldPlate>], [<Creator:itemCrystal:1>, <simplyjetpacks:components:13>, <Creator:itemCrystal:1>], [<Creator:densePhasedGoldPlate>, <BuildCraft|Silicon:redstoneChipset:3>, <Creator:densePhasedGoldPlate>]]);

recipes.remove(<simplyjetpacks:components:14>);
mods.buildcraft.AssemblyTable.addRecipe(<simplyjetpacks:components:14>, 2000000, [<Creator:denseEnderiumPlate> * 8, <ThermalExpansion:material:1> * 4, <ThermalExpansion:Cell:4> * 2, <BuildCraft|Silicon:redstoneChipset:7> * 2, <Creator:SJComponents:2> * 2]);

mods.buildcraft.AssemblyTable.addRecipe(<Creator:SJComponents:3>, 5000000, [<Creator:itemAlloy:14> * 72, <Creator:itemCrystal:2> * 8, <Creator:SJComponents:5> * 4, <BuildCraft|Silicon:redstoneChipset:7> * 4, <simplyjetpacks:components:14> * 2]);

recipes.remove(<simplyjetpacks:components:15>);
mods.buildcraft.AssemblyTable.addRecipe(<simplyjetpacks:components:15>, 10000000, [<RedstoneArsenal:material:32> * 64, <RedstoneArsenal:material:128> * 32, <simplyjetpacks:components:61> * 8, <simplyjetpacks:components:63> * 8, <Creator:itemAlloy:13> * 4, <BuildCraft|Silicon:redstoneCrystal> * 2, <Creator:SJComponents:3> * 2]);

#components
mods.extraUtils.QED.addShapedRecipe(<Creator:SJComponents:4>, [[<Creator:itemAlloy:14>, <Creator:itemAlloy>, <Creator:itemAlloy:14>], [<Creator:itemAlloy>, <ThermalExpansion:Glass:1>, <Creator:itemAlloy>], [<Creator:itemAlloy:14>, <Creator:itemAlloy>, <Creator:itemAlloy:14>]]);
mods.thermalexpansion.Smelter.addRecipe(120000, <Creator:SJComponents:4>, <ExtraUtilities:golden_lasso:2>.withTag({ForgeData: {id: "Bat"}}), <Creator:SJComponents:5>, <ExtraUtilities:golden_lasso:2>, 100);
<Creator:SJComponents:5>.addTooltip(format.gray("To craft this, you need a Golden Lasso with a captured bat."));
<Creator:SJComponents:5>.addTooltip(format.gray("你需要一个捕捉了蝙蝠的黄金套索来制作它。"));

#flux pack
recipes.remove(<simplyjetpacks:fluxpacks:2>);
recipes.addShaped(<simplyjetpacks:fluxpacks:2>, [[null, <ThermalExpansion:Cell:2>], [<ore:ingotInvar>, <simplyjetpacks:fluxpacks:1>, <ore:ingotInvar>], [null, <ore:ingotInvar>]]);
recipes.addShapeless(<simplyjetpacks:fluxpacks:2>, [<simplyjetpacks:fluxpacks:102>.transformReplace(<simplyjetpacks:armorPlatings:1>)]);
recipes.remove(<simplyjetpacks:fluxpacks:3>);
recipes.addShaped(<simplyjetpacks:fluxpacks:3>, [[null, <ThermalExpansion:Cell:3>], [<ore:ingotEnergeticAlloy>, <simplyjetpacks:fluxpacks:2>, <ore:ingotEnergeticAlloy>], [<ore:ingotSignalum>, <ThermalExpansion:material:3>, <ore:ingotSignalum>]]);
recipes.addShapeless(<simplyjetpacks:fluxpacks:3>, [<simplyjetpacks:fluxpacks:103>.transformReplace(<simplyjetpacks:armorPlatings:2>)]);
recipes.remove(<simplyjetpacks:fluxpacks:4>);
recipes.addShaped(<simplyjetpacks:fluxpacks:4>, [[null, <ThermalExpansion:Cell:4>], [<ore:ingotVibrantAlloy>, <simplyjetpacks:fluxpacks:2>, <ore:ingotVibrantAlloy>], [null, <ore:ingotVibrantAlloy>]]);
recipes.addShapeless(<simplyjetpacks:fluxpacks:4>, [<simplyjetpacks:fluxpacks:104>.transformReplace(<simplyjetpacks:armorPlatings:3>)]);

print("Initialized 'SimplyJetpacks.zs'");