#Name: Redstonic.zs
#Author: Si_hen

print("Initializing 'Redstonic.zs'...");

#gears
<ore:gearEnergeticAlloy>.add(<Creator:gearEnergized>);
<ore:gearVibrantAlloy>.add(<Creator:gearVibrant>);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:gearEnergized>, <Creator:itemAlloy:1>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<Creator:gearVibrant>, <Creator:itemAlloy:2>, <ImmersiveEngineering:mold:1>, 16000, 4);

#capacitor
recipes.remove(<Redstonic:capacitor>);
mods.extraUtils.QED.addShapedRecipe(<Redstonic:capacitor>, [[null, <ore:ingotRedAlloy>], [<ore:ingotRedAlloy>, <ore:ingotCopper>, <ore:ingotRedAlloy>], [<ore:ingotGold>, <ore:ingotRedAlloy>, <ore:ingotGold>]]);

#battery
recipes.remove(<Redstonic:basicBattery>);
recipes.remove(<Redstonic:energizedBattery>);
recipes.remove(<Redstonic:greatBattery>);
mods.buildcraft.AssemblyTable.addRecipe(<Redstonic:basicBattery>, 40000, [<ThermalExpansion:capacitor:3>, <Creator:compactElectricalSteelPlate> * 3, <ProjRed|Core:projectred.core.part:10> * 3, <ThermalExpansion:material:2> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<Redstonic:energizedBattery>, 70000, [<ThermalExpansion:capacitor:4>, <Creator:compactEnergeticAlloyPlate> * 3, <Creator:gearEnergized> * 2 , <Creator:enderDiamond> , <ThermalExpansion:material:2> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<Redstonic:greatBattery>, 100000, [<ThermalExpansion:capacitor:5>, <Creator:compactPhasedGoldPlate> * 3 , <Creator:gearVibrant> * 4 , <ThermalExpansion:material:2> * 2]);

#modifier
recipes.remove(<Redstonic:tile.DrillModifier>);
mods.mekanism.Infuser.addRecipe("REDSTONE", 1000, <Thaumcraft:blockTable>, <Redstonic:tile.DrillModifier>);

print("Initialized 'Redstonic.zs'");