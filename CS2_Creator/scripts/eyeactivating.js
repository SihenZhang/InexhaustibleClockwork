var duration = world.getTileEntityIntData(position,"duar");
var jsexc = world.getTileEntityStringData(position,"jsexc");
if (duration >= 0) {
	duration--;
	world.setTileEntityIntData(position,"duar", duration);
	mod.loadScript(jsexc);
}
