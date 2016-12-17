// the eye for every magic circle
name = "theeye";
material = "grass";

//those attributes
addToCreative[0] = true;
hardness[0] = 0;
resistance[0] = 0;
hasTileEntity[0] = true;
tileEntity[0] = "Dummy";
stepSound[0] = "grass";
canFaceSides[0] = false;
canFaceBottom[0] = true;
tickrate = 10;

//textures
textureFileFront[0] = "eye.png";
textureFileBack[0] = "eye.png";
textureFileSides[0] = "eye.png";

//some events
onActivated[0] = "mod.loadScript('eyeactivated.js');" //when activated
//onUpdate[0] = "position.y += 1.5; world.spawnParticle('dripWater', position, 0.0, 1.0, 0.0);";