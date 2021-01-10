
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/cooking_pot
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/cooking_pot_replace

advancement revoke @s only cook:craft/cooking_pot
tag @s remove cook_craft_cooking_pot
recipe take @s cook:cooking_pot
