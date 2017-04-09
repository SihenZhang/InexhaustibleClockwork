var Opcodes = org.objectweb.asm.Opcodes;
var Label = org.objectweb.asm.Label;

var methodGenLevelGetter = node.methods.stream().filter(function (m){
    return m.name.equals("getGenLevelForStack");
}).findFirst().orElseThrow(function (){
    return new java.lang.Error();
});
var methodFuelBurnGetter = node.methods.stream().filter(function (m){
    return m.name.equals("getFuelBurn");
}).findFirst().orElseThrow(function (){
    return new java.lang.Error();
});

methodGenLevelGetter.instructions.clear();
methodFuelBurnGetter.instructions.clear();
methodGenLevelGetter.visitVarInsn(Opcodes.ALOAD, 1);
var labelInvalidCheck0 = new Label();
methodGenLevelGetter.visitJumpInsn(Opcodes.IFNULL, labelInvalidCheck0);
methodGenLevelGetter.visitVarInsn(Opcodes.ALOAD, 1);
methodGenLevelGetter.visitMethodInsn(Opcodes.INVOKESTATIC, "info/tritusk/insanepatcher/FoodUtil", "isFood", "(Lnet/minecraft/item/ItemStack;)Z", false);
var labelCakeCheck0 = new Label();
methodGenLevelGetter.visitJumpInsn(Opcodes.IFEQ, labelCakeCheck0);
methodGenLevelGetter.visitVarInsn(Opcodes.ALOAD, 0);
methodGenLevelGetter.visitVarInsn(Opcodes.ALOAD, 1);
methodGenLevelGetter.visitMethodInsn(Opcodes.INVOKESTATIC, "info/tritusk/insanepatcher/FoodUtil", "getHungerValueRegen", "(Lnet/minecraft/item/ItemStack;)I", false);
methodGenLevelGetter.visitInsn(Opcodes.I2D);
methodGenLevelGetter.visitLdcInsn(8.0);
methodGenLevelGetter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "com/rwtema/extrautils/tileentity/generators/TileEntityGeneratorFood", "scale", "(DD)D", false);
methodGenLevelGetter.visitLdcInsn(4.0);
methodGenLevelGetter.visitInsn(Opcodes.DMUL);
methodGenLevelGetter.visitInsn(Opcodes.DRETURN);
methodGenLevelGetter.visitLabel(labelCakeCheck0);
methodGenLevelGetter.visitVarInsn(Opcodes.ALOAD, 1);
methodGenLevelGetter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "net/minecraft/item/ItemStack", "func_77973_b", "()Lnet/minecraft/item/Item;", false);
methodGenLevelGetter.visitFieldInsn(Opcodes.GETSTATIC, "net/minecraft/init/Items", "cake", "Lnet/minecraft/item/Item;");
methodGenLevelGetter.visitJumpInsn(Opcodes.IF_ACMPNE, labelInvalidCheck0);
methodGenLevelGetter.visitLdcInsn(64.0);
methodGenLevelGetter.visitInsn(Opcodes.DRETURN);
methodGenLevelGetter.visitLabel(labelInvalidCheck0);
methodGenLevelGetter.visitInsn(Opcodes.DCONST_0);
methodGenLevelGetter.visitInsn(Opcodes.DRETURN);
methodGenLevelGetter.visitEnd();

methodFuelBurnGetter.visitVarInsn(Opcodes.ALOAD, 1);
var labelInvalidCheck1 = new Label();
methodFuelBurnGetter.visitJumpInsn(Opcodes.IFNULL, labelInvalidCheck1);
methodFuelBurnGetter.visitVarInsn(Opcodes.ALOAD, 1);
methodFuelBurnGetter.visitMethodInsn(Opcodes.INVOKESTATIC, "info/tritusk/insanepatcher/FoodUtil", "isFood", "(Lnet/minecraft/item/ItemStack;)Z", false);
var labelCakeCheck1 = new Label();
methodFuelBurnGetter.visitJumpInsn(Opcodes.IFEQ, labelCakeCheck1);
methodFuelBurnGetter.visitVarInsn(Opcodes.ALOAD, 1);
methodFuelBurnGetter.visitMethodInsn(Opcodes.INVOKESTATIC, "info/tritusk/insanepatcher/FoodUtil", "getHungerValueRegen", "(Lnet/minecraft/item/ItemStack;)I", false);
methodFuelBurnGetter.visitJumpInsn(Opcodes.IFLE, labelInvalidCheck1);
methodFuelBurnGetter.visitVarInsn(Opcodes.ALOAD, 0);
methodFuelBurnGetter.visitVarInsn(Opcodes.ALOAD, 1);
methodFuelBurnGetter.visitMethodInsn(Opcodes.INVOKESTATIC, "info/tritusk/insanepatcher/FoodUtil", "getSaturationModifier", "(Lnet/minecraft/item/ItemStack;)F", false);
methodFuelBurnGetter.visitInsn(Opcodes.F2D);
methodFuelBurnGetter.visitLdcInsn(0.8);
methodFuelBurnGetter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "com/rwtema/extrautils/tileentity/generators/TileEntityGeneratorFood", "scale", "(DD)D", false);
methodFuelBurnGetter.visitLdcInsn(1800.0);
methodFuelBurnGetter.visitInsn(Opcodes.DMUL);
methodFuelBurnGetter.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Math", "ceil", "(D)D", false);
methodFuelBurnGetter.visitInsn(Opcodes.DRETURN);
methodFuelBurnGetter.visitLabel(labelCakeCheck1);
methodFuelBurnGetter.visitVarInsn(Opcodes.ALOAD, 1);
methodFuelBurnGetter.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "net/minecraft/item/ItemStack", "func_77973_b", "()Lnet/minecraft/item/Item;", false);
methodFuelBurnGetter.visitFieldInsn(Opcodes.GETSTATIC, "net/minecraft/init/Items", "cake", "Lnet/minecraft/item/Item;");
methodFuelBurnGetter.visitJumpInsn(Opcodes.IF_ACMPNE, labelInvalidCheck1);
methodFuelBurnGetter.visitLdcInsn(1500.0);
methodFuelBurnGetter.visitInsn(Opcodes.DRETURN);
methodFuelBurnGetter.visitLabel(labelInvalidCheck1);
methodFuelBurnGetter.visitInsn(Opcodes.DCONST_0);
methodFuelBurnGetter.visitInsn(Opcodes.DRETURN);
methodFuelBurnGetter.visitEnd();

node.visitEnd();

// Side note: "func_77973_b" <-> "getItem"
