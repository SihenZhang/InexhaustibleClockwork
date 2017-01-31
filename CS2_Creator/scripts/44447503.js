//give speedup effect to everyone nearby
var x = position.x;y = position.y;z = position.z;

//start check for items
var check = 0;
if (rINIGR(x+4,y,z) != "minecraft:vine:0") check=-1; 
if (rINIGR(x-4,y,z) != "Thaumcraft:blockCrystal:0") check=-1;
if (rINIGR(x,y,z+4) != "Thaumcraft:PrimalArrow:0") check=-1;
if (rINIGR(x,y,z-4) != "minecraft:leather_boots:0") check=-1;
if (rINIGR(x+3,y,z+3) != "minecraft:packed_ice:0") check=-1;
if (rINIGR(x+3,y,z-3) != "Thaumcraft:blockMagicalLog:0") check=-1;
if (rINIGR(x-3,y,z+3) != "minecraft:stone:0") check=-1;
if (rINIGR(x-3,y,z-3) != "minecraft:golden_apple:0") check=-1;
if (rINIGR(x,y,z) != "Prunoideae:shardAer:0") check=-1;
if (check != -1) {
	world.setTileEntityIntData(position,"duar", 1800);
	world.setTileEntityStringData(position, "jsexc", "speedUp.js");
	player.sendMessage("一阵微风吹起，你感到身轻如燕。")
}
else{
	player.sendMessage("什么都没有发生，可能是哪里出了点问题。");
}

function rINIGR(x,y,z){
	var fsten = world.enumEntities(x,y,z,1,"item")[0].asItem();
	var retv = fsten.getItemName()+":"+fsten.getItemDamageValue();
	world.createExplosion(x+0.5,y+1,z+0.5,0,false);
	fsten.setDead();
	return retv;
}