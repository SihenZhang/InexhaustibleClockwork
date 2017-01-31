//give slowdown effect to everyone nearby
var x = position.x;y = position.y;z = position.z;

//start check for items
var check = 0;
if (rINIGR(x+4,y,z) != "Thaumcraft:blockCrystal:2") check=-1;  //E
if (rINIGR(x-4,y,z) != "Forestry:craftingMaterial:5") check=-1; //W
if (rINIGR(x,y,z+4) != "minecraft:snow:0") check=-1; //S
if (rINIGR(x,y,z-4) != "ThermalFoundation:material:513") check=-1; //N
if (rINIGR(x+3,y,z+3) != "minecraft:red_flower:3") check=-1; //SE
if (rINIGR(x+3,y,z-3) != "minecraft:lapis_block:0") check=-1; //NE
if (rINIGR(x-3,y,z+3) != "Thaumcraft:blockCustomPlant:1") check=-1; //SW
if (rINIGR(x-3,y,z-3) != "ProjRed|Core:projectred.core.part:55") check=-1; //NW
if (rINIGR(x,y,z) != "Prunoideae:shardAqua:0") check=-1;

if (check != -1) {
	world.setTileEntityIntData(position,"duar", 600);
	world.setTileEntityStringData(position, "jsexc", "speedDown.js");
	player.sendMessage("空气变得湿润，雾好像锁链一般缠住了你的脚。")
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