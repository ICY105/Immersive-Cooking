
data modify storage cook:temp obj set from entity @p[tag=cook_interact] SelectedItem
function cook:utils/convert_vanilla_ingrediant
data modify block -29999999 0 1601 Items[0].Count set value 1b

scoreboard players set $temp_0 cook_data -1
execute if entity @s[tag=!cook_has_liquid] if data block -29999999 0 1601 Items[0].tag.cook{type:7b} run function cook:block/frying_pan/interact_add_liquid
execute if entity @s[tag=cook_has_liquid] if data block -29999999 0 1601 Items[0].tag.cook{type:6b} run function cook:block/frying_pan/interact_add_seasoning
execute if entity @s[tag=cook_has_liquid] if data block -29999999 0 1601 Items[0].tag.cook{frying:1b} run scoreboard players set $temp_0 cook_data 0

#count existing ingredients and squash to 8 spawning locations
execute if score $temp_0 cook_data matches 0 positioned ~ ~-0.56 ~ store result score $temp_0 cook_data if entity @e[tag=cook_pan_item,distance=..0.25]

#summon item holder
execute if score $temp_0 cook_data matches 0 run summon armor_stand ~ ~-0.77 ~ {Tags:["cook_pan_item","cook_new"],Rotation:[0.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_0 cook_data matches 1 run summon armor_stand ~ ~-0.74 ~ {Tags:["cook_pan_item","cook_new"],Rotation:[135.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_0 cook_data matches 2 run summon armor_stand ~ ~-0.71 ~ {Tags:["cook_pan_item","cook_new"],Rotation:[270.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_0 cook_data matches 3 run summon armor_stand ~ ~-0.68 ~ {Tags:["cook_pan_item","cook_new"],Rotation:[45.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_0 cook_data matches 4 run summon armor_stand ~ ~-0.65 ~ {Tags:["cook_pan_item","cook_new"],Rotation:[180.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_0 cook_data matches 5 run summon armor_stand ~ ~-0.62 ~ {Tags:["cook_pan_item","cook_new"],Rotation:[315.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_0 cook_data matches 6 run summon armor_stand ~ ~-0.59 ~ {Tags:["cook_pan_item","cook_new"],Rotation:[90.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_0 cook_data matches 7 run summon armor_stand ~ ~-0.56 ~ {Tags:["cook_pan_item","cook_new"],Rotation:[225.0f,0.0f],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{RightArm:[0f,-90f,0f]},HandItems:[{id:"minecraft:wheat",Count:1b},{}]}
execute if score $temp_0 cook_data matches 0..7 run tag @s add cook_has_item

#copy item to armor stand
execute if score $temp_0 cook_data matches 0..7 run data modify entity @e[tag=cook_new,limit=1] HandItems[0] set from block -29999999 0 1601 Items[0]
execute if score $temp_0 cook_data matches 0..7 run tag @e[tag=cook_new] remove cook_new
execute if score $temp_0 cook_data matches 0..7 as @p[tag=cook_interact] run function cook:utils/take_one_selected_item

scoreboard players set $in_0 cook_data 1
