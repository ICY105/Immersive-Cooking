
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/smoking_rack
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/smoking_rack_replace

advancement revoke @s only cook:craft/smoking_rack
tag @s remove cook_craft_smoking_rack
recipe take @s cook:smoking_rack
