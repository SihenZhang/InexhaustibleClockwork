#Name: OreDrop&OreHardness.zs
#Author: Si_hen

import mods.MTUtils.Utils;

print("Initializing 'OreDrop&OreHardness.zs'...");

#orehardness
Utils.setHardness(<minecraft:coal_ore>, 15);
Utils.setHardness(<minecraft:iron_ore>, 25);
Utils.setHardness(<minecraft:gold_ore>, 25);
Utils.setHardness(<minecraft:lapis_ore>, 15);
Utils.setHardness(<minecraft:redstone_ore>, 15);
Utils.setHardness(<minecraft:diamond_ore>, 25);
Utils.setHardness(<minecraft:emerald_ore>, 25);

Utils.setHardness(<appliedenergistics2:tile.OreQuartz>, 15);
Utils.setHardness(<appliedenergistics2:tile.OreQuartzCharged>, 15);

Utils.setHardness(<BiomesOPlenty:gemOre:2>, 15);
Utils.setHardness(<BiomesOPlenty:gemOre:4>, 15);
Utils.setHardness(<BiomesOPlenty:gemOre:6>, 15);
Utils.setHardness(<BiomesOPlenty:gemOre:8>, 15);
Utils.setHardness(<BiomesOPlenty:gemOre:10>, 15);
Utils.setHardness(<BiomesOPlenty:gemOre:12>, 15);

Utils.setHardness(<ThermalFoundation:Ore>, 25);
Utils.setHardness(<ThermalFoundation:Ore:1>, 25);
Utils.setHardness(<ThermalFoundation:Ore:2>, 25);
Utils.setHardness(<ThermalFoundation:Ore:3>, 25);
Utils.setHardness(<ThermalFoundation:Ore:4>, 25);
Utils.setHardness(<ThermalFoundation:Ore:5>, 25);

Utils.setHardness(<Magneticraft:salt_ore>, 15);
Utils.setHardness(<Magneticraft:tungsten_ore>, 25);

Utils.setHardness(<Mekanism:OreBlock>, 25);

Utils.setHardness(<TConstruct:SearedBrick:5>, 25);

#oreresistance
Utils.setResistance(<minecraft:coal_ore>, 2);
Utils.setResistance(<minecraft:iron_ore>, 2);
Utils.setResistance(<minecraft:gold_ore>, 2);
Utils.setResistance(<minecraft:lapis_ore>, 2);
Utils.setResistance(<minecraft:redstone_ore>, 2);
Utils.setResistance(<minecraft:diamond_ore>, 2);
Utils.setResistance(<minecraft:emerald_ore>, 2);

Utils.setResistance(<appliedenergistics2:tile.OreQuartz>, 2);
Utils.setResistance(<appliedenergistics2:tile.OreQuartzCharged>, 2);

Utils.setResistance(<BiomesOPlenty:gemOre:2>, 2);
Utils.setResistance(<BiomesOPlenty:gemOre:4>, 2);
Utils.setResistance(<BiomesOPlenty:gemOre:6>, 2);
Utils.setResistance(<BiomesOPlenty:gemOre:8>, 2);
Utils.setResistance(<BiomesOPlenty:gemOre:10>, 2);
Utils.setResistance(<BiomesOPlenty:gemOre:12>, 2);

Utils.setResistance(<ThermalFoundation:Ore>, 2);
Utils.setResistance(<ThermalFoundation:Ore:1>, 2);
Utils.setResistance(<ThermalFoundation:Ore:2>, 2);
Utils.setResistance(<ThermalFoundation:Ore:3>, 2);
Utils.setResistance(<ThermalFoundation:Ore:4>, 2);
Utils.setResistance(<ThermalFoundation:Ore:5>, 2);

Utils.setResistance(<Magneticraft:salt_ore>, 2);
Utils.setResistance(<Magneticraft:tungsten_ore>, 2);

Utils.setResistance(<Mekanism:OreBlock>, 2);

Utils.setResistance(<TConstruct:SearedBrick:5>, 2);

#oredrop
Utils.clearDrops();

Utils.setBlockDrops(null, <denseores:block0>, [<minecraft:iron_ore> * 16], [1.5], [<minecraft:iron_ore> * 16]);
Utils.setBlockDrops(null, <denseores:block0:1>, [<minecraft:gold_ore> * 16], [1.5], [<minecraft:gold_ore> * 16]);
Utils.setBlockDrops(null, <denseores:block0:2>, [<minecraft:dye:4> * 32], [1.5], [<minecraft:dye:4> * 32]);
Utils.setBlockDrops(null, <denseores:block0:3>, [<minecraft:diamond> * 16], [1.5], [<minecraft:diamond> * 16]);
Utils.setBlockDrops(null, <denseores:block0:4>, [<minecraft:emerald> * 16], [1.5], [<minecraft:emerald> * 16]);
Utils.setBlockDrops(null, <denseores:block0:5>, [<minecraft:redstone> * 32], [1.5], [<minecraft:redstone> * 32]);
Utils.setBlockDrops(null, <denseores:block0:6>, [<minecraft:coal> * 16], [1.5], [<minecraft:coal> * 16]);

Utils.setBlockDrops(null, <denseores:block0:8>, [<appliedenergistics2:item.ItemMultiMaterial> * 16], [1.5], [<appliedenergistics2:item.ItemMultiMaterial> * 16]);
Utils.setBlockDrops(null, <denseores:block0:9>, [<appliedenergistics2:item.ItemMultiMaterial:1> * 16], [1.5], [<appliedenergistics2:item.ItemMultiMaterial:1> * 16]);

Utils.setBlockDrops(null, <denseores:block0:10>, [<BiomesOPlenty:gems:1> * 16], [1.5], [<BiomesOPlenty:gems:1> * 16]);
Utils.setBlockDrops(null, <denseores:block0:11>, [<BiomesOPlenty:gems:2> * 16], [1.5], [<BiomesOPlenty:gems:2> * 16]);
Utils.setBlockDrops(null, <denseores:block0:12>, [<BiomesOPlenty:gems:3> * 16], [1.5], [<BiomesOPlenty:gems:3> * 16]);
Utils.setBlockDrops(null, <denseores:block0:13>, [<BiomesOPlenty:gems:4> * 16], [1.5], [<BiomesOPlenty:gems:4> * 16]);
Utils.setBlockDrops(null, <denseores:block0:14>, [<BiomesOPlenty:gems:5> * 16], [1.5], [<BiomesOPlenty:gems:5> * 16]);
Utils.setBlockDrops(null, <denseores:block0:15>, [<BiomesOPlenty:gems:6> * 16], [1.5], [<BiomesOPlenty:gems:6> * 16]);

Utils.setBlockDrops(null, <denseores:block1>, [<ThermalFoundation:Ore> * 16], [1.5], [<ThermalFoundation:Ore> * 16]);
Utils.setBlockDrops(null, <denseores:block1:1>, [<ThermalFoundation:Ore:1> * 16], [1.5], [<ThermalFoundation:Ore:1> * 16]);
Utils.setBlockDrops(null, <denseores:block1:2>, [<ThermalFoundation:Ore:2> * 16], [1.5], [<ThermalFoundation:Ore:2> * 16]);
Utils.setBlockDrops(null, <denseores:block1:3>, [<ThermalFoundation:Ore:3> * 16], [1.5], [<ThermalFoundation:Ore:3> * 16]);
Utils.setBlockDrops(null, <denseores:block1:4>, [<ThermalFoundation:Ore:4> * 16], [1.5], [<ThermalFoundation:Ore:4> * 16]);
Utils.setBlockDrops(null, <denseores:block1:5>, [<ThermalFoundation:Ore:5> * 16], [1.5], [<ThermalFoundation:Ore:5> * 16]);

Utils.setBlockDrops(null, <denseores:block1:7>, [<Magneticraft:item.dustSalt> * 16], [1.5], [<Magneticraft:item.dustSalt> * 16]);
Utils.setBlockDrops(null, <denseores:block1:8>, [<Magneticraft:tungsten_ore> * 16], [1.5], [<Magneticraft:tungsten_ore> * 16]);

Utils.setBlockDrops(null, <denseores:block1:9>, [<Mekanism:OreBlock> * 16], [1.5], [<Mekanism:OreBlock> * 16]);

Utils.setBlockDrops(null, <denseores:block1:10>, [<ThermalFoundation:material:16> * 16], [1.5], [<ThermalFoundation:material:16> * 16]);

Utils.setBlockDrops(null, <denseores:block1:11>, [<TConstruct:SearedBrick:5> * 16], [1.5], [<TConstruct:SearedBrick:5> * 16]);

print("Initialized 'OreDrop&OreHardness.zs'");