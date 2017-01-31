//give attack up effect to everyone nearby
var x = position.x;y = position.y;z = position.z;

//start check for items
var check = 0;
if (rINIGR(x+4,y,z) != "minecraft:gold_ore:0") check=-1; 
if (rINIGR(x-4,y,z) != "minecraft:dirt:2") check=-1;
if (rINIGR(x,y,z+4) != "minecraft:grass:0") check=-1;
if (rINIGR(x,y,z-4) != "ThermalFoundation:material:515") check=-1;
if (rINIGR(x+3,y,z+3) != "minecraft:tnt:0") check=-1;
if (rINIGR(x+3,y,z-3) != "chisel:andesite:0") check=-1;
if (rINIGR(x-3,y,z+3) != "minecraft:fire_charge:0") check=-1;
if (rINIGR(x-3,y,z-3) != "minecraft:iron_sword:0") check=-1;
if (rINIGR(x,y,z) != "Prunoideae:shardPerditio:0") check=-1;

if (check != -1) {
	world.setTileEntityIntData(position,"duar", 900);
	world.setTileEntityStringData(position, "jsexc", "atkUp.js");
	player.sendMessage("从混沌中涌入的一股气息让你力量倍增。")
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