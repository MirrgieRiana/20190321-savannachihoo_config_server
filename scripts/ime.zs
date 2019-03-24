/*
 * Immersive Engineerig adjustments
 */
import mods.rockycore.Merchant;
import mods.immersiveengineering.Crusher;

val oreCopper = <immersiveengineering:ore:0>;
val oreAluminum = <immersiveengineering:ore:1>;
val oreLead = <immersiveengineering:ore:2>;
val oreUranium = <immersiveengineering:ore:5>;
val ingotConstantan = <immersiveengineering:metal:6>;
val dustSilver = <immersiveengineering:metal:12>;


/*
 * Trades
 */
// add ore trading with nitwit
Merchant.addTrade("minecraft:nitwit", "nitwit", <minecraft:iron_ore>*64, oreCopper*64, 1);
Merchant.addTrade("minecraft:nitwit", "nitwit", <minecraft:gold_ore>*12, oreCopper*16, 1);
Merchant.addTrade("minecraft:nitwit", "nitwit", <minecraft:iron_ore>*24, <minecraft:emerald>*8, oreAluminum*32, 1);
Merchant.addTrade("minecraft:nitwit", "nitwit", <minecraft:gold_ore>*16, <minecraft:redstone_ore>*8, oreLead*16, 1);
Merchant.addTrade("minecraft:nitwit", "nitwit", ingotConstantan*9, oreUranium*3, 2);

// repeat recipes to make trading easier
Merchant.addTrade("minecraft:nitwit", "nitwit", <minecraft:iron_ore>*64, oreCopper*64, 2);
Merchant.addTrade("minecraft:nitwit", "nitwit", <minecraft:gold_ore>*12, oreCopper*16, 2);
Merchant.addTrade("minecraft:nitwit", "nitwit", <minecraft:iron_ore>*24, <minecraft:emerald>*8, oreAluminum*16, 2);
Merchant.addTrade("minecraft:nitwit", "nitwit", <minecraft:gold_ore>*16, <minecraft:redstone_ore>*8, oreLead*16, 2);


/*
 * Crafting Table Recipes
 */
// disable turret recipes
recipes.remove(<immersiveengineering:metal_device1:10>);
recipes.remove(<immersiveengineering:metal_device1:11>);

// adjust early power generation
// water wheel: 1x steel ingot -> 1x steel block
val waterMillPart = <immersiveengineering:material:10>;
recipes.remove(<immersiveengineering:wooden_device1:0>);
recipes.addShaped(<immersiveengineering:wooden_device1:0>,[
	[null             , waterMillPart         , null                  ],
	[waterMillPart    , <ore:blockSteel>      , waterMillPart         ],
	[null             , waterMillPart         , null                  ]
]);

// dynamo: 2x iron ingot -> 2x light eng block
val coilCopper = <immersiveengineering:metal_decoration0:0>;
val lightEngBlock = <immersiveengineering:metal_decoration0:4>;
val redstone = <ore:dustRedstone>;
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>,[
	[null             , null                  , null                  ],
	[redstone         , coilCopper            , redstone              ],
	[lightEngBlock    , <ore:ingotIron>       , lightEngBlock         ]
]);


/*
 * Crusher Recipes
 */
Crusher.removeRecipe(<minecraft:glowstone_dust>);
Crusher.addRecipe(<minecraft:glowstone_dust>, <ore:glowstone>, 3200, dustSilver*2, 0.5);

// AE2 grinder compatibility
// ender pearl dust
Crusher.addRecipe(<appliedenergistics2:material:46>, <minecraft:ender_pearl>, 2400);
// sky stone dust
Crusher.addRecipe(<appliedenergistics2:material:45>, <appliedenergistics2:sky_stone_block>, 3200);
// flour
Crusher.addRecipe(<appliedenergistics2:material:4>, <minecraft:wheat>, 1200);
// certus quartz crystal to dust
Crusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:0>, 3200);
// fluix crystal to dust
Crusher.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, 3200);
