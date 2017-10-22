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
mods.forestry.Carpenter.addRecipe(<Redstonic:capacitor>, [[null, <ore:ingotRedAlloy>],
                                                          [<ore:ingotRedAlloy>, <ore:ingotCopper>, <ore:ingotRedAlloy>],
														  [<ore:ingotGold>, <ore:ingotRedAlloy>, <ore:ingotGold>]], 300);

#battery
recipes.remove(<Redstonic:basicBattery>);
recipes.remove(<Redstonic:energizedBattery>);
recipes.remove(<Redstonic:greatBattery>);
mods.buildcraft.AssemblyTable.addRecipe(<Redstonic:basicBattery>, 40000, [<ThermalExpansion:capacitor:3>, <Creator:compactElectricalSteelPlate> * 3, <ProjRed|Core:projectred.core.part:10> * 3, <ThermalExpansion:material:2> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<Redstonic:energizedBattery>, 70000, [<ThermalExpansion:capacitor:4>, <Creator:compactEnergeticAlloyPlate> * 3, <Creator:gearEnergized> * 2, <RandomThings:ingredient:6>, <ThermalExpansion:material:2> * 2]);
mods.buildcraft.AssemblyTable.addRecipe(<Redstonic:greatBattery>, 100000, [<ThermalExpansion:capacitor:5>, <Creator:compactPhasedGoldPlate> * 3, <Creator:gearVibrant> * 4, <ThermalExpansion:material:2> * 2]);

#modifier
recipes.remove(<Redstonic:tile.DrillModifier>);
mods.forestry.Carpenter.addRecipe(<Redstonic:tile.DrillModifier>, [[<ore:ingotRedAlloy>, <ore:ingotRedAlloy>, <ore:ingotRedAlloy>],
                                                                   [<ore:ingotRedAlloy>, <Thaumcraft:blockTable>, <ore:ingotRedAlloy>], 
                                                                   [<ore:gearInvar>, <ore:gearSteel>, <ore:gearInvar>]], <liquid:invar.molten> * 144, 20);

#drill
recipes.remove(<Redstonic:IronDrillHead>);
mods.forestry.Carpenter.addRecipe(<Redstonic:IronDrillHead>, [[null, <Railcraft:part.plate>, null],
                                                              [<Railcraft:part.plate>, <Railcraft:part.plate>, <Railcraft:part.plate>], 
                                                              [<Railcraft:part.plate>, <ImmersiveEngineering:drillhead>, <Railcraft:part.plate>]], <liquid:iron.molten> * 288, 20);
recipes.remove(<Redstonic:GoldDrillHead>);
mods.forestry.Carpenter.addRecipe(<Redstonic:GoldDrillHead>, [[null, <Creator:GoldPlate>, null],
                                                              [<Creator:GoldPlate>, <Creator:GoldPlate>, <Creator:GoldPlate>], 
                                                              [<Creator:GoldPlate>, <Redstonic:DiamondDrillHead>, <Creator:GoldPlate>]], <liquid:gold.molten> * 864, 40);
recipes.remove(<Redstonic:DiamondDrillHead>);
mods.forestry.Carpenter.addRecipe(<Redstonic:DiamondDrillHead>, [[null, <minecraft:diamond>, null],
                                                                 [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 
                                                                 [<minecraft:diamond>, <Redstonic:IronDrillHead>, <minecraft:diamond>]], null, 30);
recipes.remove(<Redstonic:HeavyDrillHead>);
mods.forestry.Carpenter.addRecipe(<Redstonic:HeavyDrillHead>, [[null, <TConstruct:materials:5>, null],
                                                               [<TConstruct:materials:5>, <Redstonic:DiamondDrillHead>, <TConstruct:materials:5>], 
                                                               [<Redstonic:GoldDrillHead>, <TConstruct:hammerHead:*>, <Redstonic:IronDrillHead>]], <liquid:manyullyn.molten> * 144, 40);
recipes.remove(<Redstonic:FortuitousDrillHead>);
mods.avaritia.ExtremeCrafting.addShaped(<Redstonic:FortuitousDrillHead>, [[null, null, null, null, <ore:blockLapis>, null, null, null, null], [null, null, null, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, null, null, null], [null, null, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, null, null], [null, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, null], [<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>], [<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>], [<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>], [<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>], [<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <Redstonic:DiamondDrillHead>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>]]);
recipes.remove(<Redstonic:SilkyDrillHead>);
mods.forestry.Carpenter.addRecipe(<Redstonic:SilkyDrillHead>, [[null, <TConstruct:materials:26>, null],
                                                               [<TConstruct:materials:26>, <TConstruct:materials:25>, <TConstruct:materials:26>], 
                                                               [<TConstruct:materials:25>, <Redstonic:DiamondDrillHead>, <TConstruct:materials:25>]], <liquid:aluminumbrass.molten> * 288, 40);
recipes.remove(<Redstonic:BlazerDrillHead>);
mods.forestry.Carpenter.addRecipe(<Redstonic:BlazerDrillHead>, [[null, <ore:blockCoal>, null],
                                                                [<ore:blockCoal>, <Redstonic:DiamondDrillHead>, <ore:blockCoal>], 
                                                                [<TConstruct:materials:7>, <Redstonic:GoldDrillHead>, <TConstruct:materials:7>]], null, 40);

print("Initialized 'Redstonic.zs'");