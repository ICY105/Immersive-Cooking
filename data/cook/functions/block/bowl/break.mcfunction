
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items append from entity @s Item.tag.item
data modify block -29999999 0 1601 Items[0].Count set value 1b
loot spawn ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}

execute positioned ~ ~-1.9 ~ run kill @e[tag=cook_bowl_item,distance=..0.25]
kill @e[tag=cook_bowl_liquid,distance=..0.25]
