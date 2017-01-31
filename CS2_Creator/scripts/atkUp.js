var repyer = [];repyer = world.enumEntities(position,64,"all");
for (var b=0; b<=repyer.length;b++) {
	if (repyer[b].isLiving()){
		repyer[b].asLiving().addPotionEffect("damageBoost",200,1);
		repyer[b].asLiving().addPotionEffect("hunger",200,0);
		
	}
}
