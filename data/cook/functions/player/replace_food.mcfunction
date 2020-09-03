
tag @s remove cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:baked_potato 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cooked_potato
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:mushroom_stew 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/mushroom_stew
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:beetroot_soup 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/beetroot_stew
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/bread
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:cooked_chicken 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cooked_chicken
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:cooked_cod 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cooked_cod
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:cooked_mutton 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cooked_mutton
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:cooked_porkchop 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cooked_pork
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:cooked_beef 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cooked_beef
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:cooked_rabbit 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cooked_rabbit
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:cooked_salmon 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cooked_salmon
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:pumpkin_pie 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/pumpkin_pie
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:rabbit_stew 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/rabbit_stew
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:cookie 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cookie
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

#execute store success score $temp_0 cook_data run clear @s minecraft:cake 1
#execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/premade/cake
#execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute if entity @s[tag=!cook_replace_food] run advancement revoke @s only cook:picked_up_food