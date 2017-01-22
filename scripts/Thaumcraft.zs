#Name: Thaumcraft.zs
#Author: Prunoideae

print("Initializing 'Thaumcraft.zs'...");

#mods.thaumcraft.Research.addResearch("TESTING", "BASICS", "lucrum 100, alienis 200, machina 250", 1, 0, 0, );
#game.setLocalization("en_US", "tc.research_name.TESTING", "You know what?");
#game.setLocalization("en_US", "tc.research_text.TESTING", "[MT] It's just a test!");
#mods.thaumcraft.Research.addPage("TESTING", "derp.research_page.TESTING");
#game.setLocalization("en_US", "derp.research_page.TESTING", "Since Prunoideae had manned the power of ModTweaker, a big disaster was about to come.");

#Endertech Exchanger - after FOCUSTRADE
recipes.remove(<EnderTech:endertech.exchanger:1>); #redstone
recipes.remove(<EnderTech:endertech.exchanger:2>); #resonant

mods.thaumcraft.Research.addResearch("ETEXCHANGER","THAUMATURGY","permutatio 10, machina 10, alienis 10, ordo 10, perditio 10", 6, -4, 4, <EnderTech:endertech.exchanger:2>);
mods.thaumcraft.Research.addPrereq("ETEXCHANGER", "FOCUSTRADE", false);

mods.thaumcraft.Research.addPage("ETEXCHANGER", "derp.research_page.ETEXCHANGER");
mods.thaumcraft.Research.addPage("ETEXCHANGER", "derp.research_page.ETEXCHANGER1");
mods.thaumcraft.Infusion.addRecipe("ETEXCHANGER", <Thaumcraft:FocusTrade>, [<minecraft:ender_eye>, <Creator:compactElectrumPlate>, <Mekanism:ControlCircuit:2>, <ThermalExpansion:capacitor:4>, <Mekanism:ControlCircuit:2>,<Creator:compactElectrumPlate>], "perditio 20, ordo 20, potentia 20, permutatio 25", <EnderTech:endertech.exchanger:1>, 5);
mods.thaumcraft.Infusion.addRecipe("ETEXCHANGER", <EnderTech:endertech.exchanger:1>, [<minecraft:ender_eye>, <Mekanism:ControlCircuit:3>, <ThermalExpansion:capacitor:5>, <Mekanism:ControlCircuit:3>], "potentia 10, alienis 5", <EnderTech:endertech.exchanger:2>, 2);
mods.thaumcraft.Research.addInfusionPage("ETEXCHANGER", <EnderTech:endertech.exchanger:1>);
mods.thaumcraft.Research.addInfusionPage("ETEXCHANGER", <EnderTech:endertech.exchanger:2>);

#Atomic Disassembler - after all thaumcraft tools x-5 y0
recipes.remove (<Mekanism:AtomicDisassembler>);

mods.thaumcraft.Research.addResearch("ATOMDISASM", "ARTIFICE", "perfodio 10, sensus 10, potentia 15, machina 15, instrumentum 10", -9,5,6,<Mekanism:AtomicDisassembler>);
mods.thaumcraft.Research.addPrereq("ATOMDISASM", "ELEMENTALPICK", false);
mods.thaumcraft.Research.addPrereq("ATOMDISASM", "ELEMENTALAXE", false);
mods.thaumcraft.Research.addPrereq("ATOMDISASM", "ELEMENTALSHOVEL", false);
mods.thaumcraft.Research.addPrereq("ATOMDISASM", "ELEMENTALHOE", false);

mods.thaumcraft.Research.addPage("ATOMDISASM", "derp.research_page.ATOMDISASM");
mods.thaumcraft.Research.addPage("ATOMDISASM", "derp.research_page.ATOMDISASM1");
mods.thaumcraft.Infusion.addRecipe("ATOMDISASM", <ThermalExpansion:capacitor:5>,[<Thaumcraft:ItemPickaxeElemental>,<Mekanism:ControlCircuit:3>,<Magneticraft:item.electric_sword>,<Mekanism:ControlCircuit:3>,<Thaumcraft:ItemAxeElemental>,<Mekanism:ControlCircuit:3>,<Thaumcraft:ItemShovelElemental>,<Mekanism:ControlCircuit:3>,<Thaumcraft:ItemHoeElemental>,<Mekanism:ControlCircuit:3>], "perfodio 32, sensus 32, potentia 48, machina 32, instrumentum 32", <Mekanism:AtomicDisassembler>,8);
mods.thaumcraft.Research.addInfusionPage("ATOMDISASM", <Mekanism:AtomicDisassembler>);

#Tweak of thaumium
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemResource:2>);
mods.thaumcraft.Crucible.addRecipe("THAUMIUM", <Thaumcraft:ItemResource:2>, <ThermalFoundation:material:70>, "praecantatio 4");
mods.thaumcraft.Research.refreshResearchRecipe("THAUMIUM");
print("Initialized 'Thaumcraft.zs'");
