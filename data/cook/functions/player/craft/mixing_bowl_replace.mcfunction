
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/mixing_bowl
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/mixing_bowl_replace

advancement revoke @s only cook:craft/mixing_bowl
tag @s remove cook_craft_mixing_bowl
recipe take @s cook:mixing_bowl
