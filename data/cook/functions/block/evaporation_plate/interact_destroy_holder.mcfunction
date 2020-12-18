
#copy item to armor stand
execute if entity @s[tag=cook_has_item] run data remove block -29999999 0 1601 Items
execute if entity @s[tag=cook_has_item] positioned ~ ~-0.7 ~ as @e[tag=cook_evaporation_item,distance=..0.1] run data modify block -29999999 0 1601 Items append from entity @s HandItems[0]
execute if entity @s[tag=cook_has_item] positioned ~ ~-0.7 ~ run kill @e[tag=cook_evaporation_item,distance=..0.1]
execute if entity @s[tag=cook_has_item] run loot give @p[tag=cook_interact] mine -29999999 0 1601 air{drop_contents:true}
execute if entity @s[tag=cook_has_item] run tag @s remove cook_has_item

#liquid
execute if entity @s[tag=cook_has_liquid] positioned ~ ~0.95 ~ run kill @e[tag=cook_evaporation_liquid,distance=..0.1]
execute if entity @s[tag=cook_has_liquid] run tag @s remove cook_has_liquid

scoreboard players set $in_0 cook_data -1
