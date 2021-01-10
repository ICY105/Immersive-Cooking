
execute store success score $temp_0 cook_data run clear @s minecraft:knowledge_book 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/frying_pan
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/frying_pan_replace

advancement revoke @s only cook:craft/frying_pan
tag @s remove cook_craft_frying_pan
recipe take @s cook:frying_pan
