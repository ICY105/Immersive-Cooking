
execute store success score $temp_0 cook_data run clear @s minecraft:knowledge_book 1
execute if score $temp_0 cook_data matches 1 run function give:items/cooking_manual
execute if score $temp_0 cook_data matches 1 run function cook:player/craft/manual_replace

advancement revoke @s only cook:craft/manual
tag @s remove cook_craft_manual
recipe take @s cook:manual
