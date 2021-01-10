
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/oven
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/oven_replace

advancement revoke @s only cook:craft/oven
tag @s remove cook_craft_oven
recipe take @s cook:oven
