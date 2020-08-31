
execute if score $temp_1 cook_data matches 0 run summon armor_stand ~ ~-1.9 ~ {Tags:["cook_bowl_item","cook_new"],Rotation:[0.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
execute if score $temp_1 cook_data matches 1 run summon armor_stand ~ ~-1.9 ~ {Tags:["cook_bowl_item","cook_new"],Rotation:[90.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
execute if score $temp_1 cook_data matches 2 run summon armor_stand ~ ~-1.9 ~ {Tags:["cook_bowl_item","cook_new"],Rotation:[180.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
execute if score $temp_1 cook_data matches 3 run summon armor_stand ~ ~-1.9 ~ {Tags:["cook_bowl_item","cook_new"],Rotation:[270.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
execute if score $temp_1 cook_data matches 4 run summon armor_stand ~ ~-1.9 ~ {Tags:["cook_bowl_item","cook_new"],Rotation:[45.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
execute if score $temp_1 cook_data matches 5 run summon armor_stand ~ ~-1.9 ~ {Tags:["cook_bowl_item","cook_new"],Rotation:[135.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
execute if score $temp_1 cook_data matches 6 run summon armor_stand ~ ~-1.9 ~ {Tags:["cook_bowl_item","cook_new"],Rotation:[225.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
execute if score $temp_1 cook_data matches 7 run summon armor_stand ~ ~-1.9 ~ {Tags:["cook_bowl_item","cook_new"],Rotation:[315.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}

data modify entity @e[tag=cook_new,limit=1] ArmorItems[3] set from storage cook:temp list[0]
tag @e[tag=cook_new] remove cook_new

scoreboard players add $temp_1 cook_data 1
data remove storage cook:temp list[0]
execute if data storage cook:temp list[0] run function cook:block/bowl/add_items
