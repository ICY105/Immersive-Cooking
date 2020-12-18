
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/evaporation_plate
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/evaporation_plate_replace

advancement revoke @s only cook:craft/evaporation_plate
tag @s remove cook_craft_evaporation
recipe take @s cook:evaporation_plate
