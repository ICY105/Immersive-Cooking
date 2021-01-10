
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/sink
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/sink_replace

advancement revoke @s only cook:craft/sink
tag @s remove cook_craft_sink
recipe take @s cook:sink
