#Name: ExcavatorMinerals.zs
#Author: Prunoideae

print("Initializing 'ExcavatorMinerals.zs'...");

val wandCap = <ore:ironWandCap>;
wandCap.add(<Thaumcraft:WandCap>); 
mods.immersiveengineering.Excavator.removeMineral("Quarzite");

#fix IE ores to TE ores
val ferrous = <ore:TEferrous>;
val silver = <ore:TEsilver>;
val copper = <ore:TEcopper>;
val alum = <ore:TEalum>;
val lead = <ore:TElead>;

ferrous.add(<ThermalFoundation:Ore:4>);
silver.add(<ThermalFoundation:Ore:2>);
copper.add(<ThermalFoundation:Ore:0>);
alum.add(<TConstruct:SearedBrick:5>);
lead.add(<ThermalFoundation:Ore:3>);

#replace all IE ores
mods.immersiveengineering.Excavator.getMineral("Bauxite").removeOre("oreAluminum");
mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("TEalum",0.9);

mods.immersiveengineering.Excavator.getMineral("Copper").removeOre("oreCopper");
mods.immersiveengineering.Excavator.getMineral("Copper").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("TEcopper",0.7);
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("TEferrous",0.7);

mods.immersiveengineering.Excavator.getMineral("Galena").removeOre("oreLead");
mods.immersiveengineering.Excavator.getMineral("Galena").removeOre("oreSilver");
mods.immersiveengineering.Excavator.getMineral("Galena").addOre("TElead",0.4);
mods.immersiveengineering.Excavator.getMineral("Galena").addOre("TEsilver",0.4);

mods.immersiveengineering.Excavator.getMineral("Gold").removeOre("oreCopper");
mods.immersiveengineering.Excavator.getMineral("Gold").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Gold").addOre("TEcopper",0.3);
mods.immersiveengineering.Excavator.getMineral("Gold").addOre("TEferrous",0.1);

mods.immersiveengineering.Excavator.getMineral("Iron").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Iron").addOre("TEferrous",0.25);

mods.immersiveengineering.Excavator.getMineral("Lead").removeOre("oreLead");
mods.immersiveengineering.Excavator.getMineral("Lead").removeOre("oreSilver");
mods.immersiveengineering.Excavator.getMineral("Lead").addOre("TElead",0.4);
mods.immersiveengineering.Excavator.getMineral("Lead").addOre("TEsilver",0.4);

mods.immersiveengineering.Excavator.getMineral("Nickel").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Nickel").addOre("TEferrous",0.9);

mods.immersiveengineering.Excavator.getMineral("Platinum").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("TEferrous",0.3);

mods.immersiveengineering.Excavator.getMineral("Silver").removeOre("oreLead");
mods.immersiveengineering.Excavator.getMineral("Silver").removeOre("oreSilver");
mods.immersiveengineering.Excavator.getMineral("Silver").addOre("TElead",0.4);
mods.immersiveengineering.Excavator.getMineral("Silver").addOre("TEsilver",0.55);

mods.immersiveengineering.Excavator.getMineral("Uranium").removeOre("oreLead");
mods.immersiveengineering.Excavator.getMineral("Uranium").addOre("TElead",0.3);
mods.immersiveengineering.Excavator.getMineral("Uranium").removeOre("oreUranium");
mods.immersiveengineering.Excavator.getMineral("Uranium").addOre("oreYellorite",0.5);

#turn Coal vein into "ERROR" vein
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("oreInfusedAir",0.1);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("oreInfusedWater",0.1);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("oreInfusedFire",0.1);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("oreInfusedOrder",0.1);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("oreInfusedEarth",0.1);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("oreInfusedEntropy",0.1);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("ironWandCap",0.1);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("oreAmber",0.1);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("oreCinnabar",0.1);

mods.immersiveengineering.Excavator.getMineral("Coal").removeOre("oreCoal");
mods.immersiveengineering.Excavator.getMineral("Coal").removeOre("oreDiamond");
mods.immersiveengineering.Excavator.getMineral("Coal").removeOre("oreEmerald");
mods.immersiveengineering.Excavator.getMineral("Coal").removeOre("denseoreCoal");
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("stone",0.9);

#fuck all the veins, i wanna have some stone
mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("stone",1.8);
mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("stoneGranite",1.8);
mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("stoneDiorite",1.8);
mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("stoneAndesite",1.8);
mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("limestone",1.8);

mods.immersiveengineering.Excavator.getMineral("Cassiterite").addOre("stone",1.8);
mods.immersiveengineering.Excavator.getMineral("Cassiterite").addOre("stoneGranite",1.8);
mods.immersiveengineering.Excavator.getMineral("Cassiterite").addOre("stoneDiorite",1.8);
mods.immersiveengineering.Excavator.getMineral("Cassiterite").addOre("stoneAndesite",1.8);
mods.immersiveengineering.Excavator.getMineral("Cassiterite").addOre("limestone",1.8);

mods.immersiveengineering.Excavator.getMineral("Copper").addOre("stone",1.5);
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("stoneGranite",1.5);
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("stoneDiorite",1.5);
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("stoneAndesite",1.5);
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("limestone",1.5);

mods.immersiveengineering.Excavator.getMineral("Galena").addOre("stone",1.3);
mods.immersiveengineering.Excavator.getMineral("Galena").addOre("stoneGranite",1.3);
mods.immersiveengineering.Excavator.getMineral("Galena").addOre("stoneDiorite",1.3);
mods.immersiveengineering.Excavator.getMineral("Galena").addOre("stoneAndesite",1.3);
mods.immersiveengineering.Excavator.getMineral("Galena").addOre("limestone",1.3);

mods.immersiveengineering.Excavator.getMineral("Gold").addOre("stone",1.3);
mods.immersiveengineering.Excavator.getMineral("Gold").addOre("stoneGranite",1.3);
mods.immersiveengineering.Excavator.getMineral("Gold").addOre("stoneDiorite",1.3);
mods.immersiveengineering.Excavator.getMineral("Gold").addOre("stoneAndesite",1.3);
mods.immersiveengineering.Excavator.getMineral("Gold").addOre("limestone",1.3);

mods.immersiveengineering.Excavator.getMineral("Iron").addOre("stone",1.1);
mods.immersiveengineering.Excavator.getMineral("Iron").addOre("stoneGranite",1.1);
mods.immersiveengineering.Excavator.getMineral("Iron").addOre("stoneDiorite",1.1);
mods.immersiveengineering.Excavator.getMineral("Iron").addOre("stoneAndesite",1.1);
mods.immersiveengineering.Excavator.getMineral("Iron").addOre("limestone",1.1);

mods.immersiveengineering.Excavator.getMineral("Lapis").addOre("stone",1.1);
mods.immersiveengineering.Excavator.getMineral("Lapis").addOre("stoneGranite",1.1);
mods.immersiveengineering.Excavator.getMineral("Lapis").addOre("stoneDiorite",1.1);
mods.immersiveengineering.Excavator.getMineral("Lapis").addOre("stoneAndesite",1.1);
mods.immersiveengineering.Excavator.getMineral("Lapis").addOre("limestone",1.1);

mods.immersiveengineering.Excavator.getMineral("Lead").addOre("stone",1.1);
mods.immersiveengineering.Excavator.getMineral("Lead").addOre("stoneGranite",1.1);
mods.immersiveengineering.Excavator.getMineral("Lead").addOre("stoneDiorite",1.1);
mods.immersiveengineering.Excavator.getMineral("Lead").addOre("stoneAndesite",1.1);
mods.immersiveengineering.Excavator.getMineral("Lead").addOre("limestone",1.1);

mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("stone",1.1);
mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("stoneGranite",1.1);
mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("stoneDiorite",1.1);
mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("stoneAndesite",1.1);
mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("limestone",1.1);

mods.immersiveengineering.Excavator.getMineral("Nickel").addOre("stone",1.1);
mods.immersiveengineering.Excavator.getMineral("Nickel").addOre("stoneGranite",1.1);
mods.immersiveengineering.Excavator.getMineral("Nickel").addOre("stoneDiorite",1.1);
mods.immersiveengineering.Excavator.getMineral("Nickel").addOre("stoneAndesite",1.1);
mods.immersiveengineering.Excavator.getMineral("Nickel").addOre("limestone",1.1);

mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("stone",1.1);
mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("stoneGranite",1.1);
mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("stoneDiorite",1.1);
mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("stoneAndesite",1.1);
mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("limestone",1.1);

mods.immersiveengineering.Excavator.getMineral("Pyrite").addOre("stone",1.1);
mods.immersiveengineering.Excavator.getMineral("Pyrite").addOre("stoneGranite",1.1);
mods.immersiveengineering.Excavator.getMineral("Pyrite").addOre("stoneDiorite",1.1);
mods.immersiveengineering.Excavator.getMineral("Pyrite").addOre("stoneAndesite",1.1);
mods.immersiveengineering.Excavator.getMineral("Pyrite").addOre("limestone",1.1);

mods.immersiveengineering.Excavator.getMineral("Silver").addOre("stone",1.1);
mods.immersiveengineering.Excavator.getMineral("Silver").addOre("stoneGranite",1.1);
mods.immersiveengineering.Excavator.getMineral("Silver").addOre("stoneDiorite",1.1);
mods.immersiveengineering.Excavator.getMineral("Silver").addOre("stoneAndesite",1.1);
mods.immersiveengineering.Excavator.getMineral("Silver").addOre("limestone",1.1);

mods.immersiveengineering.Excavator.getMineral("Uranium").addOre("stone",1.1);
mods.immersiveengineering.Excavator.getMineral("Uranium").addOre("stoneGranite",1.1);
mods.immersiveengineering.Excavator.getMineral("Uranium").addOre("stoneDiorite",1.1);
mods.immersiveengineering.Excavator.getMineral("Uranium").addOre("stoneAndesite",1.1);
mods.immersiveengineering.Excavator.getMineral("Uranium").addOre("limestone",1.1);

print("Initialized 'ExcavatorMinerals.zs'");