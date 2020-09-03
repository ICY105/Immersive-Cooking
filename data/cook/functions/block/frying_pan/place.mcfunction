
data modify entity @s Item set value {id:"minecraft:tropical_fish",Count:1b,tag:{Facing:-1b,cook_id:9086,CustomModelData:6429099}}
execute as @p[tag=cook_interact,distance=..8] run function cook:utils/take_one_selected_item
tag @s add cook_frying_pan

scoreboard players set $in_0 cook_data 1
