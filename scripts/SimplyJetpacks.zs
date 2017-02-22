#Name: SimplyJetpacks.zs
#Author: Si_hen

print("Initializing 'SimplyJetpacks.zs'...");

recipes.remove(<simplyjetpacks:components:14>);
recipes.remove(<simplyjetpacks:components:13>);
recipes.remove(<simplyjetpacks:components:12>);
recipes.remove(<simplyjetpacks:components:11>);
recipes.addShaped(<simplyjetpacks:components:13>, [[<ore:ingotElectrum>, <ThermalExpansion:material:1>, <ore:ingotElectrum>], [<ThermalExpansion:Glass>, <ThermalExpansion:Cell:3>, <ThermalExpansion:Glass>], [<ore:ingotElectrum>, <ore:dustRedstone>, <ore:ingotElectrum>]]);
recipes.addShaped(<simplyjetpacks:components:14>, [[<ore:ingotEnderium>, <ThermalExpansion:material:1>, <ore:ingotEnderium>], [<ThermalExpansion:Glass:1>, <ThermalExpansion:Cell:4>, <ThermalExpansion:Glass:1>], [<ore:ingotEnderium>, <ore:dustRedstone>, <ore:ingotEnderium>]]);
recipes.addShaped(<simplyjetpacks:components:12>, [[<ore:ingotInvar>, <ThermalExpansion:material:1>, <ore:ingotInvar>], [<appliedenergistics2:tile.BlockQuartzLamp>, <ThermalExpansion:Cell:2>, <appliedenergistics2:tile.BlockQuartzLamp>], [<ore:ingotInvar>, <ore:dustRedstone>, <ore:ingotInvar>]]);
recipes.addShaped(<simplyjetpacks:components:11>, [[<ore:ingotLead>, <ThermalExpansion:material:1>, <ore:ingotLead>], [<appliedenergistics2:tile.BlockQuartzGlass>, <ThermalExpansion:Cell:1>, <appliedenergistics2:tile.BlockQuartzGlass>], [<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>]]);

print("Initialized 'SimplyJetpacks.zs'");