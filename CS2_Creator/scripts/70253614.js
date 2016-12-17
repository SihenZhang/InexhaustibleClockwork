var n = main();
if (n == -1) player.sendMessage("错误：缺少奥术基座");

function main(){
	//Defiance, why do you do that......?
	var x = position.x;y = position.y;z = position.z;
	
	var arrS = new Array(4);
	arrS[0] = world.getBlockName(x,y,z+2); //S
	arrS[1] = world.getBlockName(x,y,z-2); //N
	arrS[2] = world.getBlockName(x+2,y,z); //E
	arrS[3] = world.getBlockName(x-2,y,z); //W
	for (var i=0;i<4;i++) if (arrS[i] != "Thaumcraft:blockStoneDevice") return -1;
	
	arrS[0] = world.getBlockMetadata(x,y,z+2); //S
	arrS[1] = world.getBlockMetadata(x,y,z-2); //N
	arrS[2] = world.getBlockMetadata(x+2,y,z); //E
	arrS[3] = world.getBlockMetadata(x-2,y,z); //W
	for (var i=0;i<4;i++) if (arrS[i] != 1) return -1;
	
	var checkP = 0;
	arrS[0] = world.getContainerSlotItemName(x,y,z+2,0); //S
	arrS[1] = world.getContainerSlotItemName(x,y,z-2,0); //N
	arrS[2] = world.getContainerSlotItemName(x+2,y,z,0); //E
	arrS[3] = world.getContainerSlotItemName(x-2,y,z,0); //W
	for (var i=0;i<4;i++) if (arrS[i] != "minecraft:iron_ingot") checkP = 1;
	if (checkP == 0) {
		//why do you do that?
		world.clearContainer(x,y,z+2); //S
		world.clearContainer(x,y,z-2); //N
		world.clearContainer(x+2,y,z); //E
		world.clearContainer(x-2,y,z); //W
		world.createExplosion(x,y,z,2,false);
		world.spawnItem(x,y+2,z,"Thaumcraft:WandCap",2,0);
		world.spawnMob(x,y+2,z,"Thaumcraft.EldritchGuardian");
		player.sendMessage("蠢货！你根本就不知道你做了什么！");
		player.sendMessage("......娆㈣繋鏉ュ埌锛屾垜浠殑涓栫晫!");
		player.swingItem();
		return 0;
	}
	
}