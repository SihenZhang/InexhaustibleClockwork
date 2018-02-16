// This defines the output rate, with unit of RF/t. Must be float-point number, i.e. has decimals.
var gen_level = 60000.0;
// This defines the "burning time", with unit of tick. Must be float point number, i.e. has decimals.
var gen_time = 100.0;

var Opcodes = org.objectweb.asm.Opcodes;

var methodGenLevelGetter = node.methods.stream().filter(function (m){
    return m.name.equals("genLevel");
}).findFirst().orElseThrow(function (){
    return new java.lang.Error();
});

methodGenLevelGetter.instructions.clear();
methodGenLevelGetter.visitLdcInsn(gen_level);
methodGenLevelGetter.visitInsn(Opcodes.DRETURN);
methodGenLevelGetter.visitEnd();

var methodGenTimeGetter = node.methods.stream().filter(function (m) {
    return m.name.equals("getFuelBurn");
}).findFirst().orElseThrow(function () {
    return new java.lang.Error();
});

var itr = methodGenTimeGetter.instructions.iterator();
var target = null;
while (itr.hasNext()) {
    var insn = itr.next();
    if (insn.getOpcode() == Opcodes.LDC) {
        target = insn;
        break;
    }
}

if (target != null) {
    methodGenTimeGetter.instructions.set(target, new org.objectweb.asm.tree.LdcInsnNode(gen_time));
}
methodGenTimeGetter.visitEnd();

node.visitEnd();
