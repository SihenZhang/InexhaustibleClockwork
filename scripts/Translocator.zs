#Name: Translocator.zs
#Author: Si_hen

print("Initializing 'Translocator.zs'...");

recipes.remove(<Translocator:translocator>);
recipes.remove(<Translocator:translocator:1>);
recipes.addShaped(<Translocator:translocator> * 2, [[<ore:ingotRedAlloy>, <RandomThings:ingredient:6>, <ore:ingotRedAlloy>], [<ore:ingotEnergeticAlloy>, <ExtraUtilities:extractor_base>, <ore:ingotEnergeticAlloy>], [<ore:ingotRedAlloy>, <ore:chipsetComp>, <ore:ingotRedAlloy>]]);
recipes.addShaped(<Translocator:translocator:1> * 2, [[<ore:ingotElectrotineAlloy>, <RandomThings:ingredient:6>, <ore:ingotElectrotineAlloy>], [<ore:ingotEnergeticAlloy>, <ExtraUtilities:extractor_base:6>, <ore:ingotEnergeticAlloy>], [<ore:ingotElectrotineAlloy>, <ore:chipsetComp>, <ore:ingotElectrotineAlloy>]]);

print("Initialized 'Translocator.zs'");