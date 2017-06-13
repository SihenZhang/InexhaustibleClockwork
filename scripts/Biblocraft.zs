#Name: Biblocraft.zs
#Author: Si_hen

print("Initializing 'Biblocraft.zs'...");

recipes.remove(<BiblioCraft:Typesetting Machine>);
recipes.remove(<BiblioCraft:item.BiblioChase>);
recipes.addShaped(<BiblioCraft:item.BiblioChase> * 6, [[null, <StevesCarts:ModuleComponents:22>, null], [<StevesCarts:ModuleComponents:22>, <ore:plankWood>, <StevesCarts:ModuleComponents:22>], [null, <StevesCarts:ModuleComponents:22>, null]]);
recipes.addShaped(<BiblioCraft:Typesetting Machine>, [[null, <BiblioCraft:item.BiblioChase>, null], [<ore:plankWood>, <minecraft:blaze_rod>, <ore:plankWood>], [<ore:plankWood>, <ore:chipsetRed>, <ore:plankWood>]]);

print("Initialized 'Biblocraft.zs'");