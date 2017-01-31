//give cure effect to everybody nearby and damage those dark things

var repyer = [];repyer = world.enumEntities(position,16,"all");
for (var b=0; b<=repyer.length;b++) {
	if (repyer[b].isLiving()){
		repyer[b].asLiving().addPotionEffect("heal",1,0);
	}
}