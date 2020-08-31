
#cooked tags
execute if data entity @s ArmorItems[3].tag.cooked run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.cooked
execute if data entity @s ArmorItems[3].tag.cooked run data remove entity @s ArmorItems[3].tag.cooked

#apply color
execute if data entity @s ArmorItems[3].tag.cook.color store result score $temp_0 cook_data run data get entity @s ArmorItems[3].tag.cook.color.red
execute if data entity @s ArmorItems[3].tag.cook.color store result score $temp_1 cook_data run data get entity @s ArmorItems[3].tag.cook.color.green
execute if data entity @s ArmorItems[3].tag.cook.color store result score $temp_2 cook_data run data get entity @s ArmorItems[3].tag.cook.color.blue

scoreboard players set $temp_3 cook_data 0
scoreboard players operation $temp_3 cook_data += $temp_2 cook_data
scoreboard players operation $temp_1 cook_data *= $cons.256 du_data
scoreboard players operation $temp_3 cook_data += $temp_1 cook_data
scoreboard players operation $temp_0 cook_data *= $cons.256 du_data
scoreboard players operation $temp_0 cook_data *= $cons.256 du_data
scoreboard players operation $temp_3 cook_data += $temp_0 cook_data

execute if data entity @s ArmorItems[3].tag.cook.color if data entity @s HandItems[{id:"minecraft:firework_star"}] run data modify entity @s ArmorItems[3].tag.Explosion set value {Colors:[I;0]}
execute if data entity @s ArmorItems[3].tag.cook.color if data entity @s HandItems[{id:"minecraft:firework_star"}] store result entity @s ArmorItems[3].tag.Explosion.Colors[0] int 1 run scoreboard players get $temp_3 cook_data
