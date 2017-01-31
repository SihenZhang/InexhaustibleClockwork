var repyer = [];repyer = world.enumEntities(position,64,"all");
for (var b=0; b<=repyer.length;b++) {
	if (repyer[b].isLiving()){
		repyer[b].asLiving().addPotionEffect("resistance",200,1);
		repyer[b].asLiving().addPotionEffect("moveSlowdown",200,1);
	}
}