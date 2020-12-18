
execute store success score $temp_0 cook_data run clear @s minecraft:structure_void 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/fermenter
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/fermenter_replace

advancement revoke @s only cook:craft/fermenter
tag @s remove cook_craft_fermenter
recipe take @s cook:fermenter
