#Name: Factorization.zs
#Author: Si_hen

print("Initializing 'Factorization.zs'...");

#water boiler
recipes.remove(<factorization:FzBlock:22>);
mods.forestry.Carpenter.addRecipe(<factorization:FzBlock:22>, [[<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>],
                                                               [<ore:plateIron>, <Magneticraft:mg_tank>, <ore:plateIron>], 
                                                               [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);

#mirror
recipes.remove(<factorization:mirror>);
mods.forestry.Carpenter.addRecipe(<factorization:mirror>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                           [<ore:plateIron>, <TConstruct:GlassPane>, <ore:plateIron>], 
                                                           [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 36, 100);

#temporary
recipes.remove(<factorization:FzBlock:32>);
recipes.remove(<factorization:FzBlock:52>);
recipes.remove(<factorization:FzBlock:53>);
recipes.remove(<factorization:FzBlock:11>);
recipes.remove(<factorization:FzBlock:19>);
<factorization:FzBlock:32>.addTooltip(format.red("临时禁用，下一版本恢复。"));
<factorization:FzBlock:52>.addTooltip(format.red("临时禁用，下一版本恢复。"));
<factorization:FzBlock:53>.addTooltip(format.red("临时禁用，下一版本恢复。"));
<factorization:FzBlock:11>.addTooltip(format.red("临时禁用，下一版本恢复。"));
<factorization:FzBlock:19>.addTooltip(format.red("临时禁用，下一版本恢复。"));

print("Initialized 'Factorization.zs'");