// This defines the output rate, with unit of RF/t. Must be float-point number, i.e. has decimals.
var gen_level = 400.0;

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

node.visitEnd();
