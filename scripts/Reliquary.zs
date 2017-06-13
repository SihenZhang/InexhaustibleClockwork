#Name: Reliquary.zs
#Author: Si_hen

print("Initializing 'Reliquary.zs'...");

recipes.remove(<xreliquary:alkahest_tome>);
<xreliquary:alkahest_tome>.addTooltip(format.red("No! No! No! You are NOT an alchemist."));
<xreliquary:alkahest_tome>.addTooltip(format.red("不！不！不！你可不是炼金术师。"));
recipes.remove(<xreliquary:rending_gale>);
recipes.addShaped(<xreliquary:rending_gale>, [[<xreliquary:mob_ingredient:8>, <xreliquary:mob_ingredient:5>, <RandomThings:spiritBinder>], [<xreliquary:angelic_feather>, <Creator:itemAlloy:13>, <xreliquary:mob_ingredient:5>], [<Creator:itemAlloy:13>, <xreliquary:angelic_feather>, <xreliquary:mob_ingredient:8>]]);
recipes.remove(<xreliquary:heart_zhu>);
recipes.addShaped(<xreliquary:heart_zhu>, [[<baublelicious:entangledAmulet>, <xreliquary:heart_pearl>, <xreliquary:heart_pearl>], [<xreliquary:heart_pearl>, <xreliquary:heart_pearl>, null], [<xreliquary:heart_pearl>, <xreliquary:heart_pearl>, null]]);
recipes.remove(<xreliquary:heart_zhu:1>);
recipes.addShaped(<xreliquary:heart_zhu:1>, [[<baublelicious:entangledAmulet>, <xreliquary:heart_pearl:1>, <xreliquary:heart_pearl:1>], [<xreliquary:heart_pearl:1>, <xreliquary:heart_pearl:1>, null], [<xreliquary:heart_pearl:1>, <xreliquary:heart_pearl:1>, null]]);
recipes.remove(<xreliquary:heart_zhu:2>);
recipes.addShaped(<xreliquary:heart_zhu:2>, [[<baublelicious:entangledAmulet>, <xreliquary:heart_pearl:2>, <xreliquary:heart_pearl:2>], [<xreliquary:heart_pearl:2>, <xreliquary:heart_pearl:2>, null], [<xreliquary:heart_pearl:2>, <xreliquary:heart_pearl:2>, null]]);
recipes.remove(<xreliquary:heart_zhu:3>);
recipes.addShaped(<xreliquary:heart_zhu:3>, [[<baublelicious:entangledAmulet>, <xreliquary:heart_pearl:3>, <xreliquary:heart_pearl:3>], [<xreliquary:heart_pearl:3>, <xreliquary:heart_pearl:3>, null], [<xreliquary:heart_pearl:3>, <xreliquary:heart_pearl:3>, null]]);
recipes.removeShapeless(<minecraft:gold_nugget>, [<xreliquary:bullet>, <xreliquary:bullet>, <xreliquary:bullet>, <xreliquary:bullet>]);
mods.logistics.hammer.addRecipe(<xreliquary:bullet> * 4, <minecraft:gold_nugget>);

print("Initialized 'Reliquary.zs'");