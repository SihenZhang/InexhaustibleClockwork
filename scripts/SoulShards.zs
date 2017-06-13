#Name: SoulShards.zs
#Author: Si_hen

import mods.nei.NEI;

print("Initializing 'SoulShards.zs'...");

#remove soul forge
recipes.remove(<SSTOW:sstow_forge>);
NEI.hide(<SSTOW:sstow_forge>);
<SSTOW:sstow_forge>.addTooltip(format.gray("Now you can't use this to smelt anything."));
<SSTOW:sstow_forge>.addTooltip(format.gray("现在你将不能用它来煅烧任何物品。"));

#soul ingot
mods.thaumcraft.Research.addResearch("SOULINGOT", "AUTOMAGY", "spiritus 20, mortuus 20, exanimis 20, alienis 20, cognitio 20, vacuos 20, perditio 20, metallum 20", 14, -9, 10, <SSTOW:sstow_materials:2>);
game.setLocalization("en_US", "tc.research_name.SOULINGOT", "Soul Ingot");
game.setLocalization("en_US", "tc.research_text.SOULINGOT", "[MT×SSTOW] That's just a beginning!");
game.setLocalization("zh_CN", "tc.research_name.SOULINGOT", "灵魂锭");
game.setLocalization("zh_CN", "tc.research_text.SOULINGOT", "[MT×SSTOW] 那只是一个开始！");
mods.thaumcraft.Research.addPrereq("SOULINGOT", "NETHERRUNE_GHAST", false);
mods.thaumcraft.Research.addPrereq("SOULINGOT", "NETHERRUNE_BAT", false);
mods.thaumcraft.Research.addPrereq("SOULINGOT", "NETHERRUNE_ZOMBIE", false);
mods.thaumcraft.Research.addPrereq("SOULINGOT", "NETHERRUNE_SKELETON", false);
mods.thaumcraft.Research.addPrereq("SOULINGOT", "NETHERRUNE_SLIME", false);
mods.thaumcraft.Research.addPrereq("SOULINGOT", "NETHERRUNE_WISP", false);
mods.thaumcraft.Research.addPrereq("SOULINGOT", "VOIDMETAL", false);
mods.thaumcraft.Research.addPage("SOULINGOT", "derp.research_page.SOULINGOT");
game.setLocalization("zh_CN", "derp.research_page.SOULINGOT", "在你发现了符文黑曜石的奥秘之后，你发现异界之饵隐约间与生物的灵魂上有一定的联系，而在你了解到虚空金属的特性后，你对这种联系产生了一定的认识，你发现利用虚空金属的性质，通过注魔的方法，将符文黑曜石在Spiritus源质帮助下融入其中，从而获得了另一种金属，在这种金属上，你感到了强烈的灵魂的气息，因此你给这种金属取名为灵魂锭。但当你把灵魂锭制成工具时，你却发现灵魂锭在注魔过程中已经失去了虚空金属的一些性质。但你坚信，这种金属在未来会派上大用场的。");
mods.thaumcraft.Infusion.addRecipe("SOULINGOT", <Thaumcraft:ItemResource:16>, [<Automagy:blockNetherRuneMob>, <Creator:itemAlloy:5>, <Automagy:blockNetherRuneMob:1>, <Creator:itemAlloy:8>, <Automagy:blockNetherRuneMob:2>, <Creator:itemAlloy:5>, <Automagy:blockNetherRuneMob:3>, <Creator:itemAlloy:8>, <Automagy:blockNetherRuneMob:4>, <Creator:itemAlloy:5>, <Automagy:blockNetherRuneMob:5>, <Creator:itemAlloy:8>, <Automagy:blockNetherRuneMob:6>, <Creator:itemAlloy:5>, <Automagy:blockRunedObsidian>], "spiritus 64, mortuus 64, alienis 64, vacuos 64, exanimis 64, perditio 64, cognitio 32, metallum 32", <SSTOW:sstow_materials:2>, 15);
mods.thaumcraft.Research.addInfusionPage("SOULINGOT", <SSTOW:sstow_materials:2>);
mods.thaumcraft.Research.addCraftingPage("SOULINGOT", <SSTOW:sstow_soul_sword>);
mods.thaumcraft.Research.addCraftingPage("SOULINGOT", <SSTOW:sstow_soul_pickaxe>);
mods.thaumcraft.Research.addCraftingPage("SOULINGOT", <SSTOW:sstow_soul_axe>);
mods.thaumcraft.Research.addCraftingPage("SOULINGOT", <SSTOW:sstow_soul_spade>);
mods.thaumcraft.Research.addCraftingPage("SOULINGOT", <SSTOW:sstow_soul_hoe>);

#soul shard
recipes.remove(<SSTOW:sstow_materials:3>);
furnace.remove(<SSTOW:sstow_materials:4>);
mods.thaumcraft.Research.addResearch("SOULSHARD", "AUTOMAGY", "spiritus 32, mortuus 32, alienis 32, cognitio 32, vacuos 32, vitium 32, vinculum 32, vitreus 32", 15, -7, 15, <SSTOW:sstow_soul_shard>);
game.setLocalization("en_US", "tc.research_name.SOULSHARD", "Soul Shard");
game.setLocalization("en_US", "tc.research_text.SOULSHARD", "[MT×SSTOW] Soul reaper!");
game.setLocalization("zh_CN", "tc.research_name.SOULSHARD", "灵魂碎片");
game.setLocalization("zh_CN", "tc.research_text.SOULSHARD", "[MT×SSTOW] 灵魂收割者！");
mods.thaumcraft.Research.addPrereq("SOULSHARD", "SOULINGOT", false);
mods.thaumcraft.Research.addPage("SOULSHARD", "derp.research_page.SOULSHARD");
game.setLocalization("zh_CN", "derp.research_page.SOULSHARD", "你在最近对于灵魂的研究中发现了几种物质。你在一次试验中发现，将来自地狱的萤石粉投入富含Spiritus要素的坩埚中，便可以获得一种新的物质——污秽粉尘，而将其投入富含Vitium要素和Alienis要素的坩埚中，就可以得到腐化精华。");
mods.thaumcraft.Crucible.addRecipe("SOULSHARD", <SSTOW:sstow_materials:3>, <minecraft:glowstone_dust>, "spiritus 4");
mods.thaumcraft.Crucible.addRecipe("SOULSHARD", <SSTOW:sstow_materials:4>, <SSTOW:sstow_materials:3>, "alienis 4, vitium 4");
mods.thaumcraft.Research.addCruciblePage("SOULSHARD", <SSTOW:sstow_materials:3>);
mods.thaumcraft.Research.addCruciblePage("SOULSHARD", <SSTOW:sstow_materials:4>);
mods.thaumcraft.Research.addPage("SOULSHARD", "derp.research_page.SOULSHARD.1");
game.setLocalization("zh_CN", "derp.research_page.SOULSHARD.1", "在你得到腐化精华后，你开始认真思考这其中的联系。当你拿着灵魂锭时，它其中丰富的灵魂气息让你产生了顿悟，你开始设想将某种生物的灵魂以一种特定的方式禁锢住供你所用。在研究中你发现了这种设想的可行性，利用诱引晶体的性质，辅以灵魂锭、腐化精华、脉冲魂金锭和浓缩魂金合金锭，在Vinculum源质的帮助下，你获得了一种饱含灵魂气息的晶体，你将其命名为灵魂碎片。你发现当你使用灵魂之剑击杀生物时，生物的灵魂便会被你背包中的灵魂碎片所吸收，但是很遗憾，你发现一种灵魂碎片只能吸收一种生物的灵魂。而且你面对着灵魂碎片毫无头绪，你根本不知道该如何发挥其中贮存的灵魂的作用。");
mods.thaumcraft.Infusion.addRecipe("SOULSHARD", <Creator:itemCrystal:3>, [<SSTOW:sstow_materials:2>, <Creator:itemAlloy:14>, <SSTOW:sstow_materials:4>, <Creator:itemAlloy:13>, <SSTOW:sstow_materials:2>, <Creator:itemAlloy:14>, <SSTOW:sstow_materials:4>, <Creator:itemAlloy:13>, <SSTOW:sstow_materials:2>, <Creator:itemAlloy:14>, <SSTOW:sstow_materials:4>, <Creator:itemAlloy:13>, <SSTOW:sstow_materials:2>, <Creator:itemAlloy:14>, <SSTOW:sstow_materials:4>, <Creator:itemAlloy:13>, <SSTOW:sstow_materials:2>, <Creator:itemAlloy:14>, <SSTOW:sstow_materials:4>, <Creator:itemAlloy:13>], "spiritus 256, vinculum 256, mortuus 128, alienis 128, vacuos 128, vitium 128, vitreus 64", <SSTOW:sstow_soul_shard>, 50);
mods.thaumcraft.Research.addInfusionPage("SOULSHARD", <SSTOW:sstow_soul_shard>);

#soul cage
recipes.remove(<SSTOW:sstow_soul_cage>);
mods.thaumcraft.Research.addResearch("SOULCAGE", "AUTOMAGY", "spiritus 40, vinculum 40, mortuus 40, alienis 40, praecantatio 40, cognitio 40, instrumentum 40, ", 15, -5, 20, <SSTOW:sstow_soul_cage>);
game.setLocalization("en_US", "tc.research_name.SOULCAGE", "Soul Cage");
game.setLocalization("en_US", "tc.research_text.SOULCAGE", "[MT×SSTOW] The Chain Warden!");
game.setLocalization("zh_CN", "tc.research_name.SOULCAGE", "灵魂之笼");
game.setLocalization("zh_CN", "tc.research_text.SOULCAGE", "[MT×SSTOW] 魂锁典狱长！");
mods.thaumcraft.Research.addPrereq("SOULCAGE", "SOULSHARD", false);
mods.thaumcraft.Research.addPage("SOULCAGE", "derp.research_page.SOULCAGE");
game.setLocalization("zh_CN", "derp.research_page.SOULCAGE", "有志者事竟成。在你不懈的研究下，你终于发现了灵魂的奥秘。将灵魂碎片封印于一个基于异界之饵结构的，由灵魂锭而制成的牢笼中，利用灵魂碎片中贮存的大量灵魂之力，从而达到使灵魂所属生物源源不断地再生的目的。");
mods.thaumcraft.Infusion.addRecipe("SOULCAGE", <Automagy:blockDimensionLure>, [<Automagy:blockNethermind>, <SSTOW:sstow_materials:2>, <Thaumcraft:blockCosmeticSolid>, <Creator:itemAlloy:12>, <Thaumcraft:blockCosmeticSolid>, <minecraft:iron_bars>, <Thaumcraft:blockCosmeticSolid>, <SSTOW:sstow_materials:2>, <Thaumcraft:blockCosmeticSolid>, <Creator:itemAlloy:12>, <Thaumcraft:blockCosmeticSolid>, <minecraft:iron_bars>, <Thaumcraft:blockCosmeticSolid>, <SSTOW:sstow_materials:2>, <Thaumcraft:blockCosmeticSolid>, <Creator:itemAlloy:12>, <Thaumcraft:blockCosmeticSolid>, <minecraft:iron_bars>, <Thaumcraft:blockCosmeticSolid>, <SSTOW:sstow_materials:2>, <Thaumcraft:blockCosmeticSolid>, <Creator:itemAlloy:12>, <Thaumcraft:blockCosmeticSolid>, <minecraft:iron_bars>], "spiritus 512, vinculum 512, mortuus 256, alienis 256, praecantatio 256, cognitio 256, instrumentum 256", <SSTOW:sstow_soul_cage>, 70);
mods.thaumcraft.Research.addInfusionPage("SOULCAGE", <SSTOW:sstow_soul_cage>);

print("Initialized 'SoulShards.zs'");