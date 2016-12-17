#Name: SolarExpansion.zs
#Author: Si_hen

print("Initializing 'SolarExpansion.zs'...");

recipes.remove(<SolarExpansion:photovoltaicCell>);
recipes.addShaped(<SolarExpansion:photovoltaicCell>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [<ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:59>], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]]);

print("Initialized 'SolarExpansion.zs'");