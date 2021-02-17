
#modify data
execute if entity @s[tag=cook_rot_1] run data merge entity @s {ItemRotation:0}
execute if entity @s[tag=cook_rot_2] run data merge entity @s {ItemRotation:2}
execute if entity @s[tag=cook_rot_3] run data merge entity @s {ItemRotation:4}
execute if entity @s[tag=cook_rot_4] run data merge entity @s {ItemRotation:6}

#turn sink on/off
scoreboard players set $temp_0 cook_data 0
execute if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,predicate=!cook:holding_dye,distance=..8] run scoreboard players set $temp_0 cook_data 1

execute if entity @s[tag=!cook_active] if score $temp_0 cook_data matches 1 run summon item_frame ~ ~-1 ~ {Tags:["cook_sink_water"],Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:0b,ItemRotation:0b,Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;35071]},Facing:-1b,id:0,CustomModelData:6429004}}}
execute if entity @s[tag=!cook_active] if score $temp_0 cook_data matches 1 run particle minecraft:dust 0 1 1 0.5 ~ ~0.05 ~ 0 0.1 0 0 10 normal
execute if entity @s[tag=!cook_active] if score $temp_0 cook_data matches 1 run tag @s add cook_temp

execute if entity @s[tag=cook_active] if score $temp_0 cook_data matches 1 run kill @e[tag=cook_sink_water,distance=..0.1]
execute if entity @s[tag=cook_active] if score $temp_0 cook_data matches 1 run tag @s remove cook_active

execute if entity @s[tag=cook_temp] run tag @s add cook_active
tag @s remove cook_temp

#wash food
execute if entity @s[tag=cook_active] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=cook:holding_ingrediant,distance=..8] unless data entity @p[tag=cook_interact] Inventory[35] run function cook:block/sink/complete_recipe

#change color
execute if entity @p[tag=cook_interact,predicate=cook:holding_dye,distance=..8] run function cook:block/sink/change_color

#end loop
scoreboard players set $in_0 cook_data -1
