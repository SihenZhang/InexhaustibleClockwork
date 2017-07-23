#Name: PracticalLogistics.zs
#Author: Si_hen

print("Initializing 'PracticalLogistics.zs'...");

recipes.remove(<PracticalLogistics:Hammer>);
recipes.addShaped(<PracticalLogistics:Hammer>, [[<Railcraft:cube:8>, <ore:slabTreatedWood>, <Railcraft:cube:8>], [<ore:treatedStick>, null, <ore:treatedStick>], [<Railcraft:cube:8>, <ore:stone>, <Railcraft:cube:8>]]);

print("Initialized 'PracticalLogistics.zs'");