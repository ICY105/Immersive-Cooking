
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/spruce_cutting_board
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/spruce_cutting_board_replace

advancement revoke @s only cook:craft/spruce_cutting_board
tag @s remove cook_craft_spruce_board
recipe take @s cook:spruce_cutting_board
