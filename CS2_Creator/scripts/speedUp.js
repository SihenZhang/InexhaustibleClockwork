var repyer = [];repyer = world.enumEntities(position,64,"all");
for (var b=0; b<=repyer.length;b++) {
	if (repyer[b].isLiving()){
		repyer[b].asLiving().addPotionEffect("moveSpeed",200,5)
	}
}