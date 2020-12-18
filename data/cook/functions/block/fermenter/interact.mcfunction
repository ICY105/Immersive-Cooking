
#modify data
data merge entity @s {ItemRotation:0b}

#toggle open/closed state
scoreboard players set $temp_0 cook_data 0
execute if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,distance=..8] run scoreboard players set $temp_0 cook_data 1

execute if score $temp_0 cook_data matches 1 run tag @s[tag=cook_open] add cook_toggle
execute if score $temp_0 cook_data matches 1 run tag @s add cook_open
execute if score $temp_0 cook_data matches 1 run tag @s[tag=cook_toggle] remove cook_open
execute if score $temp_0 cook_data matches 1 run tag @s remove cook_toggle

#end loop
scoreboard players set $in_0 cook_data -1
