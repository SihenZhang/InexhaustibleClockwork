#Name: StevesFactoryManager.zs
#Author: Si_hen

print("Initializing 'StevesFactoryManager.zs'...");

#manager
recipes.remove(<StevesFactoryManager:BlockMachineManagerName>);
recipes.addShaped(<StevesFactoryManager:BlockMachineManagerName>, [[<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:49>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:22>, <OpenComputers:case1>, <StevesCarts:ModuleComponents:22>], [<appliedenergistics2:tile.BlockInterface>, <StevesCarts:CartModule:92>, <extracells:ecbaseblock>]]);

#cable
recipes.remove(<StevesFactoryManager:BlockCableName>);
recipes.addShaped(<StevesFactoryManager:BlockCableName> * 12, [[<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:22>, <minecraft:redstone_block>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>]]);

print("Initialized 'StevesFactoryManager.zs'");