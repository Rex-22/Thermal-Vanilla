import mods.thermalexpansion.RedstoneFurnace;

//====== Remove Silicon Smelting Recipes ======
//
furnace.remove(<appliedenergistics2:material:5>, <appliedenergistics2:material:3>);
furnace.remove(<appliedenergistics2:material:5>, <enderio:item_material:33>);
furnace.remove(<appliedenergistics2:material:5>, <appliedenergistics2:material:2>);
furnace.remove(<refinedstorage:silicon>, <minecraft:quartz>);

//====== Add Silicon Smelting Recipes ======
//

furnace.addRecipe(<appliedenergistics2:material:5>, <minecraft:quartz>, 1.0);

mods.thermalexpansion.RedstoneFurnace.addRecipe(<appliedenergistics2:material:5>, <minecraft:quartz>, 3600);

