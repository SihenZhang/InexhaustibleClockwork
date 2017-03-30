#Name: ModularPowersuits.zs
#Author: Si_hen

print("Initializing 'ModularPowersuits.zs'...");

recipes.remove(<powersuits:powerArmorComponent>);
mods.railcraft.Rolling.addShaped(<powersuits:powerArmorComponent> * 8, [[<Creator:wireCopper>, <Creator:wireCopper>, <Creator:wireCopper>], 
                                                                        [<Creator:wireCopper>, <Creator:itemAlloy:7>, <Creator:wireCopper>],
                                                                        [<Creator:wireCopper>, <Creator:wireCopper>, <Creator:wireCopper>]]);

print("Initialized 'ModularPowersuits.zs'");