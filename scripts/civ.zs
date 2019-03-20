
recipes.remove(<betterbuilderswands:wandstone>, false);
recipes.remove(<betterbuilderswands:wandiron>, false);
recipes.remove(<betterbuilderswands:wanddiamond>, false);
recipes.remove(<betterbuilderswands:wandunbreakable>, false);

recipes.addShaped(<betterbuilderswands:wandstone>,
[[<ore:cobblestone>, null                  , null                  ],
 [null             , <ore:stickWood>       , null                  ],
 [null             , null                  , <ore:stickWood>       ]]);

recipes.addShaped(<betterbuilderswands:wandiron>,
[[<ore:ingotIron>  , null                  , null                  ],
 [null             , <ore:stickWood>       , null                  ],
 [null             , null                  , <ore:stickWood>       ]]);

recipes.addShaped(<betterbuilderswands:wanddiamond>,
[[<ore:gemDiamond> , null                  , null                  ],
 [null             , <ore:stickWood>       , null                  ],
 [null             , null                  , <ore:stickWood>       ]]);

recipes.addShaped(<betterbuilderswands:wandunbreakable>,
[[<ore:netherStar> , null                  , null                  ],
 [null             , <ore:stickWood>       , null                  ],
 [null             , null                  , <ore:stickWood>       ]]);

recipes.remove(<reforged:wooden_pike>, false);
recipes.remove(<reforged:stone_pike>, false);
recipes.remove(<reforged:golden_pike>, false);
recipes.remove(<reforged:iron_pike>, false);
recipes.remove(<reforged:diamond_pike>, false);

recipes.addShaped(<reforged:wooden_pike>,
[[null             , null                  , <ore:plankWood>       ],
 [null             , <ore:stickWood>       , null                  ],
 [<ore:stickWood>  , null                  , null                  ]]);

recipes.addShaped(<reforged:stone_pike>,
[[null             , null                  , <ore:cobblestone>     ],
 [null             , <ore:stickWood>       , null                  ],
 [<ore:stickWood>  , null                  , null                  ]]);

recipes.addShaped(<reforged:golden_pike>,
[[null             , null                  , <ore:ingotGold>       ],
 [null             , <ore:stickWood>       , null                  ],
 [<ore:stickWood>  , null                  , null                  ]]);

recipes.addShaped(<reforged:iron_pike>,
[[null             , null                  , <ore:ingotIron>       ],
 [null             , <ore:stickWood>       , null                  ],
 [<ore:stickWood>  , null                  , null                  ]]);

recipes.addShaped(<reforged:diamond_pike>,
[[null             , null                  , <ore:gemDiamond>      ],
 [null             , <ore:stickWood>       , null                  ],
 [<ore:stickWood>  , null                  , null                  ]]);

val oreDictEnt = <ore:itemQuartzKnife>;
oreDictEnt.add(<bibliocraft:framingsaw>);
