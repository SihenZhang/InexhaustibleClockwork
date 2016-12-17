var n = main();

if (n == -1) player.sendMessage("错误：指定位点缺少黑曜石");

function main(){
//everything is fine
var x = position.x;y = position.y;z = position.z;
var arrS = new Array(8);var checkP = 0;

arrS[0] = world.getBlockName(x+2,y,z+1);
arrS[1] = world.getBlockName(x+2,y,z-1);
arrS[2] = world.getBlockName(x+1,y,z-2);
arrS[3] = world.getBlockName(x-1,y,z-2);
arrS[4] = world.getBlockName(x-2,y,z-1);
arrS[5] = world.getBlockName(x-2,y,z+1);
arrS[6] = world.getBlockName(x-1,y,z+2);
arrS[7] = world.getBlockName(x+1,y,z+2);

for (var i = 0;i<8;i++) if (arrS[i] != "minecraft:obsidian") return -1;

world.setBlockAndMetadata(x,y,z+2,"Thaumcraft:blockStoneDevice",1); //N
world.setBlockAndMetadata(x,y,z-2,"Thaumcraft:blockStoneDevice",1); //S
world.setBlockAndMetadata(x+2,y,z,"Thaumcraft:blockStoneDevice",1); //E
world.setBlockAndMetadata(x-2,y,z,"Thaumcraft:blockStoneDevice",1); //W

//something "eerie"
world.createExplosion(x,y+1,z,0,false);

world.createExplosion(x+2,y,z+1,0,false);
world.createExplosion(x+2,y,z-1,0,false);
world.createExplosion(x+1,y,z-2,0,false);
world.createExplosion(x-1,y,z-2,0,false);
world.createExplosion(x-2,y,z-1,0,false);
world.createExplosion(x-2,y,z+1,0,false);
world.createExplosion(x-1,y,z+2,0,false);
world.createExplosion(x+1,y,z+2,0,false);

world.setWeather("thundering",2000);
world.setTime(18000);

//all block destroyed
world.setBlock(x+2,y,z+1,"minecraft:air");
world.setBlock(x+2,y,z-1,"minecraft:air");
world.setBlock(x+1,y,z-2,"minecraft:air");
world.setBlock(x-1,y,z-2,"minecraft:air");
world.setBlock(x-2,y,z-1,"minecraft:air");
world.setBlock(x-2,y,z+1,"minecraft:air");
world.setBlock(x-1,y,z+2,"minecraft:air");
world.setBlock(x+1,y,z+2,"minecraft:air");

player.sendMessage("几块诡异的石座出现在了你的眼前，天地都为之而变色......");
player.swingItem();
return 0;

}