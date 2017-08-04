#Name: OreDrop&OreHardness.zs
#Author: Si_hen

import mods.MTUtils;

print("Initializing 'OreDrop&OreHardness.zs'...");

#orehardness
MTUtils.setHardness(<minecraft:coal_ore>, 15);
MTUtils.setHardness(<minecraft:iron_ore>, 25);
MTUtils.setHardness(<minecraft:gold_ore>, 25);
MTUtils.setHardness(<minecraft:lapis_ore>, 15);
MTUtils.setHardness(<minecraft:redstone_ore>, 15);
MTUtils.setHardness(<minecraft:diamond_ore>, 25);
MTUtils.setHardness(<minecraft:emerald_ore>, 25);

MTUtils.setHardness(<appliedenergistics2:tile.OreQuartz>, 15);
MTUtils.setHardness(<appliedenergistics2:tile.OreQuartzCharged>, 15);

MTUtils.setHardness(<BiomesOPlenty:gemOre:2>, 15);
MTUtils.setHardness(<BiomesOPlenty:gemOre:4>, 15);
MTUtils.setHardness(<BiomesOPlenty:gemOre:6>, 15);
MTUtils.setHardness(<BiomesOPlenty:gemOre:8>, 15);
MTUtils.setHardness(<BiomesOPlenty:gemOre:10>, 15);
MTUtils.setHardness(<BiomesOPlenty:gemOre:12>, 15);

MTUtils.setHardness(<ThermalFoundation:Ore>, 25);
MTUtils.setHardness(<ThermalFoundation:Ore:1>, 25);
MTUtils.setHardness(<ThermalFoundation:Ore:2>, 25);
MTUtils.setHardness(<ThermalFoundation:Ore:3>, 25);
MTUtils.setHardness(<ThermalFoundation:Ore:4>, 25);
MTUtils.setHardness(<ThermalFoundation:Ore:5>, 25);

MTUtils.setHardness(<Magneticraft:salt_ore>, 15);
MTUtils.setHardness(<Magneticraft:tungsten_ore>, 25);

MTUtils.setHardness(<Mekanism:OreBlock>, 25);

MTUtils.setHardness(<TConstruct:SearedBrick:5>, 25);

#oreresistance
MTUtils.setResistance(<minecraft:coal_ore>, 2);
MTUtils.setResistance(<minecraft:iron_ore>, 2);
MTUtils.setResistance(<minecraft:gold_ore>, 2);
MTUtils.setResistance(<minecraft:lapis_ore>, 2);
MTUtils.setResistance(<minecraft:redstone_ore>, 2);
MTUtils.setResistance(<minecraft:diamond_ore>, 2);
MTUtils.setResistance(<minecraft:emerald_ore>, 2);

MTUtils.setResistance(<appliedenergistics2:tile.OreQuartz>, 2);
MTUtils.setResistance(<appliedenergistics2:tile.OreQuartzCharged>, 2);

MTUtils.setResistance(<BiomesOPlenty:gemOre:2>, 2);
MTUtils.setResistance(<BiomesOPlenty:gemOre:4>, 2);
MTUtils.setResistance(<BiomesOPlenty:gemOre:6>, 2);
MTUtils.setResistance(<BiomesOPlenty:gemOre:8>, 2);
MTUtils.setResistance(<BiomesOPlenty:gemOre:10>, 2);
MTUtils.setResistance(<BiomesOPlenty:gemOre:12>, 2);

MTUtils.setResistance(<ThermalFoundation:Ore>, 2);
MTUtils.setResistance(<ThermalFoundation:Ore:1>, 2);
MTUtils.setResistance(<ThermalFoundation:Ore:2>, 2);
MTUtils.setResistance(<ThermalFoundation:Ore:3>, 2);
MTUtils.setResistance(<ThermalFoundation:Ore:4>, 2);
MTUtils.setResistance(<ThermalFoundation:Ore:5>, 2);

MTUtils.setResistance(<Magneticraft:salt_ore>, 2);
MTUtils.setResistance(<Magneticraft:tungsten_ore>, 2);

MTUtils.setResistance(<Mekanism:OreBlock>, 2);

MTUtils.setResistance(<TConstruct:SearedBrick:5>, 2);

#oredrop
MTUtils.clearDrops();

MTUtils.setBlockDrops(null, <denseores:block0>, [<minecraft:iron_ore> * 16], [1.5], [<minecraft:iron_ore> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:1>, [<minecraft:gold_ore> * 16], [1.5], [<minecraft:gold_ore> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:2>, [<minecraft:dye:4> * 32], [1.5], [<minecraft:dye:4> * 32]);
MTUtils.setBlockDrops(null, <denseores:block0:3>, [<minecraft:diamond> * 16], [1.5], [<minecraft:diamond> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:4>, [<minecraft:emerald> * 16], [1.5], [<minecraft:emerald> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:5>, [<minecraft:redstone> * 32], [1.5], [<minecraft:redstone> * 32]);
MTUtils.setBlockDrops(null, <denseores:block0:6>, [<minecraft:coal> * 16], [1.5], [<minecraft:coal> * 16]);

MTUtils.setBlockDrops(null, <denseores:block0:8>, [<appliedenergistics2:item.ItemMultiMaterial> * 16], [1.5], [<appliedenergistics2:item.ItemMultiMaterial> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:9>, [<appliedenergistics2:item.ItemMultiMaterial:1> * 16], [1.5], [<appliedenergistics2:item.ItemMultiMaterial:1> * 16]);

MTUtils.setBlockDrops(null, <denseores:block0:10>, [<BiomesOPlenty:gems:1> * 16], [1.5], [<BiomesOPlenty:gems:1> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:11>, [<BiomesOPlenty:gems:2> * 16], [1.5], [<BiomesOPlenty:gems:2> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:12>, [<BiomesOPlenty:gems:3> * 16], [1.5], [<BiomesOPlenty:gems:3> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:13>, [<BiomesOPlenty:gems:4> * 16], [1.5], [<BiomesOPlenty:gems:4> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:14>, [<BiomesOPlenty:gems:5> * 16], [1.5], [<BiomesOPlenty:gems:5> * 16]);
MTUtils.setBlockDrops(null, <denseores:block0:15>, [<BiomesOPlenty:gems:6> * 16], [1.5], [<BiomesOPlenty:gems:6> * 16]);

MTUtils.setBlockDrops(null, <denseores:block1>, [<ThermalFoundation:Ore> * 16], [1.5], [<ThermalFoundation:Ore> * 16]);
MTUtils.setBlockDrops(null, <denseores:block1:1>, [<ThermalFoundation:Ore:1> * 16], [1.5], [<ThermalFoundation:Ore:1> * 16]);
MTUtils.setBlockDrops(null, <denseores:block1:2>, [<ThermalFoundation:Ore:2> * 16], [1.5], [<ThermalFoundation:Ore:2> * 16]);
MTUtils.setBlockDrops(null, <denseores:block1:3>, [<ThermalFoundation:Ore:3> * 16], [1.5], [<ThermalFoundation:Ore:3> * 16]);
MTUtils.setBlockDrops(null, <denseores:block1:4>, [<ThermalFoundation:Ore:4> * 16], [1.5], [<ThermalFoundation:Ore:4> * 16]);
MTUtils.setBlockDrops(null, <denseores:block1:5>, [<ThermalFoundation:Ore:5> * 16], [1.5], [<ThermalFoundation:Ore:5> * 16]);

MTUtils.setBlockDrops(null, <denseores:block1:7>, [<Magneticraft:item.dustSalt> * 16], [1.5], [<Magneticraft:item.dustSalt> * 16]);
MTUtils.setBlockDrops(null, <denseores:block1:8>, [<Magneticraft:tungsten_ore> * 16], [1.5], [<Magneticraft:tungsten_ore> * 16]);

MTUtils.setBlockDrops(null, <denseores:block1:9>, [<Mekanism:OreBlock> * 16], [1.5], [<Mekanism:OreBlock> * 16]);

MTUtils.setBlockDrops(null, <denseores:block1:10>, [<ThermalFoundation:material:16> * 16], [1.5], [<ThermalFoundation:material:16> * 16]);

MTUtils.setBlockDrops(null, <denseores:block1:11>, [<TConstruct:SearedBrick:5> * 16], [1.5], [<TConstruct:SearedBrick:5> * 16]);

print("Initialized 'OreDrop&OreHardness.zs'");