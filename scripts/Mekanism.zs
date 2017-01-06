#Name: Mekanism.zs
#Author: Si_hen

print("Initializing 'Mekanism.zs'...");

#remove Gunpowder recipes
mods.mekanism.Crusher.removeRecipe(<minecraft:gunpowder>);
mods.mekanism.Enrichment.removeRecipe(<ore:dustSaltpeter>);

#remove Paper recipe
recipes.removeShaped(<minecraft:paper>, [[<Mekanism:Sawdust>, <Mekanism:Sawdust>, <Mekanism:Sawdust>]]);

#control circuit
recipes.remove(<Mekanism:ControlCircuit>);
recipes.remove(<Mekanism:ControlCircuit:1>);
recipes.remove(<Mekanism:ControlCircuit:2>);
recipes.remove(<Mekanism:ControlCircuit:3>);
mods.forestry.Carpenter.addRecipe(<Mekanism:ControlCircuit>, [[<ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>],
                                                              [<ore:dustRedstone>, <ore:plateIron>, <ore:dustRedstone>], 
                                                              [<ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>, <ImmersiveEngineering:coil>]], <liquid:copper.molten> * 16, 10);
mods.forestry.Carpenter.addRecipe(<Mekanism:ControlCircuit:1>, [[<ore:dustRedstone>, <ore:dustGlowstone>, <ore:dustRedstone>],
                                                                [<ore:gemLapis>, <Mekanism:ControlCircuit>, <ore:gemLapis>], 
                                                                [<ore:dustRedstone>, <ore:dustGlowstone>, <ore:dustRedstone>]], <liquid:copper.molten> * 16, 20);
mods.forestry.Carpenter.addRecipe(<Mekanism:ControlCircuit:1>, [[<ore:dustRedstone>, <ore:gemLapis>, <ore:dustRedstone>],
                                                                [<ore:dustGlowstone>, <Mekanism:ControlCircuit>, <ore:dustGlowstone>], 
                                                                [<ore:dustRedstone>, <ore:gemLapis>, <ore:dustRedstone>]], <liquid:copper.molten> * 16, 20);
mods.forestry.Carpenter.addRecipe(<Mekanism:ControlCircuit:2>, [[<ProjRed|Core:projectred.core.part:13>, <ProjRed|Core:projectred.core.part:14>, <ProjRed|Core:projectred.core.part:13>],
                                                                [<ProjRed|Core:projectred.core.part:59>, <Mekanism:ControlCircuit:1>, <ProjRed|Core:projectred.core.part:59>], 
                                                                [<ProjRed|Core:projectred.core.part:13>, <ProjRed|Core:projectred.core.part:14>, <ProjRed|Core:projectred.core.part:13>]], <liquid:copper.molten> * 16, 30);
mods.forestry.Carpenter.addRecipe(<Mekanism:ControlCircuit:2>, [[<ProjRed|Core:projectred.core.part:13>, <ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:13>],
                                                                [<ProjRed|Core:projectred.core.part:14>, <Mekanism:ControlCircuit:1>, <ProjRed|Core:projectred.core.part:14>], 
                                                                [<ProjRed|Core:projectred.core.part:13>, <ProjRed|Core:projectred.core.part:59>, <ProjRed|Core:projectred.core.part:13>]], <liquid:copper.molten> * 16, 30);
mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:ControlCircuit:3>, 500000, [<Mekanism:ControlCircuit:2>, <Magneticraft:item.ingotCarbide> * 8, <Creator:PlatinumPlate>]);

print("Initialized 'Mekanism.zs'");