//give resistance effect to everyone nearby
var x = position.x;y = position.y;z = position.z;

//start check for items
var check = 0;
if (rINIGR(x+4,y,z) != "minecraft:mossy_cobblestone:0") check=-1; 
if (rINIGR(x-4,y,z) != "minecraft:coal_ore:0") check=-1;
if (rINIGR(x,y,z+4) != "minecraft:emerald:0") check=-1;
if (rINIGR(x,y,z-4) != "minecraft:obsidian:0") check=-1;
if (rINIGR(x+3,y,z+3) != "Thaumcraft:ItemResource:2") check=-1;
if (rINIGR(x+3,y,z-3) != "AgriCraft:seedCinderpearl:0") check=-1;
if (rINIGR(x-3,y,z+3) != "Thaumcraft:ItemResource:16") check=-1;
if (rINIGR(x-3,y,z-3) != "chisel:waterstone:0") check=-1;
if (rINIGR(x,y,z) != "Prunoideae:shardTerra:0") check=-1;
if (check != -1) {
	world.setTileEntityIntData(position,"duar", 1800);
	world.setTileEntityStringData(position, "jsexc", "defUp.js");
	player.sendMessage("从地面上生发的一股力量让你倍感坚硬。")
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