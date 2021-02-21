
# $in_0 cook_data: food level
# $in_1 cook_data: quality
# $in_2 cook_data: adjust for tropical fish restoration

#normalize quality
execute if score $in_1 cook_data matches ..-10 run scoreboard players set $in_1 cook_data -9

#reduce hunger for negative quality
scoreboard players add $in_1 cook_data 10
execute if score $in_1 cook_data matches ..9 run scoreboard players operation $in_0 cook_data *= $in_1 cook_data
execute if score $in_1 cook_data matches ..9 run scoreboard players add $in_0 cook_data 5
execute if score $in_1 cook_data matches ..9 run scoreboard players operation $in_0 cook_data /= $cons.10 du_data
scoreboard players remove $in_1 cook_data 10

#food quality effects
execute if score $in_1 cook_data matches -5..-3 run effect give @s minecraft:poison 10 0
execute if score $in_1 cook_data matches ..-6 run effect give @s minecraft:wither 10 1

#calculate saturation
scoreboard players operation $in_1 cook_data *= $in_0 cook_data
execute if score $in_1 cook_data matches 1..4 run scoreboard players set $in_1 cook_data 5
scoreboard players add $in_1 cook_data 5
scoreboard players operation $in_1 cook_data /= $cons.10 du_data

#redux
scoreboard players operation $in_0 cook_data -= $in_2 cook_data
scoreboard players operation $in_1 cook_data -= $in_3 cook_data

#current hunger
execute store result score $temp_1 cook_data run data get entity @p foodLevel
execute store result score $temp_2 cook_data run data get entity @p foodSaturationLevel

scoreboard players set $out_0 cook_data 0
scoreboard players set $out_1 cook_data 0

### bonus regen
scoreboard players operation $temp_3 cook_data = $in_0 cook_data
scoreboard players remove $temp_3 cook_data 20
scoreboard players operation $temp_3 cook_data += $temp_1 cook_data
#1-3
execute if score $temp_3 cook_data matches 1..2 run effect give @s minecraft:regeneration 3 0 true
execute if score $temp_3 cook_data matches 3..5 run effect give @s minecraft:regeneration 5 0 true
execute if score $temp_3 cook_data matches 6..8 run effect give @s minecraft:regeneration 8 0 true
#4-6
execute if score $temp_3 cook_data matches 9..11 run effect give @s minecraft:regeneration 6 1 true
execute if score $temp_3 cook_data matches 12..14 run effect give @s minecraft:regeneration 7 1 true
execute if score $temp_3 cook_data matches 15..17 run effect give @s minecraft:regeneration 8 1 true
#7-10
execute if score $temp_3 cook_data matches 18..20 run effect give @s minecraft:regeneration 4 2 true
execute if score $temp_3 cook_data matches 18..20 run effect give @s minecraft:regeneration 6 1 true
execute if score $temp_3 cook_data matches 21..26 run effect give @s minecraft:regeneration 5 2 true
execute if score $temp_3 cook_data matches 27..32 run effect give @s minecraft:regeneration 6 2 true
#12-20
execute if score $temp_3 cook_data matches 33..38 run effect give @s minecraft:regeneration 4 3 true
execute if score $temp_3 cook_data matches 39..50 run effect give @s minecraft:regeneration 5 3 true
execute if score $temp_3 cook_data matches 51.. run effect give @s minecraft:regeneration 6 3 true

#find hunger to add
scoreboard players set $temp_3 cook_data 20
scoreboard players operation $temp_3 cook_data -= $temp_1 cook_data
execute if score $in_0 cook_data >= $temp_3 cook_data run scoreboard players operation $out_0 cook_data = $temp_3 cook_data
execute if score $in_0 cook_data < $temp_3 cook_data run scoreboard players operation $out_0 cook_data = $in_0 cook_data

#find saturation to add/remove
scoreboard players operation $temp_5 cook_data = $temp_2 cook_data
scoreboard players operation $temp_5 cook_data += $in_1 cook_data

scoreboard players operation $temp_4 cook_data = $out_0 cook_data
scoreboard players operation $temp_4 cook_data += $temp_4 cook_data
scoreboard players operation $temp_1 cook_data += $in_0 cook_data
scoreboard players operation $temp_2 cook_data += $temp_4 cook_data
execute if score $temp_2 cook_data > $temp_1 cook_data run scoreboard players operation $temp_2 cook_data = $temp_1 cook_data
execute if score $temp_2 cook_data matches 20.. run scoreboard players set $temp_2 cook_data 20

#add hunger or additional saturation
execute if score $temp_5 cook_data < $temp_2 cook_data run scoreboard players operation $out_1 cook_data = $temp_2 cook_data
execute if score $temp_5 cook_data < $temp_2 cook_data run scoreboard players operation $out_1 cook_data -= $temp_5 cook_data

execute if score $temp_5 cook_data > $temp_2 cook_data if score $in_0 cook_data >= $temp_3 cook_data run scoreboard players operation $out_0 cook_data += $temp_5 cook_data
execute if score $temp_5 cook_data > $temp_2 cook_data if score $in_0 cook_data >= $temp_3 cook_data run scoreboard players operation $out_0 cook_data -= $temp_2 cook_data

execute if score $temp_2 cook_data matches 20 run scoreboard players remove $temp_5 cook_data 20
execute if score $temp_2 cook_data matches 20 if score $temp_5 cook_data matches 0.. run scoreboard players operation @s cook_food += $temp_5 cook_data

#redux
execute if score $out_0 cook_data matches ..-1 run scoreboard players operation $out_1 cook_data -= $out_0 cook_data
execute if score $in_1 cook_data matches ..-1 run scoreboard players operation $out_1 cook_data -= $in_1 cook_data

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
