

var n = main();
if (n==-1) player.sendMessage("错误：圆环不完整");

function main(){
	//4b offset, 3b 3b offset
	var x = position.x;y = position.y;z = position.z;
	var arrS = new Array(8);
	arrS[0] = rIndex(world.getBlockName(x,y,z+4)); //S
	arrS[1] = rIndex(world.getBlockName(x,y,z-4)); //N
	arrS[2] = rIndex(world.getBlockName(x-4,y,z)); //E
	arrS[3] = rIndex(world.getBlockName(x+4,y,z)); //W
	arrS[4] = rIndex(world.getBlockName(x-3,y,z+3)); //SE
	arrS[5] = rIndex(world.getBlockName(x+3,y,z+3)); //SW
	arrS[6] = rIndex(world.getBlockName(x-3,y,z-3)); //NE
	arrS[7] = rIndex(world.getBlockName(x+3,y,z-3)); //NW
	
	//check for all checkpoint
	for (var i=0;i<8;i++) if (arrS[i]==-1) return -1;
	
	//combine all position
	var strc = arrS.join("")+".js";
	player.sendMessage(strc);
	mod.loadScript(strc);
}

function rIndex(str){
	var arr = ["Creator:qian","Creator:dui","Creator:li","Creator:zhen","Creator:xun","Creator:kan","Creator:gen","Creator:kun"];
	for (var i=0;i<8;i++) if (arr[i]==str) return i;
	return -1; //failed
}