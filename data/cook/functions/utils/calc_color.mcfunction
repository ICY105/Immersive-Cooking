# $utils.in_0: red
# $utils.in_1: green
# $utils.in_2: blue
# $utils.out_0: combined RBG color in decimal

scoreboard players set $utils.out_0 cook_data 0
scoreboard players set $utils.temp_0 cook_data 256

scoreboard players operation $utils.out_0 cook_data += $utils.in_2 cook_data

scoreboard players operation $utils.in_1 cook_data *= $utils.temp_0 cook_data
scoreboard players operation $utils.out_0 cook_data += $utils.in_1 cook_data

scoreboard players operation $utils.in_0 cook_data *= $utils.temp_0 cook_data
scoreboard players operation $utils.in_0 cook_data *= $utils.temp_0 cook_data
scoreboard players operation $utils.out_0 cook_data += $utils.in_0 cook_data
