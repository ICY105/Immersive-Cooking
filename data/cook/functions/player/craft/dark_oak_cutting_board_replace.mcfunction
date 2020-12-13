
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/dark_oak_cutting_board
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/dark_oak_cutting_board_replace

advancement revoke @s only cook:craft/dark_oak_cutting_board
tag @s remove cook_craft_dark_oak_board
recipe take @s cook:dark_oak_cutting_board
