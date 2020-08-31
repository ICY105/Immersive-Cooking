
advancement revoke @s only cook:craft
recipe take @s cook:kitchen_crafting_table

execute store success score $temp_0 cook_data run clear @s minecraft:crafting_table 1
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/crafter

execute if score $temp_0 cook_data matches 1 store success score $temp_0 cook_data run kill @e[type=item,distance=..6,nbt={Item:{id:"minecraft:crafting_table"}}]
execute if score $temp_0 cook_data matches 1 run loot give @s loot cook:block/crafter
