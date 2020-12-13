
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/juicer
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/juicer_replace

advancement revoke @s only cook:craft/juicer
tag @s remove cook_craft_juicer
recipe take @s cook:juicer
