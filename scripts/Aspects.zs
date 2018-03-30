#Name: Aspects.zs
#Author: Prunoideae
#A file full of aspects

import mods.thaumcraft.Aspects;

print("Initializing 'Aspects.zs'...");

#New fantasy
Aspects.set(<Prunoideae:blackLotus>, "herba 1, perditio 1, praecantatio 2");
Aspects.set(<Prunoideae:chalk>,"ignis 1, terra 1, aer 1, aqua 1, perditio 1, ordo 1");
Aspects.set(<Prunoideae:rocketSoda>, "ignis 2, motus 2, volatus 2, aer 2");
Aspects.set(<Prunoideae:chunkCharcoal>, "ignis 1, potentia 1, arbor 1");
Aspects.set(<Prunoideae:blockAshes>,"perditio 1, permutatio 1");
Aspects.set(<Prunoideae:shardAer>,"vitreus 1, aer 8");
Aspects.set(<Prunoideae:shardAqua>,"vitreus 1, aqua 8");
Aspects.set(<Prunoideae:shardIgnis>,"vitreus 1, ignis 8");
Aspects.set(<Prunoideae:shardTerra>,"vitreus 1, terra 8");
Aspects.set(<Prunoideae:shardOrdo>,"vitreus 1, ordo 8");
Aspects.set(<Prunoideae:shardPerditio>,"vitreus 1, perditio 8");

#Creator
Aspects.set(<Creator:IronHammer>,"metallum 8, instrumentum 2");
Aspects.set(<Creator:IronWrench>,"metallum 8, instrumentum 2");
Aspects.set(<Creator:Sunnarium>,"lux 4, ignis 2");
Aspects.set(<Creator:iaComplex>,"metallum 4");
Aspects.set(<Creator:tcsComplex>,"metallum 4, lucrum 4, vitreus 1, permutatio 1");
Aspects.set(<Creator:ctComplex>,"metallum 2, lucrum 1, vitreus 1, permutatio 1");
Aspects.set(<Creator:dustHydratedRedstone>,"aqua 1, potentia 1, machina 1");
Aspects.set(<Creator:uranium_dioxide>, "potentia 64 ,venenum 4");
Aspects.set(<Creator:uranium_halide>, "potentia 64 ,venenum 4");
Aspects.set(<Creator:dustTincosi>, "metallum 1, lucrum 1, vitreus 1, permutatio 1");
Aspects.set(<Creator:dustIral>, "metallum 2");
Aspects.set(<Creator:magnetNico>, "potentia 1, metallum 1");
Aspects.set(<Creator:magnetIral>, "potentia 2, metallum 2");

#Biomes O' Plenty
Aspects.set(<BiomesOPlenty:colorizedSaplings>, "sano 64, victus 64, praecantatio 64, herba 64");
Aspects.set(<BiomesOPlenty:colorizedLeaves1>, "sano 64, victus 64, praecantatio 64, herba 64, vitium 1");
Aspects.set(<BiomesOPlenty:logs1>, "sano 64, victus 64, praecantatio 64, arbor 64, vitium 1");

#Thaumcraft it self
Aspects.add(<Thaumcraft:blockTaintFibres>, "praecantatio 1");
Aspects.add(<Thaumcraft:blockTaintFibres:1>, "praecantatio 1");
Aspects.add(<Thaumcraft:blockTaintFibres:3>, "praecantatio 1");

Aspects.set(<BiomesOPlenty:plants:0>, "herba 1, mortuus 4");
Aspects.set(<BiomesOPlenty:plants:1>, "herba 1, ignis 1, terra 1");
Aspects.set(<BiomesOPlenty:plants:2>, "herba 1, ignis 1, aqua 1");
Aspects.set(<BiomesOPlenty:plants:3>, "herba 1, ignis 1, aer 1");
Aspects.set(<BiomesOPlenty:plants:4>, "herba 1, spiritus 4");
Aspects.set(<BiomesOPlenty:plants:5>, "herba 1, telum 1, tutamen 1, mortuus 1");
Aspects.set(<BiomesOPlenty:plants:6>, "herba 1, fames 2, messis 2");
Aspects.set(<BiomesOPlenty:plants:7>, "herba 1, aqua 4");
Aspects.set(<BiomesOPlenty:plants:8>, "herba 1, arbor 1, aer 1, aqua 1");
Aspects.set(<BiomesOPlenty:plants:12>, "herba 1, telum 1, tutamen 1, aqua 1");
Aspects.set(<BiomesOPlenty:plants:13>, "herba 1, mortuus 2, praecantatio 3");
Aspects.set(<BiomesOPlenty:plants:14>, "herba 1, aer 2, aqua 2");
Aspects.set(<BiomesOPlenty:plants:15>, "arbor 1, aqua 2, terra 2");

Aspects.set(<BiomesOPlenty:flowers:0>, "herba 1, aer 1");
Aspects.set(<BiomesOPlenty:flowers:1>, "herba 1, aqua 2, terra 2");
Aspects.set(<BiomesOPlenty:flowers:2>, "herba 1, mortuus 8, alienis 8, tenebrae 8");
Aspects.set(<BiomesOPlenty:flowers:3>, "herba 1, lux 4");
Aspects.set(<BiomesOPlenty:flowers:4>, "herba 1, sensus 2, aqua 2");
Aspects.set(<BiomesOPlenty:flowers:5>, "herba 1, sensus 2, sano 2");
Aspects.set(<BiomesOPlenty:flowers:6>, "herba 1, sensus 2, victus 2");
Aspects.set(<BiomesOPlenty:flowers:7>, "herba 1, sensus 2, aer 2");
Aspects.set(<BiomesOPlenty:flowers:8>, "herba 1, sensus 2");
Aspects.set(<BiomesOPlenty:flowers:9>, "herba 1, sensus 2, ordo 2");
Aspects.set(<BiomesOPlenty:flowers:10>, "herba 1, aqua 4");
Aspects.set(<BiomesOPlenty:flowers:11>, "herba 1, praecantatio 4, alienis 4, tenebrae 4");
Aspects.set(<BiomesOPlenty:flowers:12>, "herba 1, aqua 2, fames 2");
Aspects.set(<BiomesOPlenty:flowers:13>, "corpus 1, sensus 2, invidia 2, infernus 2");
Aspects.set(<BiomesOPlenty:flowers:15>, "herba 1, sensus 2, sano 1, victus 1");

Aspects.set(<BiomesOPlenty:flowers2:0>, "herba 1, sensus 2, sano 2");
Aspects.set(<BiomesOPlenty:flowers2:1>, "herba 1, sensus 2, ordo 2");
Aspects.set(<BiomesOPlenty:flowers2:2>, "herba 1, infernus 2, ignis 2, praecantatio 2");
Aspects.set(<BiomesOPlenty:flowers2:3>, "herba 1, desidia 2, victus 2, sensus 2");
Aspects.set(<BiomesOPlenty:flowers2:4>, "herba 1, lucrum 2, sano 2, sensus 2");
Aspects.set(<BiomesOPlenty:flowers2:5>, "herba 1, aqua 2, sensus 2");
Aspects.set(<BiomesOPlenty:flowers2:6>, "herba 1, lucrum 2, metallum 2, vitreus 2");
Aspects.set(<BiomesOPlenty:flowers2:7>, "herba 1, ordo 8, vitreus 8, gelum 16");
Aspects.set(<BiomesOPlenty:flowers2:8>, "ordo 8, aqua 8, terra 8, ignis 8, perditio 8, aer 8");

Aspects.set(<BiomesOPlenty:stoneFormations:0>, "terra 4");
Aspects.set(<BiomesOPlenty:stoneFormations:1>, "terra 4");

Aspects.set(<BiomesOPlenty:mushrooms:0>, "herba 1, tenebrae 1, venenum 1");
Aspects.set(<BiomesOPlenty:mushrooms:1>, "herba 1, tenebrae 1, fames 1");
Aspects.set(<BiomesOPlenty:mushrooms:2>, "herba 1, tenebrae 1, sensus 1");
Aspects.set(<BiomesOPlenty:mushrooms:3>, "herba 1, tenebrae 1, lux 1");
Aspects.set(<BiomesOPlenty:mushrooms:4>, "herba 2, tenebrae 1");
Aspects.set(<BiomesOPlenty:mushrooms:5>, "herba 1, tenebrae 1, spiritus 1");

Aspects.set(<BiomesOPlenty:willow>, "herba 2, vinculum 1");
Aspects.set(<BiomesOPlenty:ivy>, "herba 2");
Aspects.set(<BiomesOPlenty:treeMoss>, "herba 2, aqua 1");
Aspects.set(<BiomesOPlenty:flowerVine>, "herba 2, victus 2");
Aspects.set(<BiomesOPlenty:wisteria>, "herba 2, victus 2");

Aspects.set(<BiomesOPlenty:lilyBop:0>, "herba 2, aqua 2");
Aspects.set(<BiomesOPlenty:lilyBop:1>, "herba 2, aqua 1");
Aspects.set(<BiomesOPlenty:lilyBop:2>, "herba 1, aqua 1");

Aspects.set(<BiomesOPlenty:foliage:0>, "herba 1, aqua 1");
Aspects.set(<BiomesOPlenty:foliage:1>, "herba 1, aer 1");
Aspects.set(<BiomesOPlenty:foliage:2>, "herba 2, aer 1");
Aspects.set(<BiomesOPlenty:foliage:3>, "herba 1, pannus 1");
Aspects.set(<BiomesOPlenty:foliage:4>, "herba 2, aqua 1");
Aspects.set(<BiomesOPlenty:foliage:5>, "herba 1, arbor 1");
Aspects.set(<BiomesOPlenty:foliage:7>, "herba 1, venenum 2");
Aspects.set(<BiomesOPlenty:foliage:8>, "herba 1, messis 1, fames 1");
Aspects.set(<BiomesOPlenty:foliage:9>, "herba 2");
Aspects.set(<BiomesOPlenty:foliage:10>, "herba 2");
Aspects.set(<BiomesOPlenty:foliage:11>, "herba 2, aqua 1");
Aspects.set(<BiomesOPlenty:foliage:12>, "herba 2, aqua 1");
Aspects.set(<BiomesOPlenty:foliage:13>, "herba 2");
Aspects.set(<BiomesOPlenty:foliage:14>, "herba 1, aer 1");
Aspects.set(<BiomesOPlenty:foliage:15>, "herba 1, aer 1, mortuus 1");

Aspects.set(<BiomesOPlenty:coral1:11>, "herba 1, aqua 2, fames 1");
Aspects.set(<BiomesOPlenty:coral1:12>, "aqua 2, lucrum 2, terra 2");
Aspects.set(<BiomesOPlenty:coral1:13>, "aqua 2, lucrum 2, terra 2");
Aspects.set(<BiomesOPlenty:coral1:14>, "aqua 2, lucrum 2, terra 2");
Aspects.set(<BiomesOPlenty:coral1:15>, "aqua 2, lucrum 2, terra 2");

Aspects.set(<BiomesOPlenty:gems:0>, "vitreus 4, lucrum 4, alienis 4, tenebrae 4, vacuos 4, iter 4");
Aspects.set(<BiomesOPlenty:gems:1>, "vitreus 4, lucrum 4, sano 2, victus 2");
Aspects.set(<BiomesOPlenty:gems:2>, "vitreus 4, lucrum 4, terra 2, herba 2");
Aspects.set(<BiomesOPlenty:gems:3>, "vitreus 4, lucrum 4, ignis 2, telum 2");
Aspects.set(<BiomesOPlenty:gems:4>, "vitreus 4, lucrum 4, praecantatio 2, auram 2");
Aspects.set(<BiomesOPlenty:gems:5>, "vitreus 4, lucrum 4, venenum 2, limus 2");
Aspects.set(<BiomesOPlenty:gems:6>, "vitreus 4, lucrum 4, aqua 2, sensus 2");
Aspects.set(<BiomesOPlenty:gems:7>, "vitreus 4, lucrum 4, lux 2, vinculum 2");

Aspects.set(<BiomesOPlenty:hell_blood>, "aqua 2, infernus 4, ignis 2");
Aspects.set(<BiomesOPlenty:honey>, "aqua 2, fames 4, vinculum 2");
Aspects.set(<BiomesOPlenty:poison>, "aqua 2, venenum 4, mortuus 2");

Aspects.set(<BiomesOPlenty:jarEmpty>, "vitreus 1, vacuos 3");
Aspects.set(<BiomesOPlenty:jarFilled:0>, "aqua 2, fames 3");
Aspects.set(<BiomesOPlenty:jarFilled:1>, "aqua 2, venenum 3");
Aspects.set(<BiomesOPlenty:jarFilled:0>, "auram 8, praecantatio 8");

Aspects.set(<BiomesOPlenty:misc:0>, "ignis 1, terra 1");
Aspects.set(<BiomesOPlenty:misc:1>, "ignis 1, perditio 1");
Aspects.set(<BiomesOPlenty:misc:2>, "vacuos 1, fames 1");
Aspects.set(<BiomesOPlenty:misc:3>, "corpus 1, infernus 1");
Aspects.set(<BiomesOPlenty:misc:4>, "vitreus 2, auram 8, praecantatio 8");

#Dyes ignored
Aspects.set(<BiomesOPlenty:misc:10>, "spiritus 8, mortuus 8, tenebrae 8");
Aspects.set(<BiomesOPlenty:misc:11>, "auram 4, praecantatio 4");
Aspects.set(<BiomesOPlenty:misc:12>, "venenum 2, corpus 2, mortuus 2");
Aspects.set(<BiomesOPlenty:misc:13>, "messis 1, arbor 1");

#Aspects.set(<mo:gravitational_anomaly>, "vacuos 160, fames 160, tenebrae 160");

print("Initialized 'Aspects.zs'");