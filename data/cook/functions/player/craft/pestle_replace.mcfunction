
execute store success score $temp_0 cook_data run clear @s minecraft:knowledge_book 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:tools/pestle
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/pestle_replace

advancement revoke @s only cook:craft/pestle
tag @s remove cook_craft_pestle
recipe take @s cook:pestle
