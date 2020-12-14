
execute store success score $temp_0 cook_data run clear @s minecraft:knowledge_book 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:tools/food_bag
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/food_bag_replace

advancement revoke @s only cook:craft/food_bag
tag @s remove cook_craft_food_bag
recipe take @s cook:food_bag
