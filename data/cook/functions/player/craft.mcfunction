
advancement revoke @s only cook:craft
recipe take @s cook:kitchen_crafting_table

execute store success score $temp_0 cook_data run clear @s minecraft:crafting_table 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/crafter
