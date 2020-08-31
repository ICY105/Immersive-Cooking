
loot spawn ~ ~ ~ loot cook:block/mixing_bowl

#drop items
data remove block -29999999 0 1601 Items
execute positioned ~ ~-1 ~ as @e[tag=cook_mixing_bowl_item,distance=..0.25] run data modify block -29999999 0 1601 Items append from entity @s ArmorItems[0]
loot spawn ~ ~ ~ mine -29999999 0 1601 air{drop_contents:true}

#kill entities
execute positioned ~ ~-1 ~ run kill @e[tag=cook_mixing_bowl_item,distance=..0.25]
