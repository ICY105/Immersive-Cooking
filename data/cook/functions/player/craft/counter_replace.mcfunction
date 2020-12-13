
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/counter
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/counter_replace

advancement revoke @s only cook:craft/counter
tag @s remove cook_craft_counter
recipe take @s cook:counter
