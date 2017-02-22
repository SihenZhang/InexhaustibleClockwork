#Name: StevesFactoryManager.zs
#Author: Si_hen

print("Initializing 'StevesFactoryManager.zs'...");

#manager
recipes.remove(<StevesFactoryManager:BlockMachineManagerName>);
recipes.addShaped(<StevesFactoryManager:BlockMachineManagerName>, [[<StevesCarts:BlockMetalStorage>, <StevesCarts:ModuleComponents:49>, <StevesCarts:BlockMetalStorage>], [<StevesCarts:BlockMetalStorage>, <OpenComputers:case1>, <StevesCarts:BlockMetalStorage>], [<appliedenergistics2:tile.BlockInterface>, <StevesCarts:CartModule:92>, <extracells:ecbaseblock>]]);

#cable
recipes.remove(<StevesFactoryManager:BlockCableName>);
recipes.addShaped(<StevesFactoryManager:BlockCableName> * 8, [[<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:22>, <minecraft:redstone_block>, <StevesCarts:ModuleComponents:22>], [<StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>, <StevesCarts:ModuleComponents:22>]]);

print("Initialized 'StevesFactoryManager.zs'");