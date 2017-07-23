#Name: ZettaIndustries.zs
#Author: Si_hen

import mods.nei.NEI;

print("Initializing 'ZettaIndustries.zs'...");

#icon hide
NEI.hide(<zettaindustries:zettaindustries.fakeitem>);
NEI.hide(<zettaindustries:SmartCardTerminalExtension>);

#charcoalblock
recipes.remove(<zettaindustries:charcoalblock>);
furnace.setFuel(<zettaindustries:charcoalblock>, 0);
NEI.hide(<zettaindustries:charcoalblock>);

#graphiteblock
furnace.remove(<zettaindustries:BlockGraphite>);
mods.thermalexpansion.Furnace.removeRecipe(<zettaindustries:charcoalblock>);
<ore:blockGraphite>.remove(<zettaindustries:BlockGraphite>);
NEI.hide(<zettaindustries:BlockGraphite>);

#sulfurblock
recipes.remove(<zettaindustries:sulfurblock>);
recipes.addShaped(<zettaindustries:sulfurblock>, [[<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>], [<Natura:barleyFood:4>, <Natura:barleyFood:4>, <Natura:barleyFood:4>], [<ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>]]);

#battery
recipes.remove(<zettaindustries:BatteryWall>);
recipes.addShaped(<zettaindustries:BatteryWall> * 16, [[<Creator:denseElectrumPlate>, <Mekanism:Polyethene:2>, <Creator:denseElectrumPlate>], [<Magneticraft:item.ingotCarbide>, <ThermalExpansion:Frame:10>, <Magneticraft:item.ingotCarbide>], [<Creator:denseElectrumPlate>, <Mekanism:Polyethene:2>, <Creator:denseElectrumPlate>]]);
recipes.remove(<zettaindustries:BatteryControler>);
recipes.addShaped(<zettaindustries:BatteryControler>, [[<zettaindustries:BatteryWall>, <ThermalExpansion:meter>, <zettaindustries:BatteryWall>], [<BuildCraft|Silicon:redstoneChipset:7>, <OpenComputers:case3>, <Forestry:thermionicTubes:9>], [<zettaindustries:BatteryWall>, <Mekanism:ControlCircuit:3>, <zettaindustries:BatteryWall>]]);
recipes.remove(<zettaindustries:BatteryPowerTap>);
recipes.addShaped(<zettaindustries:BatteryPowerTap>, [[<zettaindustries:BatteryWall>, <ore:ingotRedAlloy>, <zettaindustries:BatteryWall>], [<RedstoneArsenal:material:32>, <BigReactors:BRReactorPart:3>, <RedstoneArsenal:material:32>], [<zettaindustries:BatteryWall>, <RedstoneArsenal:material:32>, <zettaindustries:BatteryWall>]]);
recipes.remove(<zettaindustries:BatteryComputerPort>);
recipes.addShaped(<zettaindustries:BatteryComputerPort>, [[<zettaindustries:BatteryWall>, <ore:dustRedstone>, <zettaindustries:BatteryWall>], [<ore:ingotGold>, <minecraft:repeater>, <ore:ingotGold>], [<zettaindustries:BatteryWall>, <ore:dustRedstone>, <zettaindustries:BatteryWall>]]);
recipes.remove(<zettaindustries:BatteryGlass>);
recipes.addShaped(<zettaindustries:BatteryGlass>, [[<ThermalExpansion:Frame:12>, <zettaindustries:BatteryWall>, <ThermalExpansion:Frame:12>]]);

#superconductor
recipes.remove(<zettaindustries:blockcontroler>);
NEI.hide(<zettaindustries:blockcontroler>);
recipes.remove(<zettaindustries:blockwire>);
mods.thermalexpansion.Transposer.addFillRecipe(150000, <ThermalExpansion:Cell:4>, <zettaindustries:blockwire> * 6, <liquid:cryotheum> * 6000);

print("Initialized 'ZettaIndustries.zs'");