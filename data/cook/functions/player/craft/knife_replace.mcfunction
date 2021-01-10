
execute store success score $temp_0 cook_data run clear @s minecraft:knowledge_book 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:tools/knife
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/knife_replace

advancement revoke @s only cook:craft/knife
tag @s remove cook_craft_knife
recipe take @s cook:knife
