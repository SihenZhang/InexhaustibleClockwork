#Name: ExcavatorMinerals.zs
#Author: Prunoideae

import mods.immersiveengineering.Excavator;

print("Initializing 'ExcavatorMinerals.zs'...");

val wandCap = <ore:ironWandCap>;
wandCap.add(<Thaumcraft:WandCap>); 
Excavator.removeMineral("Quarzite");

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
Excavator.getMineral("Bauxite").removeOre("oreAluminum");
Excavator.getMineral("Bauxite").addOre("TEalum",0.9);

Excavator.getMineral("Copper").removeOre("oreCopper");
Excavator.getMineral("Copper").removeOre("oreNickel");
Excavator.getMineral("Copper").addOre("TEcopper",0.7);
Excavator.getMineral("Copper").addOre("TEferrous",0.7);

Excavator.getMineral("Galena").removeOre("oreLead");
Excavator.getMineral("Galena").removeOre("oreSilver");
Excavator.getMineral("Galena").addOre("TElead",0.4);
Excavator.getMineral("Galena").addOre("TEsilver",0.4);

Excavator.getMineral("Gold").removeOre("oreCopper");
Excavator.getMineral("Gold").removeOre("oreNickel");
Excavator.getMineral("Gold").addOre("TEcopper",0.3);
Excavator.getMineral("Gold").addOre("TEferrous",0.1);

Excavator.getMineral("Iron").removeOre("oreNickel");
Excavator.getMineral("Iron").addOre("TEferrous",0.25);

Excavator.getMineral("Lead").removeOre("oreLead");
Excavator.getMineral("Lead").removeOre("oreSilver");
Excavator.getMineral("Lead").addOre("TElead",0.4);
Excavator.getMineral("Lead").addOre("TEsilver",0.4);

Excavator.getMineral("Nickel").removeOre("oreNickel");
Excavator.getMineral("Nickel").addOre("TEferrous",0.9);

Excavator.getMineral("Platinum").removeOre("oreNickel");
Excavator.getMineral("Platinum").addOre("TEferrous",0.3);

Excavator.getMineral("Silver").removeOre("oreLead");
Excavator.getMineral("Silver").removeOre("oreSilver");
Excavator.getMineral("Silver").addOre("TElead",0.4);
Excavator.getMineral("Silver").addOre("TEsilver",0.55);

Excavator.getMineral("Uranium").removeOre("oreLead");
Excavator.getMineral("Uranium").addOre("TElead",0.3);
Excavator.getMineral("Uranium").removeOre("oreUranium");
Excavator.getMineral("Uranium").addOre("oreYellorite",0.5);

#add "ERROR" vein
mods.immersiveengineering.Excavator.addMineral("ERROR",30,0.15,["oreInfusedAir","oreInfusedWater",oreInfusedFire","oreInfusedOrder","oreInfusedEarth","oreInfusedEntropy","ironWandCap","oreAmber","oreCinnabar"],[0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1],[0],false);

#fuck all the veins, i wanna have some stone
Excavator.getMineral("Coal").addOre("stone",1.8);
Excavator.getMineral("Coal").addOre("stoneGranite",1.8);
Excavator.getMineral("Coal").addOre("stoneDiorite",1.8);
Excavator.getMineral("Coal").addOre("stoneAndesite",1.8);
Excavator.getMineral("Coal").addOre("limestone",1.8);

Excavator.getMineral("Bauxite").addOre("stone",1.8);
Excavator.getMineral("Bauxite").addOre("stoneGranite",1.8);
Excavator.getMineral("Bauxite").addOre("stoneDiorite",1.8);
Excavator.getMineral("Bauxite").addOre("stoneAndesite",1.8);
Excavator.getMineral("Bauxite").addOre("limestone",1.8);

Excavator.getMineral("Cassiterite").addOre("stone",1.8);
Excavator.getMineral("Cassiterite").addOre("stoneGranite",1.8);
Excavator.getMineral("Cassiterite").addOre("stoneDiorite",1.8);
Excavator.getMineral("Cassiterite").addOre("stoneAndesite",1.8);
Excavator.getMineral("Cassiterite").addOre("limestone",1.8);

Excavator.getMineral("Copper").addOre("stone",1.5);
Excavator.getMineral("Copper").addOre("stoneGranite",1.5);
Excavator.getMineral("Copper").addOre("stoneDiorite",1.5);
Excavator.getMineral("Copper").addOre("stoneAndesite",1.5);
Excavator.getMineral("Copper").addOre("limestone",1.5);

Excavator.getMineral("Galena").addOre("stone",1.3);
Excavator.getMineral("Galena").addOre("stoneGranite",1.3);
Excavator.getMineral("Galena").addOre("stoneDiorite",1.3);
Excavator.getMineral("Galena").addOre("stoneAndesite",1.3);
Excavator.getMineral("Galena").addOre("limestone",1.3);

Excavator.getMineral("Gold").addOre("stone",1.3);
Excavator.getMineral("Gold").addOre("stoneGranite",1.3);
Excavator.getMineral("Gold").addOre("stoneDiorite",1.3);
Excavator.getMineral("Gold").addOre("stoneAndesite",1.3);
Excavator.getMineral("Gold").addOre("limestone",1.3);

Excavator.getMineral("Iron").addOre("stone",1.1);
Excavator.getMineral("Iron").addOre("stoneGranite",1.1);
Excavator.getMineral("Iron").addOre("stoneDiorite",1.1);
Excavator.getMineral("Iron").addOre("stoneAndesite",1.1);
Excavator.getMineral("Iron").addOre("limestone",1.1);

Excavator.getMineral("Lapis").addOre("stone",1.1);
Excavator.getMineral("Lapis").addOre("stoneGranite",1.1);
Excavator.getMineral("Lapis").addOre("stoneDiorite",1.1);
Excavator.getMineral("Lapis").addOre("stoneAndesite",1.1);
Excavator.getMineral("Lapis").addOre("limestone",1.1);

Excavator.getMineral("Lead").addOre("stone",1.1);
Excavator.getMineral("Lead").addOre("stoneGranite",1.1);
Excavator.getMineral("Lead").addOre("stoneDiorite",1.1);
Excavator.getMineral("Lead").addOre("stoneAndesite",1.1);
Excavator.getMineral("Lead").addOre("limestone",1.1);

Excavator.getMineral("Magnetite").addOre("stone",1.1);
Excavator.getMineral("Magnetite").addOre("stoneGranite",1.1);
Excavator.getMineral("Magnetite").addOre("stoneDiorite",1.1);
Excavator.getMineral("Magnetite").addOre("stoneAndesite",1.1);
Excavator.getMineral("Magnetite").addOre("limestone",1.1);

Excavator.getMineral("Nickel").addOre("stone",1.1);
Excavator.getMineral("Nickel").addOre("stoneGranite",1.1);
Excavator.getMineral("Nickel").addOre("stoneDiorite",1.1);
Excavator.getMineral("Nickel").addOre("stoneAndesite",1.1);
Excavator.getMineral("Nickel").addOre("limestone",1.1);

Excavator.getMineral("Platinum").addOre("stone",1.1);
Excavator.getMineral("Platinum").addOre("stoneGranite",1.1);
Excavator.getMineral("Platinum").addOre("stoneDiorite",1.1);
Excavator.getMineral("Platinum").addOre("stoneAndesite",1.1);
Excavator.getMineral("Platinum").addOre("limestone",1.1);

Excavator.getMineral("Pyrite").addOre("stone",1.1);
Excavator.getMineral("Pyrite").addOre("stoneGranite",1.1);
Excavator.getMineral("Pyrite").addOre("stoneDiorite",1.1);
Excavator.getMineral("Pyrite").addOre("stoneAndesite",1.1);
Excavator.getMineral("Pyrite").addOre("limestone",1.1);

Excavator.getMineral("Silver").addOre("stone",1.1);
Excavator.getMineral("Silver").addOre("stoneGranite",1.1);
Excavator.getMineral("Silver").addOre("stoneDiorite",1.1);
Excavator.getMineral("Silver").addOre("stoneAndesite",1.1);
Excavator.getMineral("Silver").addOre("limestone",1.1);

Excavator.getMineral("Uranium").addOre("stone",1.1);
Excavator.getMineral("Uranium").addOre("stoneGranite",1.1);
Excavator.getMineral("Uranium").addOre("stoneDiorite",1.1);
Excavator.getMineral("Uranium").addOre("stoneAndesite",1.1);
Excavator.getMineral("Uranium").addOre("limestone",1.1);

print("Initialized 'ExcavatorMinerals.zs'");
