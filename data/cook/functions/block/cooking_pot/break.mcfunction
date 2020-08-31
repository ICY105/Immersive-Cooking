
loot spawn ~ ~ ~ loot cook:block/cooking_pot
kill @e[tag=cook_pot_liquid,distance=..0.1]

data remove block -29999999 0 1601 Items
execute positioned ~ ~-1.5 ~ as @e[tag=cook_pot_item,distance=..0.5] run data modify block -29999999 0 1601 Items append from entity @s ArmorItems[3]
loot spawn ~ ~ ~ mine -29999999 0 1601 air{drop_contents:true}

execute positioned ~ ~-1.5 ~ run kill @e[tag=cook_pot_item,distance=..0.5]
