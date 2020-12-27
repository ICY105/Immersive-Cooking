
execute store result score $temp_0 cook_data run data get entity @s Item.Count

execute if score $temp_0 cook_data matches 1 run loot spawn ~ ~ ~ loot cook:varients/berry_biomes
execute if score $temp_0 cook_data matches 2 run loot spawn ~ ~ ~ loot cook:varients/berry_biomes
execute if score $temp_0 cook_data matches 3 run loot spawn ~ ~ ~ loot cook:varients/berry_biomes
execute if score $temp_0 cook_data matches 4.. run loot spawn ~ ~ ~ loot cook:varients/berry_biomes

kill @s