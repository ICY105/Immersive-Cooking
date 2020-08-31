
execute if score $temp_1 cook_data matches 0 run summon armor_stand ~ ~-0.72 ~ {Tags:["cook_plate_item","cook_new"],Rotation:[0.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_1 cook_data matches 1 run summon armor_stand ~ ~-0.69 ~ {Tags:["cook_plate_item","cook_new"],Rotation:[135.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_1 cook_data matches 2 run summon armor_stand ~ ~-0.66 ~ {Tags:["cook_plate_item","cook_new"],Rotation:[270.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_1 cook_data matches 3 run summon armor_stand ~ ~-0.63 ~ {Tags:["cook_plate_item","cook_new"],Rotation:[45.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_1 cook_data matches 4 run summon armor_stand ~ ~-0.60 ~ {Tags:["cook_plate_item","cook_new"],Rotation:[180.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_1 cook_data matches 5 run summon armor_stand ~ ~-0.57 ~ {Tags:["cook_plate_item","cook_new"],Rotation:[315.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_1 cook_data matches 6 run summon armor_stand ~ ~-0.54 ~ {Tags:["cook_plate_item","cook_new"],Rotation:[90.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_1 cook_data matches 7 run summon armor_stand ~ ~-0.51 ~ {Tags:["cook_plate_item","cook_new"],Rotation:[225.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}

data modify entity @e[tag=cook_new,limit=1] HandItems[0] set from storage cook:temp list[0]
tag @e[tag=cook_new] remove cook_new

scoreboard players add $temp_1 cook_data 1
data remove storage cook:temp list[0]
execute if data storage cook:temp list[0] run function cook:block/plate/add_items
