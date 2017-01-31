//i'm burning
var x = position.x;y = position.y;z = position.z;

//start check for items
var check = 0;
if (rINIGR(x+4,y,z) != "Prunoideae:gunpowderBarrel:0") check=-1; 
if (rINIGR(x-4,y,z) != "minecraft:gunpowder:0") check=-1;
if (rINIGR(x,y,z+4) != "Thaumcraft:ItemResource:0") check=-1;
if (rINIGR(x,y,z-4) != "Thaumcraft:ItemResource:1") check=-1;
if (rINIGR(x+3,y,z+3) != "minecraft:deadbush:0") check=-1;
if (rINIGR(x+3,y,z-3) != "minecraft:stonebrick:2") check=-1;
if (rINIGR(x-3,y,z+3) != "chisel:voidstone:0") check=-1;
if (rINIGR(x-3,y,z-3) != "Magneticraft:item.pebbles:1") check=-1;
if (rINIGR(x,y,z) != "Prunoideae:shardIgnis:0") check=-1;
if (check != -1) {
	world.setTileEntityIntData(position,"duar", 1800);
	world.setTileEntityStringData(position, "jsexc", "burn.js");
	player.sendMessage("炽热的焚风扑面而来，周围的一切被点燃了。")
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