
loot spawn ~ ~ ~ loot cook:block/smoking_rack

data remove block -29999999 0 1601 Items
execute positioned ~ ~-2.1 ~ as @e[tag=cook_smoking_item,distance=..0.5] run data modify block -29999999 0 1601 Items append from entity @s ArmorItems[3]
loot spawn ~ ~ ~ mine -29999999 0 1601 air{drop_contents:true}

execute positioned ~ ~-2.1 ~ run kill @e[tag=cook_smoking_item,distance=..0.5]
