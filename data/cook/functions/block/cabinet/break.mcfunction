
loot spawn ~ ~ ~ loot cook:block/cabinet

execute store result score $temp_1 cook_data run data get entity @s Item.tag.Facing

#drop items
data remove block -29999999 0 1601 Items
execute if score $temp_1 cook_data matches 2 positioned ~ ~-1 ~0.5 as @e[tag=cook_cabinet_item,distance=..0.25] run data modify block -29999999 0 1601 Items append from entity @s HandItems[0]
execute if score $temp_1 cook_data matches 3 positioned ~ ~-1 ~-0.5 as @e[tag=cook_cabinet_item,distance=..0.25] run data modify block -29999999 0 1601 Items append from entity @s HandItems[0]
execute if score $temp_1 cook_data matches 4 positioned ~0.5 ~-1 ~ as @e[tag=cook_cabinet_item,distance=..0.25] run data modify block -29999999 0 1601 Items append from entity @s HandItems[0]
execute if score $temp_1 cook_data matches 5 positioned ~-0.5 ~-1 ~ as @e[tag=cook_cabinet_item,distance=..0.25] run data modify block -29999999 0 1601 Items append from entity @s HandItems[0]

loot spawn ~ ~ ~ mine -29999999 0 1601 air{drop_contents:true}

#kill entities
execute if score $temp_1 cook_data matches 2 positioned ~ ~-1 ~0.5 run kill @e[tag=cook_cabinet_item,distance=..0.25]
execute if score $temp_1 cook_data matches 3 positioned ~ ~-1 ~-0.5 run kill @e[tag=cook_cabinet_item,distance=..0.25]
execute if score $temp_1 cook_data matches 4 positioned ~0.5 ~-1 ~ run kill @e[tag=cook_cabinet_item,distance=..0.25]
execute if score $temp_1 cook_data matches 5 positioned ~-0.5 ~-1 ~ run kill @e[tag=cook_cabinet_item,distance=..0.25]
