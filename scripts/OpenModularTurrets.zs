#Name: OpenModularTurrets.zs
#Author: Si_hen

print("Initializing 'OpenModularTurrets.zs'...");

#miscs
recipes.remove(<openmodularturrets:ioBus>);
recipes.addShaped(<openmodularturrets:ioBus>, [[null, <ore:ingotGold>], [<ore:ingotRedAlloy>, <ore:ingotRedAlloy>, <ore:ingotRedAlloy>], [null, <ore:ingotInvar>]]);
recipes.remove(<openmodularturrets:sensorTierOneItem>);
recipes.addShaped(<openmodularturrets:sensorTierOneItem>, [[null, <ore:ingotRedAlloy>], [<ore:ingotRedAlloy>, <ore:plankWood>, <ore:ingotRedAlloy>], [null, <ore:ingotRedAlloy>]]);
recipes.remove(<openmodularturrets:sensorTierTwoItem>);
recipes.addShaped(<openmodularturrets:sensorTierTwoItem>, [[null, <ore:ingotInvar>], [<ore:ingotInvar>, <openmodularturrets:sensorTierOneItem>, <ore:ingotInvar>], [null, <openmodularturrets:ioBus>]]);
recipes.remove(<openmodularturrets:sensorTierThreeItem>);
recipes.addShaped(<openmodularturrets:sensorTierThreeItem>, [[<ore:ingotElectrum>, <ore:gemDiamond>, <ore:ingotElectrum>], [<openmodularturrets:ioBus>, <openmodularturrets:sensorTierTwoItem>, <openmodularturrets:ioBus>], [<ore:ingotElectrum>, <ore:gemDiamond>, <ore:ingotElectrum>]]);
recipes.remove(<openmodularturrets:sensorTierFourItem>);
recipes.addShaped(<openmodularturrets:sensorTierFourItem>, [[<Mekanism:TeleportationCore>, <Creator:itemCrystal:1>, <Mekanism:TeleportationCore>], [<openmodularturrets:ioBus>, <openmodularturrets:sensorTierThreeItem>, <openmodularturrets:ioBus>], [<Mekanism:TeleportationCore>, <Creator:itemCrystal:1>, <Mekanism:TeleportationCore>]]);
recipes.remove(<openmodularturrets:sensorTierFiveItem>);
recipes.addShaped(<openmodularturrets:sensorTierFiveItem>, [[<Creator:itemAlloy:13>, <Creator:itemAlloy:12>, <Creator:itemAlloy:13>], [<openmodularturrets:ioBus>, <openmodularturrets:sensorTierFourItem>, <openmodularturrets:ioBus>], [<Creator:itemAlloy:13>, <Creator:itemAlloy:12>, <Creator:itemAlloy:13>]]);
recipes.remove(<openmodularturrets:barrelTierTwo>);
recipes.addShaped(<openmodularturrets:barrelTierTwo>, [[<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>], [null, <openmodularturrets:barrelTierOne>], [<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>]]);
recipes.remove(<openmodularturrets:barrelTierThree>);
recipes.addShaped(<openmodularturrets:barrelTierThree>, [[<ore:ingotElectrum>, <ore:gemDiamond>, <ore:ingotElectrum>], [null, <openmodularturrets:barrelTierTwo>], [<ore:ingotElectrum>, <ore:gemDiamond>, <ore:ingotElectrum>]]);
recipes.remove(<openmodularturrets:barrelTierFour>);
recipes.addShaped(<openmodularturrets:barrelTierFour>, [[<Mekanism:TeleportationCore>, <Creator:itemCrystal:1>, <Mekanism:TeleportationCore>], [null, <openmodularturrets:barrelTierThree>], [<Mekanism:TeleportationCore>, <Creator:itemCrystal:1>, <Mekanism:TeleportationCore>]]);
recipes.remove(<openmodularturrets:barrelTierFive>);
recipes.addShaped(<openmodularturrets:barrelTierFive>, [[<Creator:itemAlloy:13>, <Creator:itemAlloy:12>, <Creator:itemAlloy:13>], [null, <openmodularturrets:barrelTierFour>], [<Creator:itemAlloy:13>, <Creator:itemAlloy:12>, <Creator:itemAlloy:13>]]);
recipes.remove(<openmodularturrets:chamberTierTwo>);
recipes.addShaped(<openmodularturrets:chamberTierTwo>, [[<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>], [null, <openmodularturrets:chamberTierOne>, <ore:circuitAdvanced>], [<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>]]);
recipes.remove(<openmodularturrets:chamberTierThree>);
recipes.addShaped(<openmodularturrets:chamberTierThree>, [[<ore:ingotElectrum>, <ore:gemDiamond>, <ore:ingotElectrum>], [null, <openmodularturrets:chamberTierTwo>, <ThermalExpansion:material:2>], [<ore:ingotElectrum>, <ore:gemDiamond>, <ore:ingotElectrum>]]);
recipes.remove(<openmodularturrets:chamberTierFour>);
recipes.addShaped(<openmodularturrets:chamberTierFour>, [[<Mekanism:TeleportationCore>, <Creator:itemCrystal:1>, <Mekanism:TeleportationCore>], [null, <openmodularturrets:chamberTierThree>, <ore:circuitElite>], [<Mekanism:TeleportationCore>, <Creator:itemCrystal:1>, <Mekanism:TeleportationCore>]]);
recipes.remove(<openmodularturrets:chamberTierFive>);
recipes.addShaped(<openmodularturrets:chamberTierFive>, [[<Creator:itemAlloy:13>, <Creator:itemAlloy:12>, <Creator:itemAlloy:13>], [null, <openmodularturrets:chamberTierFour>, <ore:circuitUltimate>], [<Creator:itemAlloy:13>, <Creator:itemAlloy:12>, <Creator:itemAlloy:13>]]);

print("Initialized 'OpenModularTurrets.zs'");