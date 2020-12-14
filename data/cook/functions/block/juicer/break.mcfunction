
loot spawn ~ ~ ~ loot cook:block/juicer

#drop items
data remove block -29999999 0 1601 Items
execute positioned ~ ~-0.75 ~ as @e[tag=cook_juicer_item,distance=..0.25] run data modify block -29999999 0 1601 Items append from entity @s HandItems[0]
loot spawn ~ ~ ~ mine -29999999 0 1601 air{drop_contents:true}

#kill entities
execute positioned ~ ~-0.75 ~ run kill @e[tag=cook_juicer_item,distance=..0.25]
kill @e[tag=cook_juicer_liquid,distance=..0.1]
