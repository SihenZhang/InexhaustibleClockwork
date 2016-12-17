#Name: Mineral Processing.zs
#Author: Si_hen

print("Initializing 'Mineral Processing.zs'...");

#remove dust from OreDict
<ore:dustIron>.remove(<ImmersiveEngineering:metal:8>);
<ore:dustCopper>.remove(<ImmersiveEngineering:metal:10>);
<ore:dustTin>.remove(<Mekanism:Dust:4>);
<ore:dustNickel>.remove(<ImmersiveEngineering:metal:14>);
<ore:dustGold>.remove(<ImmersiveEngineering:metal:9>);
<ore:dustLead>.remove(<ImmersiveEngineering:metal:12>);
<ore:dustSilver>.remove(<ImmersiveEngineering:metal:13>);
<ore:dustAluminum>.remove(<ImmersiveEngineering:metal:11>);

#Tier 1

#iron
#remove
furnace.remove(<ore:ingotIron>);
mods.tconstruct.Smeltery.removeMelting(<ore:oreIron>);
mods.tconstruct.Smeltery.removeMelting(<ore:denseoreIron>);
mods.tconstruct.Smeltery.removeMelting(<ImmersiveEngineering:metal:8>);
mods.appeng.Grinder.removeRecipe(<ore:dustIron>);
recipes.removeShaped(<ore:ingotIron>, [[<ore:oreIron>, <ThermalFoundation:material:512>]]);
mods.mekanism.Crusher.removeRecipe(<ore:dustDirtyIron>, <*>);
mods.mekanism.Crusher.removeRecipe(<ore:dustIron>, <*>);
mods.mekanism.Enrichment.removeRecipe(<*>, <ore:dustIron>);
mods.mekanism.Purification.removeRecipe(<ore:clumpIron>, <*>, <gas:oxygen>);
mods.mekanism.chemical.Injection.removeRecipe(<ore:shardIron>, <*>, <gas:hydrogenchloride>);
mods.mekanism.chemical.Dissolution.removeRecipe(<gas:iron>, <ore:oreIron>);
mods.mekanism.chemical.Crystallizer.removeRecipe(<ore:crystalIron>, <gas:cleanIron>);
mods.mekanism.Combiner.removeRecipe(<ore:oreIron>, <ImmersiveEngineering:metal:8>, <gas:liquidStone>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:oreIron>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:chunkIron>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:rubbleIron>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:pebblesIron>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:clusterIron>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustIron>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:denseoreIron>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:crushedIron>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:oreIron>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:denseoreIron>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:oreIron>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:denseoreIron>);
mods.extraUtils.QED.removeRecipe(<ore:ingotIron>);
mods.immersiveengineering.Crusher.removeRecipe(<ThermalFoundation:material>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:iron_ingot>);
mods.magneticraft.Crusher.removeRecipe(<minecraft:iron_ore>);
mods.magneticraft.Grinder.removeRecipe(<minecraft:iron_ingot>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles>);
mods.railcraft.RockCrusher.removeRecipe(<ore:oreIron>);
#add
mods.tconstruct.Smeltery.addMelting(<ore:oreIron>, <liquid:iron.molten> * 72, 600);
mods.railcraft.RockCrusher.addRecipe(<minecraft:iron_ore>, false, false, [<aobd:crushedIron> * 1], [1]);
mods.magneticraft.Crusher.addRecipe(<minecraft:iron_ore>, <Magneticraft:item.chunks>, <Creator:ironDustSmall>, 0.4, <Creator:nickelDustTiny> * 3, 0.6);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.chunks>, <Magneticraft:item.rubble> * 2, <Creator:ironDustSmall>, 0.6, <Magneticraft:item.dustSulfur>, 0.15);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.rubble>, <Magneticraft:item.pebbles> * 3, <Creator:ironDustTiny> * 2, 0.675, <Creator:nickelDustSmall>, 0.05);
mods.magneticraft.Sifter.addRecipe(<Magneticraft:item.pebbles>, <Creator:ironDustSmall> * 2, <Creator:nickelDustTiny>, 0.6);
mods.immersiveengineering.Crusher.addRecipe(<Mekanism:DirtyDust> * 3, <Magneticraft:item.pebbles>, 16000, <Magneticraft:item.dustSulfur>, 0.2);
mods.forestry.Centrifuge.addRecipe([<ImmersiveEngineering:metal:8> % 100, <minecraft:dirt> % 5], <Mekanism:DirtyDust>, 20);
mods.thermalexpansion.Smelter.addRecipe(18000, <ExtraUtilities:cobblestone_compressed>, <ImmersiveEngineering:metal:8> * 4, <Mekanism:Shard>, <Creator:ironDustTiny> * 2, 20);
mods.mekanism.chemical.Injection.addRecipe(<Mekanism:Shard>, <gas:hydrogenchloride>, <Mekanism:Crystal> * 8);
mods.mekanism.Enrichment.addRecipe(<Mekanism:Crystal>, <Creator:ironDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<aobd:crushedIron>, false, false, 400, <Creator:ironDustSmall> * 3);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.chunks>, false, false, 400, <Creator:ironDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.rubble>, false, false, 350, <Creator:ironDustSmall> * 3);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.pebbles>, false, false, 330, <Creator:ironDustSmall> * 2);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:DirtyDust>, false, false, 300, <Creator:ironDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<ImmersiveEngineering:metal:8>, false, false, 280, <Creator:ironDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Shard>, false, false, 250, <Creator:ironDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Crystal>, false, false, 250, <Creator:ironDustTiny> * 6);

#copper
#remove
furnace.remove(<ore:ingotCopper>);
mods.tconstruct.Smeltery.removeMelting(<ore:oreCopper>);
mods.tconstruct.Smeltery.removeMelting(<ore:denseoreCopper>);
mods.tconstruct.Smeltery.removeMelting(<ImmersiveEngineering:metal:10>);
mods.appeng.Grinder.removeRecipe(<ore:dustCopper>);
recipes.removeShaped(<ore:ingotCopper>, [[<ore:oreCopper>, <ThermalFoundation:material:512>]]);
mods.mekanism.Crusher.removeRecipe(<ore:dustDirtyCopper>, <*>);
mods.mekanism.Crusher.removeRecipe(<ore:dustCopper>, <*>);
mods.mekanism.Enrichment.removeRecipe(<*>, <ore:dustCopper>);
mods.mekanism.Purification.removeRecipe(<ore:clumpCopper>, <*>, <gas:oxygen>);
mods.mekanism.chemical.Injection.removeRecipe(<ore:shardCopper>, <*>, <gas:hydrogenchloride>);
mods.mekanism.chemical.Dissolution.removeRecipe(<gas:copper>, <ore:oreCopper>);
mods.mekanism.chemical.Crystallizer.removeRecipe(<ore:crystalCopper>, <gas:cleanCopper>);
mods.mekanism.Combiner.removeRecipe(<ore:oreCopper>, <ImmersiveEngineering:metal:10>, <gas:liquidStone>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:oreCopper>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:chunkCopper>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:rubbleCopper>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:pebblesCopper>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:clusterCopper>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustCopper>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:denseoreCopper>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:crushedCopper>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:oreCopper>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:denseoreCopper>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:oreCopper>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:denseoreCopper>);
mods.extraUtils.QED.removeRecipe(<ore:ingotCopper>);
mods.immersiveengineering.Crusher.removeRecipe(<ThermalFoundation:material:32>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ThermalFoundation:material:64>);
mods.magneticraft.Crusher.removeRecipe(<ThermalFoundation:Ore>);
mods.magneticraft.Grinder.removeRecipe(<ThermalFoundation:material:64>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:2>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:2>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:2>);
mods.railcraft.RockCrusher.removeRecipe(<ore:oreCopper>);
#add
mods.tconstruct.Smeltery.addMelting(<ore:oreCopper>, <liquid:copper.molten> * 72, 550);
mods.railcraft.RockCrusher.addRecipe(<ThermalFoundation:Ore>, false, false, [<aobd:crushedCopper> * 1], [1]);
mods.magneticraft.Crusher.addRecipe(<ThermalFoundation:Ore>, <Magneticraft:item.chunks:2>, <Creator:copperDustSmall>, 0.4, <Creator:tinDustTiny> * 3, 0.6);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.chunks:2>, <Magneticraft:item.rubble:2> * 2, <Creator:copperDustSmall>, 0.6, <Magneticraft:item.dustSulfur>, 0.15);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.rubble:2>, <Magneticraft:item.pebbles:2> * 3, <Creator:copperDustTiny> * 2, 0.675, <Creator:tinDustSmall>, 0.05);
mods.magneticraft.Sifter.addRecipe(<Magneticraft:item.pebbles:2>, <Creator:copperDustSmall> * 2, <Creator:tinDustTiny>, 0.6);
mods.immersiveengineering.Crusher.addRecipe(<Mekanism:DirtyDust:3> * 3, <Magneticraft:item.pebbles:2>, 16000, <Magneticraft:item.dustSulfur>, 0.2);
mods.forestry.Centrifuge.addRecipe([<ImmersiveEngineering:metal:10> % 100, <minecraft:dirt> % 5], <Mekanism:DirtyDust:3>, 20);
mods.thermalexpansion.Smelter.addRecipe(18000, <ExtraUtilities:cobblestone_compressed>, <ImmersiveEngineering:metal:10> * 4, <Mekanism:Shard:3>, <Creator:copperDustTiny> * 2, 20);
mods.mekanism.chemical.Injection.addRecipe(<Mekanism:Shard:3>, <gas:hydrogenchloride>, <Mekanism:Crystal:3> * 8);
mods.mekanism.Enrichment.addRecipe(<Mekanism:Crystal:3>, <Creator:copperDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<aobd:crushedCopper>, false, false, 400, <Creator:copperDustSmall> * 3);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.chunks:2>, false, false, 400, <Creator:copperDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.rubble:2>, false, false, 350, <Creator:copperDustSmall> * 3);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.pebbles:2>, false, false, 330, <Creator:copperDustSmall> * 2);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:DirtyDust:3>, false, false, 300, <Creator:copperDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<ImmersiveEngineering:metal:10>, false, false, 280, <Creator:copperDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Shard:3>, false, false, 250, <Creator:copperDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Crystal:3>, false, false, 250, <Creator:copperDustTiny> * 6);

#tin
#remove
furnace.remove(<ore:ingotTin>);
mods.tconstruct.Smeltery.removeMelting(<ore:oreTin>);
mods.tconstruct.Smeltery.removeMelting(<ore:denseoreTin>);
mods.tconstruct.Smeltery.removeMelting(<Mekanism:Dust:4>);
mods.appeng.Grinder.removeRecipe(<ore:dustTin>);
recipes.removeShaped(<ore:ingotTin>, [[<ore:oreTin>, <ThermalFoundation:material:512>]]);
mods.mekanism.Crusher.removeRecipe(<ore:dustDirtyTin>, <*>);
mods.mekanism.Crusher.removeRecipe(<ore:dustTin>, <*>);
mods.mekanism.Enrichment.removeRecipe(<*>, <ore:dustTin>);
mods.mekanism.Purification.removeRecipe(<ore:clumpTin>, <*>, <gas:oxygen>);
mods.mekanism.chemical.Injection.removeRecipe(<ore:shardTin>, <*>, <gas:hydrogenchloride>);
mods.mekanism.chemical.Dissolution.removeRecipe(<gas:tin>, <ore:oreTin>);
mods.mekanism.chemical.Crystallizer.removeRecipe(<ore:crystalTin>, <gas:cleanTin>);
mods.mekanism.Combiner.removeRecipe(<ore:oreTin>, <Mekanism:Dust:4>, <gas:liquidStone>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:oreTin>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:chunkTin>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:rubbleTin>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:pebblesTin>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:clusterTin>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustTin>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:denseoreTin>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:crushedTin>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:oreTin>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:denseoreTin>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:oreTin>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:denseoreTin>);
mods.extraUtils.QED.removeRecipe(<ore:ingotTin>);
mods.immersiveengineering.Crusher.removeRecipe(<ThermalFoundation:material:33>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ThermalFoundation:material:65>);
mods.magneticraft.Crusher.removeRecipe(<ThermalFoundation:Ore:1>);
mods.magneticraft.Grinder.removeRecipe(<ThermalFoundation:material:65>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:3>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:3>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:3>);
mods.railcraft.RockCrusher.removeRecipe(<ore:oreTin>);
#add
mods.tconstruct.Smeltery.addMelting(<ore:oreTin>, <liquid:tin.molten> * 72, 400);
mods.railcraft.RockCrusher.addRecipe(<ThermalFoundation:Ore:1>, false, false, [<aobd:crushedTin> * 1], [1]);
mods.magneticraft.Crusher.addRecipe(<ThermalFoundation:Ore:1>, <Magneticraft:item.chunks:3>, <Creator:tinDustSmall>, 0.4, <Creator:copperDustTiny> * 3, 0.6);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.chunks:3>, <Magneticraft:item.rubble:3> * 2, <Creator:tinDustSmall>, 0.6, <Creator:tinDustTiny>, 0.15);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.rubble:3>, <Magneticraft:item.pebbles:3> * 3, <Creator:tinDustTiny> * 2, 0.675, <Creator:copperDustSmall>, 0.05);
mods.magneticraft.Sifter.addRecipe(<Magneticraft:item.pebbles:3>, <Creator:tinDustSmall> * 2, <Creator:copperDustTiny>, 0.6);
mods.immersiveengineering.Crusher.addRecipe(<Mekanism:DirtyDust:4> * 3, <Magneticraft:item.pebbles:3>, 16000, <Creator:tinDustTiny>, 0.2);
mods.forestry.Centrifuge.addRecipe([<Mekanism:Dust:4> % 100, <minecraft:dirt> % 5], <Mekanism:DirtyDust:4>, 20);
mods.thermalexpansion.Smelter.addRecipe(18000, <ExtraUtilities:cobblestone_compressed>, <Mekanism:Dust:4> * 4, <Mekanism:Shard:4>, <Creator:tinDustTiny> * 2, 20);
mods.mekanism.chemical.Injection.addRecipe(<Mekanism:Shard:4>, <gas:hydrogenchloride>, <Mekanism:Crystal:4> * 8);
mods.mekanism.Enrichment.addRecipe(<Mekanism:Crystal:4>, <Creator:tinDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<aobd:crushedTin>, false, false, 400, <Creator:tinDustSmall> * 3);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.chunks:3>, false, false, 400, <Creator:tinDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.rubble:3>, false, false, 350, <Creator:tinDustSmall> * 3);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.pebbles:3>, false, false, 330, <Creator:tinDustSmall> * 2);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:DirtyDust:4>, false, false, 300, <Creator:tinDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Dust:4>, false, false, 280, <Creator:tinDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Shard:4>, false, false, 250, <Creator:tinDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Crystal:4>, false, false, 250, <Creator:tinDustTiny> * 6);

#Tier 2

#Nickel
#remove
furnace.remove(<ore:ingotNickel>);
mods.tconstruct.Smeltery.removeMelting(<ore:oreNickel>);
mods.tconstruct.Smeltery.removeMelting(<ore:denseoreNickel>);
mods.tconstruct.Smeltery.removeMelting(<ImmersiveEngineering:metal:14>);
mods.appeng.Grinder.removeRecipe(<ore:dustNickel>);
recipes.removeShaped(<ore:ingotNickel>, [[<ore:oreNickel>, <ThermalFoundation:material:512>]]);
mods.mekanism.Crusher.removeRecipe(<ore:dustDirtyNickel>, <*>);
mods.mekanism.Crusher.removeRecipe(<ore:dustNickel>, <*>);
mods.mekanism.Enrichment.removeRecipe(<*>, <ore:dustNickel>);
mods.mekanism.Purification.removeRecipe(<ore:clumpNickel>, <*>, <gas:oxygen>);
mods.mekanism.chemical.Injection.removeRecipe(<ore:shardNickel>, <*>, <gas:hydrogenchloride>);
mods.mekanism.chemical.Dissolution.removeRecipe(<gas:nickel>, <ore:oreNickel>);
mods.mekanism.chemical.Crystallizer.removeRecipe(<ore:crystalNickel>, <gas:cleanNickel>);
mods.mekanism.Combiner.removeRecipe(<ore:oreNickel>, <ImmersiveEngineering:metal:14>, <gas:liquidStone>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:oreNickel>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:chunkNickel>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:rubbleNickel>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:pebblesNickel>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:clusterNickel>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustNickel>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:denseoreNickel>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:crushedNickel>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:oreNickel>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:denseoreNickel>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:oreNickel>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:denseoreNickel>);
mods.extraUtils.QED.removeRecipe(<ore:ingotNickel>);
mods.immersiveengineering.Crusher.removeRecipe(<ThermalFoundation:material:36>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ThermalFoundation:material:68>);
mods.magneticraft.Crusher.removeRecipe(<ThermalFoundation:Ore:4>);
mods.magneticraft.Grinder.removeRecipe(<ThermalFoundation:material:68>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:9>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:9>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:9>);
mods.railcraft.RockCrusher.removeRecipe(<ore:oreNickel>);
#add
mods.immersiveengineering.Crusher.addRecipe(<Magneticraft:item.chunks:9>, <ore:oreNickel>, 20000, <Creator:ironDustSmall>, 0.4);
mods.magneticraft.Crusher.addRecipe(<Magneticraft:item.chunks:9>, <Magneticraft:item.rubble:9> * 2, <Creator:nickelDustSmall>, 0.4, <Creator:ironDustTiny> * 3, 0.6);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.rubble:9>, <Magneticraft:item.pebbles:9> * 3, <Creator:nickelDustSmall>, 0.6, <Magneticraft:item.dustSulfur>, 0.15);
mods.magneticraft.Sifter.addRecipe(<Magneticraft:item.pebbles:9>, <aobd:dustDirtyNickel> * 3, <Creator:ironDustTiny>, 0.6);
mods.forestry.Centrifuge.addRecipe([<ImmersiveEngineering:metal:14> % 100, <minecraft:dirt> % 5], <aobd:dustDirtyNickel>, 20);
mods.thermalexpansion.Smelter.addRecipe(18000, <ExtraUtilities:cobblestone_compressed>, <ImmersiveEngineering:metal:14> * 4, <aobd:shardNickel>, <Creator:nickelDustTiny> * 2, 20);
mods.mekanism.Purification.addRecipe(<aobd:shardNickel>, <gas:oxygen>, <aobd:crystalNickel> * 8);
mods.mekanism.Crusher.addRecipe(<aobd:crystalNickel>, <Creator:nickelDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.chunks:9>, false, false, 400, <Creator:nickelDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.rubble:9>, false, false, 350, <Creator:nickelDustSmall> * 3);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.pebbles:9>, false, false, 330, <Creator:nickelDustSmall> * 2);
mods.railcraft.BlastFurnace.addRecipe(<aobd:dustDirtyNickel>, false, false, 300, <Creator:nickelDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<ImmersiveEngineering:metal:14>, false, false, 280, <Creator:nickelDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<aobd:shardNickel>, false, false, 250, <Creator:nickelDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<aobd:crystalNickel>, false, false, 250, <Creator:nickelDustTiny> * 6);

#Gold
#remove
furnace.remove(<ore:ingotGold>);
mods.tconstruct.Smeltery.removeMelting(<ore:oreGold>);
mods.tconstruct.Smeltery.removeMelting(<ore:denseoreGold>);
mods.tconstruct.Smeltery.removeMelting(<ImmersiveEngineering:metal:9>);
mods.appeng.Grinder.removeRecipe(<ore:dustGold>);
recipes.removeShaped(<ore:ingotGold>, [[<ore:oreGold>, <ThermalFoundation:material:512>]]);
mods.mekanism.Crusher.removeRecipe(<ore:dustDirtyGold>, <*>);
mods.mekanism.Crusher.removeRecipe(<ore:dustGold>, <*>);
mods.mekanism.Enrichment.removeRecipe(<*>, <ore:dustGold>);
mods.mekanism.Purification.removeRecipe(<ore:clumpGold>, <*>, <gas:oxygen>);
mods.mekanism.chemical.Injection.removeRecipe(<ore:shardGold>, <*>, <gas:hydrogenchloride>);
mods.mekanism.chemical.Dissolution.removeRecipe(<gas:gold>, <ore:oreGold>);
mods.mekanism.chemical.Crystallizer.removeRecipe(<ore:crystalGold>, <gas:cleanGold>);
mods.mekanism.Combiner.removeRecipe(<ore:oreGold>, <ImmersiveEngineering:metal:9>, <gas:liquidStone>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:oreGold>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:chunkGold>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:rubbleGold>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:pebblesGold>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:clusterGold>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustGold>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:denseoreGold>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:crushedGold>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:oreGold>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:denseoreGold>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:oreGold>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:denseoreGold>);
mods.extraUtils.QED.removeRecipe(<ore:ingotGold>);
mods.immersiveengineering.Crusher.removeRecipe(<ThermalFoundation:material:1>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:gold_ingot>);
mods.magneticraft.Crusher.removeRecipe(<minecraft:gold_ore>);
mods.magneticraft.Grinder.removeRecipe(<minecraft:gold_ingot>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:1>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:1>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:1>);
mods.railcraft.RockCrusher.removeRecipe(<ore:oreGold>);
#add
mods.immersiveengineering.Crusher.addRecipe(<Magneticraft:item.chunks:1>, <ore:oreGold>, 20000, <Creator:silverDustSmall>, 0.4);
mods.magneticraft.Crusher.addRecipe(<Magneticraft:item.chunks:1>, <Magneticraft:item.rubble:1> * 2, <Creator:goldDustSmall>, 0.4, <Creator:silverDustTiny> * 3, 0.6);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.rubble:1>, <Magneticraft:item.pebbles:1> * 3, <Creator:goldDustSmall>, 0.6, <Creator:copperDustTiny>, 0.15);
mods.magneticraft.Sifter.addRecipe(<Magneticraft:item.pebbles:1>, <Mekanism:DirtyDust:1> * 3, <Creator:silverDustTiny>, 0.6);
mods.forestry.Centrifuge.addRecipe([<ImmersiveEngineering:metal:9> % 100, <minecraft:dirt> % 5], <Mekanism:DirtyDust:1>, 20);
mods.thermalexpansion.Smelter.addRecipe(18000, <ExtraUtilities:cobblestone_compressed>, <ImmersiveEngineering:metal:9> * 4, <Mekanism:Shard:1>, <Creator:goldDustTiny> * 2, 20);
mods.mekanism.Purification.addRecipe(<Mekanism:Shard:1>, <gas:oxygen>, <Mekanism:Crystal:1> * 8);
mods.mekanism.Crusher.addRecipe(<Mekanism:Crystal:1>, <Creator:goldDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.chunks:1>, false, false, 400, <Creator:goldDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.rubble:1>, false, false, 350, <Creator:goldDustSmall> * 3);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.pebbles:1>, false, false, 330, <Creator:goldDustSmall> * 2);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:DirtyDust:1>, false, false, 300, <Creator:goldDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<ImmersiveEngineering:metal:9>, false, false, 280, <Creator:goldDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Shard:1>, false, false, 250, <Creator:goldDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Crystal:1>, false, false, 250, <Creator:goldDustTiny> * 6);

#Lead
#remove
furnace.remove(<ore:ingotLead>);
mods.tconstruct.Smeltery.removeMelting(<ore:oreLead>);
mods.tconstruct.Smeltery.removeMelting(<ore:denseoreLead>);
mods.tconstruct.Smeltery.removeMelting(<ImmersiveEngineering:metal:12>);
mods.appeng.Grinder.removeRecipe(<ore:dustLead>);
recipes.removeShaped(<ore:ingotLead>, [[<ore:oreLead>, <ThermalFoundation:material:512>]]);
mods.mekanism.Crusher.removeRecipe(<ore:dustDirtyLead>, <*>);
mods.mekanism.Crusher.removeRecipe(<ore:dustLead>, <*>);
mods.mekanism.Enrichment.removeRecipe(<*>, <ore:dustLead>);
mods.mekanism.Purification.removeRecipe(<ore:clumpLead>, <*>, <gas:oxygen>);
mods.mekanism.chemical.Injection.removeRecipe(<ore:shardLead>, <*>, <gas:hydrogenchloride>);
mods.mekanism.chemical.Dissolution.removeRecipe(<gas:lead>, <ore:oreLead>);
mods.mekanism.chemical.Crystallizer.removeRecipe(<ore:crystalLead>, <gas:cleanLead>);
mods.mekanism.Combiner.removeRecipe(<ore:oreLead>, <ImmersiveEngineering:metal:12>, <gas:liquidStone>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:oreLead>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:chunkLead>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:rubbleLead>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:pebblesLead>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:clusterLead>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustLead>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:denseoreLead>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:crushedLead>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:oreLead>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:denseoreLead>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:oreLead>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:denseoreLead>);
mods.extraUtils.QED.removeRecipe(<ore:ingotLead>);
mods.immersiveengineering.Crusher.removeRecipe(<ThermalFoundation:material:35>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ThermalFoundation:material:67>);
mods.magneticraft.Crusher.removeRecipe(<ThermalFoundation:Ore:3>);
mods.magneticraft.Grinder.removeRecipe(<ThermalFoundation:material:67>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:5>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:5>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:5>);
mods.railcraft.RockCrusher.removeRecipe(<ore:oreLead>);
#add
mods.immersiveengineering.Crusher.addRecipe(<Magneticraft:item.chunks:5>, <ore:oreLead>, 20000, <Railcraft:dust:1>, 0.4);
mods.magneticraft.Crusher.addRecipe(<Magneticraft:item.chunks:5>, <Magneticraft:item.rubble:5> * 2, <Creator:leadDustSmall>, 0.4, <Magneticraft:item.dustSulfur> * 3, 0.6);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.rubble:5>, <Magneticraft:item.pebbles:5> * 3, <Creator:leadDustSmall>, 0.6, <Creator:silverDustTiny>, 0.15);
mods.magneticraft.Sifter.addRecipe(<Magneticraft:item.pebbles:5>, <Mekanism:DirtyDust:6> * 3, <Magneticraft:item.dustSulfur>, 0.6);
mods.forestry.Centrifuge.addRecipe([<ImmersiveEngineering:metal:12> % 100, <minecraft:dirt> % 5], <Mekanism:DirtyDust:6>, 20);
mods.thermalexpansion.Smelter.addRecipe(18000, <ExtraUtilities:cobblestone_compressed>, <ImmersiveEngineering:metal:12> * 4, <Mekanism:Shard:6>, <Creator:leadDustTiny> * 2, 20);
mods.mekanism.Purification.addRecipe(<Mekanism:Shard:6>, <gas:oxygen>, <Mekanism:Crystal:6> * 8);
mods.mekanism.Crusher.addRecipe(<Mekanism:Crystal:6>, <Creator:leadDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.chunks:5>, false, false, 400, <Creator:leadDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.rubble:5>, false, false, 350, <Creator:leadDustSmall> * 3);
mods.railcraft.BlastFurnace.addRecipe(<Magneticraft:item.pebbles:5>, false, false, 330, <Creator:leadDustSmall> * 2);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:DirtyDust:6>, false, false, 300, <Creator:leadDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<ImmersiveEngineering:metal:12>, false, false, 280, <Creator:leadDustSmall>);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Shard:6>, false, false, 250, <Creator:leadDustSmall> * 4);
mods.railcraft.BlastFurnace.addRecipe(<Mekanism:Crystal:6>, false, false, 250, <Creator:leadDustTiny> * 6);

#Tier 3

#Silver
#remove
furnace.remove(<ore:ingotSilver>);
mods.tconstruct.Smeltery.removeMelting(<ore:oreSilver>);
mods.tconstruct.Smeltery.removeMelting(<ore:denseoreSilver>);
mods.tconstruct.Smeltery.removeMelting(<ImmersiveEngineering:metal:13>);
mods.appeng.Grinder.removeRecipe(<ore:dustSilver>);
recipes.removeShaped(<ore:ingotSilver>, [[<ore:oreSilver>, <ThermalFoundation:material:512>]]);
mods.mekanism.Crusher.removeRecipe(<ore:dustDirtySilver>, <*>);
mods.mekanism.Crusher.removeRecipe(<ore:dustSilver>, <*>);
mods.mekanism.Enrichment.removeRecipe(<*>, <ore:dustSilver>);
mods.mekanism.Purification.removeRecipe(<ore:clumpSilver>, <*>, <gas:oxygen>);
mods.mekanism.chemical.Injection.removeRecipe(<ore:shardSilver>, <*>, <gas:hydrogenchloride>);
mods.mekanism.chemical.Dissolution.removeRecipe(<gas:silver>, <ore:oreSilver>);
mods.mekanism.chemical.Crystallizer.removeRecipe(<ore:crystalSilver>, <gas:cleanSilver>);
mods.mekanism.Combiner.removeRecipe(<ore:oreSilver>, <ImmersiveEngineering:metal:13>, <gas:liquidStone>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:oreSilver>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:chunkSilver>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:rubbleSilver>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:pebblesSilver>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:clusterSilver>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustSilver>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:denseoreSilver>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:crushedSilver>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:oreSilver>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:denseoreSilver>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:oreSilver>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:denseoreSilver>);
mods.extraUtils.QED.removeRecipe(<ore:ingotSilver>);
mods.immersiveengineering.Crusher.removeRecipe(<ThermalFoundation:material:34>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ThermalFoundation:material:66>);
mods.magneticraft.Crusher.removeRecipe(<ThermalFoundation:Ore:2>);
mods.magneticraft.Grinder.removeRecipe(<ThermalFoundation:material:66>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:6>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:6>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:6>);
mods.railcraft.RockCrusher.removeRecipe(<ore:oreSilver>);
#add
mods.thermalexpansion.Smelter.addRecipe(35000, <ExtraUtilities:cobblestone_compressed>, <ThermalFoundation:Ore:2>, <Magneticraft:item.chunks:6>, <Creator:goldDustSmall> * 2, 20);
mods.immersiveengineering.Crusher.addRecipe(<Magneticraft:item.rubble:6> * 2, <Magneticraft:item.chunks:6>, 25000, <Creator:leadDustSmall>, 0.4);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.rubble:6>, <Magneticraft:item.pebbles:6> * 3, <Creator:silverDustSmall>, 0.4, <Creator:leadDustTiny> * 3, 0.6);
mods.magneticraft.Grinder.addRecipe(<Magneticraft:item.pebbles:6>, <Mekanism:DirtyDust:5> * 3, <Creator:silverDustSmall>, 0.4, <Creator:goldDustTiny> * 3, 0.6);
mods.forestry.Centrifuge.addRecipe([<ImmersiveEngineering:metal:13> % 100, <minecraft:dirt> % 5], <Mekanism:DirtyDust:5>, 20);
mods.thermalexpansion.Crucible.addRecipe(50000, <ImmersiveEngineering:metal:13>, <liquid:ec.internal.silver> * 750);
















#Special

#Ardite
#remove
furnace.remove(<ore:ingotArdite>);
mods.tconstruct.Smeltery.removeMelting(<ore:dustArdite>);
mods.tconstruct.Smeltery.removeMelting(<ore:oreArdite>);
recipes.removeShaped(<ore:ingotArdite>, [[<ore:oreArdite>, <ThermalFoundation:material:512>]]);
mods.mekanism.Crusher.removeRecipe(<ore:dustDirtyArdite>, <*>);
mods.mekanism.Enrichment.removeRecipe(<*>, <ore:dustArdite>);
mods.mekanism.Purification.removeRecipe(<ore:clumpArdite>, <*>, <gas:oxygen>);
mods.mekanism.chemical.Injection.removeRecipe(<ore:shardArdite>, <*>, <gas:hydrogenchloride>);
mods.mekanism.chemical.Dissolution.removeRecipe(<gas:ardite>, <ore:oreArdite>);
mods.mekanism.chemical.Crystallizer.removeRecipe(<ore:crystalArdite>, <gas:cleanArdite>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:chunkArdite>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:rubbleArdite>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:pebblesArdite>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:clusterArdite>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustArdite>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:crushedArdite>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:oreArdite>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:oreArdite>);
mods.immersiveengineering.Crusher.removeRecipe(<TConstruct:materials:38>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<TConstruct:materials:4>);
mods.magneticraft.Crusher.removeRecipe(<TConstruct:SearedBrick:2>);
mods.magneticraft.Grinder.removeRecipe(<TConstruct:materials:4>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:10>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:10>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:10>);
mods.railcraft.RockCrusher.removeRecipe(<ore:oreArdite>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:dustArdite>);
mods.thermalexpansion.Pulverizer.removeRecipe(<aobd:clusterArdite>);
#add
mods.mekanism.Purification.addRecipe(<TConstruct:SearedBrick:2>, <gas:oxygen>, <Magneticraft:item.chunks:10>);
mods.buildcraft.AssemblyTable.addRecipe(<Magneticraft:item.rubble:10> * 2, 100000, [<Magneticraft:item.chunks:10>]);
mods.buildcraft.AssemblyTable.addRecipe(<Magneticraft:item.pebbles:10> * 2, 100000, [<Magneticraft:item.rubble:10>]);
mods.thermalexpansion.Pulverizer.addRecipe(100000, <Magneticraft:item.pebbles:10>, <TConstruct:materials:38>, <TConstruct:materials:39>, 1);
mods.thermalexpansion.Crucible.addRecipe(500000, <TConstruct:materials:38>, <liquid:ardite.molten> * 144);

#Cobalt
#remove
furnace.remove(<ore:ingotCobalt>);
mods.tconstruct.Smeltery.removeMelting(<ore:dustCobalt>);
mods.tconstruct.Smeltery.removeMelting(<ore:oreCobalt>);
mods.appeng.Grinder.removeRecipe(<ore:dustCobalt>);
recipes.removeShaped(<ore:ingotCobalt>, [[<ore:oreCobalt>, <ThermalFoundation:material:512>]]);
mods.mekanism.Crusher.removeRecipe(<ore:dustDirtyCobalt>, <*>);
mods.mekanism.Enrichment.removeRecipe(<*>, <ore:dustCobalt>);
mods.mekanism.Purification.removeRecipe(<ore:clumpCobalt>, <*>, <gas:oxygen>);
mods.mekanism.chemical.Injection.removeRecipe(<ore:shardCobalt>, <*>, <gas:hydrogenchloride>);
mods.mekanism.chemical.Dissolution.removeRecipe(<gas:cobalt>, <ore:oreCobalt>);
mods.mekanism.chemical.Crystallizer.removeRecipe(<ore:crystalCobalt>, <gas:cleanCobalt>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:chunkCobalt>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:rubbleCobalt>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:pebblesCobalt>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:clusterCobalt>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustCobalt>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:crushedCobalt>);
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:oreCobalt>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:oreCobalt>);
mods.immersiveengineering.Crusher.removeRecipe(<TConstruct:materials:39>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<TConstruct:materials:3>);
mods.magneticraft.Crusher.removeRecipe(<TConstruct:SearedBrick:1>);
mods.magneticraft.Grinder.removeRecipe(<TConstruct:materials:3>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:11>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:11>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:11>);
mods.railcraft.RockCrusher.removeRecipe(<ore:oreCobalt>);
mods.thermalexpansion.Smelter.removeRecipe(<*>, <ore:dustCobalt>);
mods.thermalexpansion.Pulverizer.removeRecipe(<aobd:clusterCobalt>);
#add
mods.mekanism.Purification.addRecipe(<TConstruct:SearedBrick:1>, <gas:oxygen>, <Magneticraft:item.chunks:11>);
mods.buildcraft.AssemblyTable.addRecipe(<Magneticraft:item.rubble:11> * 2, 100000, [<Magneticraft:item.chunks:11>]);
mods.buildcraft.AssemblyTable.addRecipe(<Magneticraft:item.pebbles:11> * 2, 100000, [<Magneticraft:item.rubble:11>]);
mods.thermalexpansion.Pulverizer.addRecipe(100000, <Magneticraft:item.pebbles:11>, <TConstruct:materials:39>, <TConstruct:materials:38>, 1);
mods.thermalexpansion.Crucible.addRecipe(500000, <TConstruct:materials:39>, <liquid:cobalt.molten> * 144);

print("Initialized 'Mineral Processing.zs'");