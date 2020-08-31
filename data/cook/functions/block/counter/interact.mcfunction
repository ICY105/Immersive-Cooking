
#modify data
data merge entity @s {ItemRotation:0b}

#change color
execute if entity @p[tag=cook_interact,predicate=cook:holding_dye,distance=..8] run function cook:block/counter/change_color

#end loop
scoreboard players set $in_0 cook_data -1
