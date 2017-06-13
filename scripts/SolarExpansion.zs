#Name: SolarExpansion.zs
#Author: Si_hen

print("Initializing 'SolarExpansion.zs'...");

recipes.remove(<SolarExpansion:photovoltaicCell>);
recipes.addShaped(<SolarExpansion:photovoltaicCell>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [null, <ProjRed|Core:projectred.core.part:59>, null], [<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>]]);

recipes.remove(<SolarExpansion:solarPanelLeadstone>);
recipes.addShaped(<SolarExpansion:solarPanelLeadstone>, [[<powersuits:powerArmorComponent:17>, <powersuits:powerArmorComponent:17>, <powersuits:powerArmorComponent:17>], [<ProjRed|Core:projectred.core.part:13>, <SolarExpansion:solarCoreLeadstone>, <ProjRed|Core:projectred.core.part:13>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<SolarExpansion:solarCoreLeadstone>);
recipes.addShaped(<SolarExpansion:solarCoreLeadstone>, [[<ore:nuggetLead>, <TConstruct:strangeFood:1>, <ore:nuggetLead>], [<Forestry:thermionicTubes:11>, <Magneticraft:item.plastic>, <Forestry:thermionicTubes:6>], [<ore:nuggetLead>, <TConstruct:materials:36>, <ore:nuggetLead>]]);
recipes.remove(<SolarExpansion:solarCoreRedstone>);
recipes.addShaped(<SolarExpansion:solarCoreRedstone>, [[null, <ore:ingotEnergeticAlloy>], [<ore:nuggetSignalum>, <SolarExpansion:solarCoreHardened>, <ore:nuggetLumium>], [null, <ore:ingotEnergeticAlloy>]]);
recipes.remove(<SolarExpansion:solarCoreResonant>);
recipes.addShaped(<SolarExpansion:solarCoreResonant>, [[null, <ore:ingotVibrantAlloy>], [<ore:ingotVibrantAlloy>, <SolarExpansion:solarCoreRedstone>, <ore:ingotVibrantAlloy>], [null, <ore:ingotVibrantAlloy>]]);
recipes.remove(<SolarExpansion:solarCoreAdvanced>);
recipes.addShaped(<SolarExpansion:solarCoreAdvanced>, [[null, <ore:ingotCeruclase>], [<ore:ingotCeruclase>, <SolarExpansion:solarCoreResonant>, <ore:ingotCeruclase>], [null, <ore:ingotCeruclase>]]);
recipes.remove(<SolarExpansion:solarCoreUltimate>);
recipes.addShaped(<SolarExpansion:solarCoreUltimate>, [[null, <ore:ingotAmordrine>], [<ore:ingotAmordrine>, <SolarExpansion:solarCoreAdvanced>, <ore:ingotAmordrine>], [null, <ore:ingotAmordrine>]]);

print("Initialized 'SolarExpansion.zs'");