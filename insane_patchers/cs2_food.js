var FieldInsnNode = org.objectweb.asm.tree.FieldInsnNode;
var InsnList = org.objectweb.asm.tree.InsnList;
var InsnNode = org.objectweb.asm.tree.InsnNode;
var MethodInsnNode = org.objectweb.asm.tree.MethodInsnNode;
var VarInsnNode = org.objectweb.asm.tree.VarInsnNode;
var Opcodes = org.objectweb.asm.Opcodes;

node.interfaces.add("squeek/applecore/api/food/IEdible");

var onFoodEaten = node.methods.stream().filter(function (m){
    return m.name.equals("func_77654_b") || m.name.equals("onEaten");
}).findFirst().orElseThrow(function (){
    return new java.lang.Error();
});
var runtime = onFoodEaten.name.equals("func_77654_b");

var itr = onFoodEaten.instructions.iterator();
while (itr.hasNext()) {
    var insn = itr.next();
    itr.remove();
    if (insn.getOpcode() == Opcodes.INVOKEVIRTUAL && insn.owner.equals("net/minecraft/util/FoodStats")) {
        break;
    }
}
var insnListToAppend = new InsnList();
insnListToAppend.add(new VarInsnNode(Opcodes.ALOAD, 1));
insnListToAppend.add(new InsnNode(Opcodes.DUP));
insnListToAppend.add(new FieldInsnNode(Opcodes.GETFIELD, "net/minecraft/item/ItemStack", runtime ? "field_77994_a" : "stackSize", "I"));
insnListToAppend.add(new InsnNode(Opcodes.ICONST_1));
insnListToAppend.add(new InsnNode(Opcodes.ISUB));
insnListToAppend.add(new FieldInsnNode(Opcodes.PUTFIELD, "net/minecraft/item/ItemStack", runtime ? "field_77994_a" : "stackSize", "I"));
insnListToAppend.add(new VarInsnNode(Opcodes.ALOAD, 3));
insnListToAppend.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "net/minecraft/entity/player/EntityPlayer", runtime ? "func_71024_bL" : "getFoodStats", "()Lnet/minecraft/util/FoodStats;", false));
insnListToAppend.add(new VarInsnNode(Opcodes.ALOAD, 1));
insnListToAppend.add(new VarInsnNode(Opcodes.ALOAD, 3));
insnListToAppend.add(new MethodInsnNode(Opcodes.INVOKESTATIC, "info/tritusk/insanepatcher/FoodUtil", "getFoodValues", "(Lnet/minecraft/item/ItemStack;Lnet/minecraft/entity/player/EntityPlayer;)Lsqueek/applecore/api/food/FoodValues;", false));
insnListToAppend.add(new VarInsnNode(Opcodes.ASTORE, 4));
insnListToAppend.add(new VarInsnNode(Opcodes.ALOAD, 4));
insnListToAppend.add(new FieldInsnNode(Opcodes.GETFIELD, "squeek/applecore/api/food/FoodValues", "hunger", "I"));
insnListToAppend.add(new VarInsnNode(Opcodes.ALOAD, 4));
insnListToAppend.add(new FieldInsnNode(Opcodes.GETFIELD, "squeek/applecore/api/food/FoodValues", "saturationModifier", "F"));
insnListToAppend.add(new MethodInsnNode(Opcodes.INVOKEVIRTUAL, "net/minecraft/util/FoodStats", runtime ? "func_75122_a" : "addStats", "(IF)V", false));
onFoodEaten.instructions.insertBefore(onFoodEaten.instructions.getFirst(), insnListToAppend);

var getFoodValues = node.visitMethod(Opcodes.ACC_PUBLIC, "getFoodValues", "(Lnet/minecraft/item/ItemStack;)Lsqueek/applecore/api/food/FoodValues;", null, null);
getFoodValues.visitVarInsn(Opcodes.ALOAD, 1);
getFoodValues.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "net/minecraft/item/ItemStack", runtime ? "func_77960_j" : "getItemDamage", "()I", false);
getFoodValues.visitVarInsn(Opcodes.ISTORE, 4);
getFoodValues.visitTypeInsn(Opcodes.NEW, "squeek/applecore/api/food/FoodValues");
getFoodValues.visitInsn(Opcodes.DUP);
getFoodValues.visitVarInsn(Opcodes.ALOAD, 0);
getFoodValues.visitFieldInsn(Opcodes.GETFIELD, "cubex2/cs2/item/ItemCSFood", "attributes", "Lcubex2/cs2/item/attributes/ItemFoodAttributes;");
getFoodValues.visitFieldInsn(Opcodes.GETFIELD, "cubex2/cs2/item/attributes/ItemFoodAttributes", "hunger", "[I");
getFoodValues.visitVarInsn(Opcodes.ILOAD, 4);
getFoodValues.visitInsn(Opcodes.IALOAD);
getFoodValues.visitVarInsn(Opcodes.ALOAD, 0);
getFoodValues.visitFieldInsn(Opcodes.GETFIELD, "cubex2/cs2/item/ItemCSFood", "attributes", "Lcubex2/cs2/item/attributes/ItemFoodAttributes;");
getFoodValues.visitFieldInsn(Opcodes.GETFIELD, "cubex2/cs2/item/attributes/ItemFoodAttributes", "saturation", "[F");
getFoodValues.visitVarInsn(Opcodes.ILOAD, 4);
getFoodValues.visitInsn(Opcodes.FALOAD);
getFoodValues.visitMethodInsn(Opcodes.INVOKESPECIAL, "squeek/applecore/api/food/FoodValues", "<init>", "(IF)V", false);
getFoodValues.visitInsn(Opcodes.ARETURN);
getFoodValues.visitEnd();
