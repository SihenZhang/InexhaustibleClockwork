#Name: Food.zs
#Author: Si_hen

print("Initializing 'Food.zs'...");

#toast
furnace.remove(<harvestcraft:toastItem>);
mods.thermalexpansion.Furnace.removeRecipe(<minecraft:bread>);

#About Tofeat OD
val rawmeat = <ore:listAllmeatraw>;
rawmeat.add(<Creator:rawtofabbititem>);
rawmeat.add(<Creator:rawtofaconitem>);
rawmeat.add(<Creator:rawtofeakitem>);
rawmeat.add(<Creator:rawtofenisonitem>);
rawmeat.add(<Creator:rawtofickenitem>);
rawmeat.add(<Creator:rawtofurkeyitem>);
rawmeat.add(<Creator:rawtofuttonitem>);
val cookedmeat = <ore:listAllmeatcooked>;
cookedmeat.add(<Creator:cookedtofabbititem>);
cookedmeat.add(<Creator:cookedtofaconitem>);
cookedmeat.add(<Creator:cookedtofeakitem>);
cookedmeat.add(<Creator:cookedtofenisonitem>);
cookedmeat.add(<Creator:cookedtofickenitem>);
cookedmeat.add(<Creator:cookedtofurkeyitem>);
cookedmeat.add(<Creator:cookedtofuttonitem>);

<ore:listAllrabbitraw>.add(<Creator:rawtofabbititem>);
<ore:listAllporkraw>.add(<Creator:rawtofaconitem>);
<ore:listAllbeefraw>.add(<Creator:rawtofeakitem>);
<ore:listAllegg>.add(<Creator:rawtofeegitem>);
<ore:listAllvenisonraw>.add(<Creator:rawtofenisonitem>);
<ore:listAllchickenraw>.add(<Creator:rawtofickenitem>);
<ore:listAllfishraw>.add(<Creator:rawtofishitem>);
<ore:listAllturkeyraw>.add(<Creator:rawtofurkeyitem>);
<ore:listAllmuttonraw>.add(<Creator:rawtofuttonitem>);
<ore:listAllrabbitcooked>.add(<Creator:cookedtofabbititem>);
<ore:listAllporkcooked>.add(<Creator:cookedtofaconitem>);
<ore:listAllbeefcooked>.add(<Creator:cookedtofeakitem>);
<ore:listAllvenisoncooked>.add(<Creator:cookedtofenisonitem>);
<ore:listAllchickencooked>.add(<Creator:cookedtofickenitem>);
<ore:listAllfishcooked>.add(<Creator:cookedtofishitem>);
<ore:listAllturkeycooked>.add(<Creator:cookedtofurkeyitem>);
<ore:listAllmuttoncooked>.add(<Creator:cookedtofuttonitem>);

val tofu = <harvestcraft:firmtofuItem>;
rawmeat.remove(tofu);
cookedmeat.remove(tofu);
<ore:listAllrabbitraw>.remove(tofu);
<ore:listAllporkraw>.remove(tofu);
<ore:listAllbeefraw>.remove(tofu);
<ore:listAllegg>.remove(tofu);
<ore:listAllvenisonraw>.remove(tofu);
<ore:listAllchickenraw>.remove(tofu);
<ore:listAllfishraw>.remove(tofu);
<ore:listAllturkeyraw>.remove(tofu);
<ore:listAllmuttonraw>.remove(tofu);
<ore:listAllrabbitcooked>.remove(tofu);
<ore:listAllporkcooked>.remove(tofu);
<ore:listAllbeefcooked>.remove(tofu);
<ore:listAllvenisoncooked>.remove(tofu);
<ore:listAllchickencooked>.remove(tofu);
<ore:listAllfishcooked>.remove(tofu);
<ore:listAllturkeycooked>.remove(tofu);
<ore:listAllmuttoncooked>.remove(tofu);

#add Tofeat recipes
recipes.addShapeless(<Creator:rawtofabbititem>, [<harvestcraft:cuttingboardItem>.reuse(), <harvestcraft:firmtofuItem>, <harvestcraft:flourItem>, <harvestcraft:oliveoilItem>, <minecraft:carrot>]);
recipes.addShapeless(<Creator:rawtofaconitem>, [<harvestcraft:cuttingboardItem>.reuse(), <harvestcraft:firmtofuItem>, <harvestcraft:oliveoilItem>, <ore:foodSalt>, <harvestcraft:flourItem>, <ore:listAllsugar>]);
recipes.addShapeless(<Creator:rawtofeakitem>, [<harvestcraft:cuttingboardItem>.reuse(), <harvestcraft:firmtofuItem>, <ore:listAllmushroom>, <harvestcraft:soysauceItem>, <harvestcraft:blackpepperItem>, <harvestcraft:oliveoilItem>]);
recipes.addShapeless(<Creator:rawtofeegitem>, [<harvestcraft:cuttingboardItem>.reuse(), <harvestcraft:firmtofuItem>, <minecraft:dye:11>]);
recipes.addShapeless(<Creator:rawtofenisonitem>, [<harvestcraft:cuttingboardItem>.reuse(), <harvestcraft:firmtofuItem>, <harvestcraft:flourItem>, <harvestcraft:oliveoilItem>, <ore:listAllnut>, <harvestcraft:soysauceItem>, <ore:listAllmushroom>]);
recipes.addShapeless(<Creator:rawtofickenitem>, [<harvestcraft:cuttingboardItem>.reuse(), <harvestcraft:firmtofuItem>, <harvestcraft:flourItem>, <harvestcraft:oliveoilItem>, <harvestcraft:spiceleafItem>]);
recipes.addShapeless(<Creator:rawtofishitem>, [<harvestcraft:cuttingboardItem>.reuse(), <harvestcraft:firmtofuItem>, <harvestcraft:seaweedItem>, <harvestcraft:lemonItem>, <harvestcraft:spiceleafItem>]);
recipes.addShapeless(<Creator:rawtofurkeyitem>, [<harvestcraft:cuttingboardItem>.reuse(), <harvestcraft:firmtofuItem>, <harvestcraft:oliveoilItem>, <minecraft:bread>]);
recipes.addShapeless(<Creator:rawtofuttonitem>, [<harvestcraft:cuttingboardItem>.reuse(), <harvestcraft:firmtofuItem>, <harvestcraft:flourItem>, <harvestcraft:oliveoilItem>, <minecraft:potato>]);
furnace.addRecipe(<Creator:cookedtofabbititem>, <Creator:rawtofabbititem>, 0.1);
furnace.addRecipe(<Creator:cookedtofaconitem>, <Creator:rawtofaconitem>, 0.1);
furnace.addRecipe(<Creator:cookedtofeakitem>, <Creator:rawtofeakitem>, 0.1);
furnace.addRecipe(<Creator:cookedtofeegitem>, <Creator:rawtofeegitem>, 0.1);
furnace.addRecipe(<Creator:cookedtofenisonitem>, <Creator:rawtofenisonitem>, 0.1);
furnace.addRecipe(<Creator:cookedtofickenitem>, <Creator:rawtofickenitem>, 0.1);
furnace.addRecipe(<Creator:cookedtofishitem>, <Creator:rawtofishitem>, 0.1);
furnace.addRecipe(<Creator:cookedtofurkeyitem>, <Creator:rawtofurkeyitem>, 0.1);
furnace.addRecipe(<Creator:cookedtofuttonitem>, <Creator:rawtofuttonitem>, 0.1);

print("Initialized 'Food.zs'");