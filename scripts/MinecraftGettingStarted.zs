#Name: MinecraftGettingStarted.zs
#Author: Si_hen

print("Initializing 'MinecraftGettingStarted.zs'...");

#Remove Gear Crafting - Forces through casting and metalpress
recipes.remove(<Railcraft:part.gear>);
recipes.remove(<ThermalFoundation:material:140>);
recipes.remove(<ThermalFoundation:material:139>);
recipes.remove(<ThermalFoundation:material:138>);
recipes.remove(<ThermalFoundation:material:137>);
recipes.remove(<ThermalFoundation:material:136>);
recipes.remove(<ThermalFoundation:material:135>);
recipes.remove(<ThermalFoundation:material:134>);
recipes.remove(<ThermalFoundation:material:133>);
recipes.remove(<ThermalFoundation:material:132>);
recipes.remove(<ThermalFoundation:material:131>);
recipes.remove(<ThermalFoundation:material:130>);
recipes.remove(<ThermalFoundation:material:129>);
recipes.remove(<ThermalFoundation:material:128>);
recipes.remove(<ThermalFoundation:material:13>);
recipes.remove(<ThermalFoundation:material:12>);
recipes.remove(<Railcraft:part.gear:2>);

#Gear Crafting through Casting
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:140>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:139>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:138>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:137>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:136>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:135>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:134>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:133>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:132>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:131>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:130>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:129>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:128>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:13>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:12>);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:12>, <liquid:iron.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:13>, <liquid:gold.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:128>, <liquid:copper.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:129>, <liquid:tin.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:130>, <liquid:silver.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:131>, <liquid:lead.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:132>, <liquid:nickel.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:133>, <liquid:platinum.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:134>, <liquid:mithril.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:135>, <liquid:electrum.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:136>, <liquid:invar.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:137>, <liquid:bronze.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:138>, <liquid:signalum.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:139>, <liquid:lumium.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:140>, <liquid:enderium.molten> * 720, <TConstruct:gearCast>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<Railcraft:part.gear:2>, <liquid:steel.molten> * 720, <TConstruct:gearCast>, false, 20);

#Gear Crafting through MetalPress
mods.immersiveengineering.MetalPress.removeRecipeByMold(<ImmersiveEngineering:mold:1>);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:12>, <ore:ingotIron>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:13>, <ore:ingotGold>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:128>, <ore:ingotCopper>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:129>, <ore:ingotTin>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:130>, <ore:ingotSilver>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:131>, <ore:ingotLead>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:132>, <ore:ingotNickel>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:133>, <ore:ingotPlatinum>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:134>, <ore:ingotMithril>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:135>, <ore:ingotElectrum>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:136>, <ore:ingotInvar>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:137>, <ore:ingotBronze>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:138>, <ore:ingotSignalum>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:139>, <ore:ingotLumium>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:material:140>, <ore:ingotEnderium>, <ImmersiveEngineering:mold:1>, 16000, 4);
mods.immersiveengineering.MetalPress.addRecipe(<Railcraft:part.gear:2>, <ore:ingotSteel>, <ImmersiveEngineering:mold:1>, 16000, 4);

#Remove Bronze Ingot/Dust Shaped Crafting
recipes.remove(<ThermalFoundation:material:41>);
recipes.removeShapeless(<ThermalFoundation:material:73>, [<ore:ingotTin>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]);
recipes.addShaped(<ThermalFoundation:material:73>, [[<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>], [<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>], [<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>]]);

#Remove Lava power
recipes.remove(<ThermalExpansion:Dynamo:1>);

#Charcoal
recipes.removeShaped(<minecraft:coal:1>, [[<Natura:Cloud:2>, <Natura:Cloud:2>, <Natura:Cloud:2>], [<Natura:Cloud:2>, <Natura:Cloud:2>, <Natura:Cloud:2>], [<Natura:Cloud:2>, <Natura:Cloud:2>, <Natura:Cloud:2>]]);
furnace.remove(<minecraft:coal:1>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:logWood>);
mods.thermalexpansion.Furnace.removeRecipe(<Natura:redwood:*>);
mods.thermalexpansion.Furnace.removeRecipe(<minecraft:hay_block>);
mods.thermalexpansion.Furnace.removeRecipe(<Thaumcraft:blockMagicalLog:*>);
mods.thermalexpansion.Furnace.removeRecipe(<ThermalExpansion:material:513>);
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);

#Getting Started Recipes
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShaped(<minecraft:flint_and_steel>, [[<ore:ingotSteel>], [null, <ore:itemFlint>]]);
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[<ore:plateIron>, <Creator:IronHammer>.anyDamage().transformDamage(), <ore:plateIron>], [null, <ore:plateIron>, null]]);
recipes.remove(<minecraft:cauldron>);
recipes.addShaped(<minecraft:cauldron>, [[<ore:plateIron>, null, <ore:plateIron>], [<ore:plateIron>, <Creator:IronHammer>.anyDamage().transformDamage(), <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>], [<ore:cobblestone>, <ore:ingotRedAlloy>, <ore:cobblestone>]]);
recipes.remove(<minecraft:tnt>);
recipes.addShaped(<minecraft:tnt>, [[<ore:ingotSignalum>, <ore:dustGunpowder>, <ore:ingotSignalum>], [<ore:dustGunpowder>, <ore:ingotRedAlloy>, <ore:dustGunpowder>], [<ore:ingotSignalum>, <ore:dustGunpowder>, <ore:ingotSignalum>]]);
recipes.remove(<minecraft:iron_door>);
recipes.addShaped(<minecraft:iron_door>, [[<ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <Creator:IronHammer>.anyDamage().transformDamage()], [<ore:plateIron>, <ore:plateIron>]]);
recipes.remove(<minecraft:minecart>);
recipes.addShaped(<minecraft:minecart>, [[null, <Creator:IronHammer>.anyDamage().transformDamage()], [<ore:plateIron>, <Creator:IronWrench>.anyDamage().transformDamage(), <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
furnace.remove(<minecraft:bread>);
mods.thermalexpansion.Furnace.removeRecipe(<harvestcraft:doughItem>);
recipes.remove(<minecraft:string>);
recipes.addShaped(<minecraft:string>, [[<BiomesOPlenty:foliage:3>, <BiomesOPlenty:foliage:3>, <BiomesOPlenty:foliage:3>], [<BiomesOPlenty:foliage:3>, <BiomesOPlenty:foliage:3>, <BiomesOPlenty:foliage:3>], [<BiomesOPlenty:foliage:3>, <BiomesOPlenty:foliage:3>, <BiomesOPlenty:foliage:3>]]);
recipes.addShaped(<minecraft:string>, [[<Natura:barleyFood:3>, <Natura:barleyFood:3>, <Natura:barleyFood:3>]]);
recipes.addShaped(<minecraft:string>, [[<Forestry:craftingMaterial:2>], [<Forestry:craftingMaterial:2>], [<Forestry:craftingMaterial:2>]]);
recipes.removeShapeless(<minecraft:dye:15>, [<BiomesOPlenty:bones:*>]);
mods.thermalexpansion.Pulverizer.removeRecipe(<BiomesOPlenty:bones:*>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:bone>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:dye:15>);
recipes.addShapeless(<minecraft:dye:15> * 9, [<Natura:boneBag>]);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:dye:15> * 5, <minecraft:bone>, 3200);
mods.thermalexpansion.Pulverizer.addRecipe(1600, <BiomesOPlenty:bones>, <minecraft:dye:15> * 2, <minecraft:dye:15>, 60);
mods.thermalexpansion.Pulverizer.addRecipe(3200, <BiomesOPlenty:bones:1>, <minecraft:dye:15> * 3, <minecraft:dye:15>, 70);
mods.thermalexpansion.Pulverizer.addRecipe(4800, <BiomesOPlenty:bones:2>, <minecraft:dye:15> * 4, <minecraft:dye:15>, 80);
mods.thermalexpansion.Pulverizer.addRecipe(1600, <minecraft:bone>, <minecraft:dye:15> * 5, <minecraft:dye:15>, 60);
mods.logistics.hammer.addRecipe(<BiomesOPlenty:bones:2>, <minecraft:dye:15> * 2);
recipes.removeShaped(<minecraft:coal>, [[<BiomesOPlenty:misc:1>, <BiomesOPlenty:misc:1>, <BiomesOPlenty:misc:1>], [<BiomesOPlenty:misc:1>, <BiomesOPlenty:misc:1>, <BiomesOPlenty:misc:1>], [<BiomesOPlenty:misc:1>, <BiomesOPlenty:misc:1>, <BiomesOPlenty:misc:1>]]);
furnace.setFuel(<BiomesOPlenty:misc:1>, 0);
recipes.removeShaped(<minecraft:gunpowder>, [[<Natura:barleyFood:4>, <Natura:barleyFood:4>], [<Natura:barleyFood:4>, <Natura:barleyFood:4>]]);
recipes.removeShaped(<minecraft:wool>, [[<Natura:barleyFood:3>, <Natura:barleyFood:3>, <Natura:barleyFood:3>], [<Natura:barleyFood:3>, <Natura:barleyFood:3>, <Natura:barleyFood:3>], [<Natura:barleyFood:3>, <Natura:barleyFood:3>, <Natura:barleyFood:3>]]);
recipes.removeShaped(<minecraft:iron_ingot> * 5, [[<powersuits:powerArmorComponent:9>]]);
recipes.remove(<minecraft:brick_block>);
mods.logistics.hammer.addRecipe(<minecraft:brick> * 4, <minecraft:brick_block>);
recipes.remove(<minecraft:nether_brick>);
mods.logistics.hammer.addRecipe(<minecraft:netherbrick> * 4, <minecraft:nether_brick>);
recipes.remove(<minecraft:hopper>);
mods.logistics.hammer.addRecipe(<Railcraft:part.plate> * 5, <minecraft:hopper>);
mods.tconstruct.Smeltery.removeMelting(<minecraft:hopper>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:hopper>, <minecraft:sand>);
mods.logistics.hammer.addRecipe(<minecraft:cobblestone> * 4, <minecraft:gravel>);
mods.logistics.hammer.addRecipe(<minecraft:gravel> * 4, <minecraft:sand>);
recipes.removeShaped(<minecraft:gold_ingot>, [[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>], [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>], [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>]]);
recipes.addShaped(<minecraft:gold_ingot>, [[<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>], [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>], [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>]]);

#remove vanilla things smelt in TConstruct Smeltry
mods.tconstruct.Smeltery.removeMelting(<minecraft:golden_rail>);
mods.tconstruct.Smeltery.removeMelting(<minecraft:detector_rail>);
mods.tconstruct.Smeltery.removeMelting(<minecraft:rail>);
mods.tconstruct.Smeltery.removeMelting(<minecraft:activator_rail>);
mods.tconstruct.Smeltery.removeMelting(<minecraft:speckled_melon>);
mods.tconstruct.Smeltery.removeMelting(<minecraft:golden_horse_armor>);
mods.tconstruct.Smeltery.removeMelting(<minecraft:golden_sword>);

#fluid ender
mods.thermalexpansion.Crucible.removeRecipe(<minecraft:ender_pearl>);
mods.thermalexpansion.Crucible.removeRecipe(<ExtraUtilities:plant/ender_lilly>);
mods.tconstruct.Smeltery.removeMelting(<minecraft:ender_pearl>);
mods.tconstruct.Smeltery.removeMelting(<TConstruct:MetalBlock:10>);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:ender_pearl>);
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:10>);
mods.thermalexpansion.Crucible.addRecipe(20000, <minecraft:ender_pearl>, <liquid:ender> * 1000);
mods.thermalexpansion.Crucible.addRecipe(80000, <TConstruct:MetalBlock:10>, <liquid:ender> * 4000);
mods.tconstruct.Smeltery.addMelting(<minecraft:ender_pearl>, <liquid:ender> * 1000, 500, <TConstruct:MetalBlock:10>);
mods.tconstruct.Smeltery.addMelting(<TConstruct:MetalBlock:10>, <liquid:ender> * 4000, 50);
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>, <liquid:ender> * 1000, <TConstruct:metalPattern:10>, false, 40);
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_pearl>, <liquid:ender> * 1000, <TConstruct:metalPattern:26>, false, 40);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:MetalBlock:10>, <liquid:ender> * 4000, null, false, 100);

#chest nerfs
recipes.removeShaped(<minecraft:chest> * 4, [[<ore:logWood>, <ore:logWood>, <ore:logWood>], [<ore:logWood>, null, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

print("Initialized 'MinecraftGettingStarted.zs'");