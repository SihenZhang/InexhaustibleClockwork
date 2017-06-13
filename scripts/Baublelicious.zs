#Name: Baublelicious.zs
#Author: Si_hen

print("Initializing 'Baublelicious.zs'...");

recipes.remove(<baublelicious:ItemMagicCore>);
recipes.addShaped(<baublelicious:ItemMagicCore>, [[null, <ThermalFoundation:material:20>], [<ore:ingotLumium>, <RandomThings:ingredient:6>, <ore:ingotLumium>], [null, <ThermalFoundation:material:20>]]);
recipes.remove(<baublelicious:ItemMagicCore:1>);
recipes.addShaped(<baublelicious:ItemMagicCore:1>, [[null, <Creator:itemCrystal>], [<ore:ingotSignalum>, <baublelicious:ItemMagicCore>, <ore:ingotSignalum>], [null, <Creator:itemCrystal>]]);
recipes.remove(<baublelicious:ItemMagicCore:2>);
recipes.addShaped(<baublelicious:ItemMagicCore:2>, [[<Creator:itemAlloy:14>, <baublelicious:bindingGem>, <Creator:itemAlloy:14>], [<simplyjetpacks:components:63>, <RandomThings:spiritBinder>, <simplyjetpacks:components:63>], [null, <simplyjetpacks:components:61>, null]]);
recipes.remove(<baublelicious:ItemRing>);
recipes.addShaped(<baublelicious:ItemRing>, [[null, <ore:ingotAtlarus>, null], [<ore:rodBlaze>, null, <ore:rodBlaze>], [null, <ore:ingotAtlarus>, null]]);
recipes.remove(<baublelicious:bindingGem>);
recipes.addShaped(<baublelicious:bindingGem>, [[null, <ore:ingotRedAlloy>, null], [<ore:gemCrystalFlux>, <RandomThings:ingredient:6>, <ore:gemCrystalFlux>], [null, <baublelicious:ItemMagicCore:1>, null]]);

print("Initialized 'Baublelicious.zs'");