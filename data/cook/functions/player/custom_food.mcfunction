
# $in_0 cook_data: food level
# $in_1 cook_data: quality

scoreboard players add $in_1 cook_data 10
scoreboard players operation $in_0 cook_data *= $in_1 cook_data
scoreboard players add $in_0 cook_data 5
scoreboard players operation $in_0 cook_data /= $cons.10 du_data

execute if score $in_0 cook_data matches 40.. run scoreboard players operation @s cook_food += $in_0 cook_data
execute if score $in_0 cook_data matches 40.. run scoreboard players remove @s cook_food 40
execute if score $in_0 cook_data matches 40.. run scoreboard players set $in_0 cook_data 40

#food quality
execute if score $in_1 cook_data matches 15.. run effect give @s minecraft:regeneration 10 1
execute if score $in_1 cook_data matches 5..7 run effect give @s minecraft:poison 10 1
execute if score $in_1 cook_data matches ..4 run effect give @s minecraft:wither 10 1

#current hunger
execute store result score $temp_1 cook_data run data get entity @p foodLevel
execute store result score $temp_2 cook_data run data get entity @p foodSaturationLevel

#find missing hunger
scoreboard players set $temp_4 cook_data 20
scoreboard players operation $temp_4 cook_data -= $temp_1 cook_data

scoreboard players set $out_0 cook_data 0
scoreboard players set $out_1 cook_data 0

#if food cannot fill hunger, fill as much hunger as possible and remove added saturation
execute if score $temp_4 cook_data >= $in_0 cook_data run scoreboard players operation $out_0 cook_data = $in_0 cook_data
execute if score $temp_4 cook_data >= $in_0 cook_data run scoreboard players operation $out_1 cook_data = $temp_2 cook_data
execute if score $temp_4 cook_data >= $in_0 cook_data run scoreboard players operation $out_1 cook_data += $in_0 cook_data
execute if score $temp_4 cook_data >= $in_0 cook_data run scoreboard players operation $out_1 cook_data += $in_0 cook_data
execute if score $temp_4 cook_data >= $in_0 cook_data run scoreboard players operation $temp_5 cook_data = $temp_1 cook_data
execute if score $temp_4 cook_data >= $in_0 cook_data run scoreboard players operation $temp_5 cook_data += $in_0 cook_data
execute if score $temp_4 cook_data >= $in_0 cook_data if score $out_1 cook_data > $temp_5 cook_data run scoreboard players operation $out_1 cook_data = $temp_5 cook_data
execute if score $temp_4 cook_data >= $in_0 cook_data run scoreboard players operation $out_1 cook_data -= $temp_2 cook_data

#if food surpasses hunger, fill hunger and find added saturation
execute if score $temp_4 cook_data < $in_0 cook_data run scoreboard players operation $out_0 cook_data = $temp_4 cook_data
execute if score $temp_4 cook_data < $in_0 cook_data run scoreboard players operation $temp_3 cook_data = $in_0 cook_data
execute if score $temp_4 cook_data < $in_0 cook_data run scoreboard players operation $temp_3 cook_data -= $temp_4 cook_data
execute if score $temp_4 cook_data < $in_0 cook_data run scoreboard players operation $temp_3 cook_data += $temp_2 cook_data
execute if score $temp_4 cook_data < $in_0 cook_data run scoreboard players operation $temp_5 cook_data = $temp_3 cook_data
execute if score $temp_4 cook_data < $in_0 cook_data run scoreboard players operation $temp_5 cook_data /= $cons.2 du_data
execute if score $temp_4 cook_data < $in_0 cook_data if score $temp_5 cook_data >= $temp_4 cook_data run scoreboard players operation $out_0 cook_data = $temp_5 cook_data
execute if score $temp_4 cook_data < $in_0 cook_data if score $temp_5 cook_data < $temp_4 cook_data run scoreboard players operation $out_1 cook_data = $temp_4 cook_data
execute if score $temp_4 cook_data < $in_0 cook_data if score $temp_5 cook_data < $temp_4 cook_data run scoreboard players operation $out_1 cook_data += $temp_4 cook_data
execute if score $temp_4 cook_data < $in_0 cook_data if score $temp_5 cook_data < $temp_4 cook_data run scoreboard players operation $out_1 cook_data -= $temp_3 cook_data

#affect hunger
execute if score $out_0 cook_data matches 1 run effect give @s minecraft:saturation 1 0 true
execute if score $out_0 cook_data matches 2 run effect give @s minecraft:saturation 1 1 true
execute if score $out_0 cook_data matches 3 run effect give @s minecraft:saturation 1 2 true
execute if score $out_0 cook_data matches 4 run effect give @s minecraft:saturation 1 3 true
execute if score $out_0 cook_data matches 5 run effect give @s minecraft:saturation 1 4 true

execute if score $out_0 cook_data matches 6 run effect give @s minecraft:saturation 1 5 true
execute if score $out_0 cook_data matches 7 run effect give @s minecraft:saturation 1 6 true
execute if score $out_0 cook_data matches 8 run effect give @s minecraft:saturation 1 7 true
execute if score $out_0 cook_data matches 9 run effect give @s minecraft:saturation 1 8 true
execute if score $out_0 cook_data matches 10 run effect give @s minecraft:saturation 1 9 true

execute if score $out_0 cook_data matches 11 run effect give @s minecraft:saturation 1 10 true
execute if score $out_0 cook_data matches 12 run effect give @s minecraft:saturation 1 11 true
execute if score $out_0 cook_data matches 13 run effect give @s minecraft:saturation 1 12 true
execute if score $out_0 cook_data matches 14 run effect give @s minecraft:saturation 1 13 true
execute if score $out_0 cook_data matches 15 run effect give @s minecraft:saturation 1 14 true

execute if score $out_0 cook_data matches 16 run effect give @s minecraft:saturation 1 15 true
execute if score $out_0 cook_data matches 17 run effect give @s minecraft:saturation 1 16 true
execute if score $out_0 cook_data matches 18 run effect give @s minecraft:saturation 1 17 true
execute if score $out_0 cook_data matches 19 run effect give @s minecraft:saturation 1 18 true
execute if score $out_0 cook_data matches 20.. run effect give @s minecraft:saturation 1 19 true

execute if score $out_1 cook_data matches 1 run effect give @s minecraft:hunger 1 39 true
execute if score $out_1 cook_data matches 2 run effect give @s minecraft:hunger 1 79 true
execute if score $out_1 cook_data matches 3 run effect give @s minecraft:hunger 1 119 true
execute if score $out_1 cook_data matches 4 run effect give @s minecraft:hunger 1 159 true
execute if score $out_1 cook_data matches 5 run effect give @s minecraft:hunger 1 199 true

execute if score $out_1 cook_data matches 6 run effect give @s minecraft:hunger 1 239 true
execute if score $out_1 cook_data matches 7 run effect give @s minecraft:hunger 2 140 true
execute if score $out_1 cook_data matches 8 run effect give @s minecraft:hunger 2 160 true
execute if score $out_1 cook_data matches 9 run effect give @s minecraft:hunger 2 180 true
execute if score $out_1 cook_data matches 10 run effect give @s minecraft:hunger 2 200 true

execute if score $out_1 cook_data matches 11 run effect give @s minecraft:hunger 2 220 true
execute if score $out_1 cook_data matches 12 run effect give @s minecraft:hunger 2 240 true
execute if score $out_1 cook_data matches 13 run effect give @s minecraft:hunger 3 173 true
execute if score $out_1 cook_data matches 14 run effect give @s minecraft:hunger 3 186 true
execute if score $out_1 cook_data matches 15 run effect give @s minecraft:hunger 3 200 true

execute if score $out_1 cook_data matches 16 run effect give @s minecraft:hunger 3 213 true
execute if score $out_1 cook_data matches 17 run effect give @s minecraft:hunger 3 226 true
execute if score $out_1 cook_data matches 18 run effect give @s minecraft:hunger 3 240 true
execute if score $out_1 cook_data matches 19 run effect give @s minecraft:hunger 3 253 true
execute if score $out_1 cook_data matches 20.. run effect give @s minecraft:hunger 4 200 true
