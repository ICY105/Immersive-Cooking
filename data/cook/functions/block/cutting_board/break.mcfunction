
execute store result score $temp_0 cook_data run data get entity @s Item.tag.CustomModelData
execute if score $temp_0 cook_data matches 6429087 run loot spawn ~ ~ ~ loot cook:block/oak_cutting_board
execute if score $temp_0 cook_data matches 6429088 run loot spawn ~ ~ ~ loot cook:block/spruce_cutting_board
execute if score $temp_0 cook_data matches 6429089 run loot spawn ~ ~ ~ loot cook:block/birch_cutting_board
execute if score $temp_0 cook_data matches 6429090 run loot spawn ~ ~ ~ loot cook:block/jungle_cutting_board
execute if score $temp_0 cook_data matches 6429091 run loot spawn ~ ~ ~ loot cook:block/acacia_cutting_board
execute if score $temp_0 cook_data matches 6429092 run loot spawn ~ ~ ~ loot cook:block/dark_oak_cutting_board
execute if score $temp_0 cook_data matches 6429093 run loot spawn ~ ~ ~ loot cook:block/crimson_cutting_board
execute if score $temp_0 cook_data matches 6429094 run loot spawn ~ ~ ~ loot cook:block/warped_cutting_board

#drop items
data remove block -29999999 0 1601 Items
execute positioned ~ ~-0.75 ~ as @e[tag=cook_cutting_board_item,distance=..0.25] run data modify block -29999999 0 1601 Items append from entity @s HandItems[0]
loot spawn ~ ~ ~ mine -29999999 0 1601 air{drop_contents:true}

#kill entities
execute positioned ~ ~-0.75 ~ run kill @e[tag=cook_cutting_board_item,distance=..0.25]
