
tag @s remove cook_tcc_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"apple_pie"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/apple_pie
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"nibbled_apple_pie"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/nibbled_apple_pie
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"apple_pie_slice"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/apple_pie_slice
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food


execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"golden_apple_pie"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/golden_apple_pie
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"nibbled_golden_apple_pie"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/nibbled_golden_apple_pie
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"golden_apple_pie_slice"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/golden_apple_pie_slice
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food


execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"enchanted_golden_apple_pie"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/enchanted_golden_apple_pie
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"nibbled_enchanted_golden_apple_pie"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/nibbled_enchanted_golden_apple_pie
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"enchanted_golden_apple_pie_slice"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/enchanted_golden_apple_pie_slice
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food


execute store success score $temp_0 cook_data run clear @s minecraft:structure_block{tcc:{id:"warped_wart"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/fruit/warped_wart
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"sweet_berry_muffin"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/sweet_berry_muffin
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:cookie{tcc:{id:"frostbloom_petals"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/frostbloom_petals
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:bread{tcc:{id:"ancient_acorn"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/ancient_acorn
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:tropical_fish{tcc:{id:"swordfish"},CustomModelData:330000} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/sword_fish
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food

execute store success score $temp_0 cook_data run clear @s minecraft:porkchop{tcc:{id:"rotten_porkchop"}} 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:food/other/tcc/rotten_porkchop
execute if score $temp_0 cook_data matches 1 run tag @s add cook_replace_food


execute if entity @s[tag=cook_tcc_replace_food] run function cook:player/replace/tcc_replace_food
