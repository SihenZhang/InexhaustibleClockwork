//cure everything
var x = position.x;y = position.y;z = position.z;

//start check for items
var check = 0;
if (rINIGR(x+4,y,z) != "minecraft:golden_apple:0") check=-1; 
if (rINIGR(x-4,y,z) != "minecraft:golden_carrot:0") check=-1;
if (rINIGR(x,y,z+4) != "Forestry:beverage:2") check=-1;
if (rINIGR(x,y,z-4) != "BiomesOPlenty:bopBucket:0") check=-1;
if (rINIGR(x+3,y,z+3) != "BiomesOPlenty:food:0") check=-1;
if (rINIGR(x+3,y,z-3) != "BiomesOPlenty:cragRock:0") check=-1;
if (rINIGR(x-3,y,z+3) != "BiomesOPlenty:misc:10") check=-1;
if (rINIGR(x-3,y,z-3) != "BiomesOPlenty:mud:1") check=-1;
if (rINIGR(x,y,z) != "Prunoideae:shardOrdo:0") check=-1;
if (check != -1) {
	world.setTileEntityIntData(position,"duar", 120);
	world.setTileEntityStringData(position, "jsexc", "speedUp.js");
	player.sendMessage("一阵带有甜香味的风轻轻吹过，你感到被治愈了。")
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