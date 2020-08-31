
#check item
data modify storage cook:temp obj set from entity @p[tag=cook_interact] SelectedItem
function cook:utils/convert_vanilla_ingrediant
data modify block -29999999 0 1601 Items[0].Count set value 1b

scoreboard players set $temp_0 cook_data -1
execute if data block -29999999 0 1601 Items[0].tag.cook{baking:1b} run scoreboard players set $temp_0 cook_data 0

#count existing ingredients and squash to 8 spawning locations
execute store result score $temp_1 cook_data run data get entity @s Item.tag.Facing

execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 2 positioned ~ ~-0.98 ~0.6 store result score $temp_0 cook_data if entity @e[tag=cook_oven_item,distance=..0.05]
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 3 positioned ~ ~-0.98 ~-0.6 store result score $temp_0 cook_data if entity @e[tag=cook_oven_item,distance=..0.05]
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 4 positioned ~0.6 ~-0.98 ~ store result score $temp_0 cook_data if entity @e[tag=cook_oven_item,distance=..0.05]
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 5 positioned ~-0.6 ~-0.98 ~ store result score $temp_0 cook_data if entity @e[tag=cook_oven_item,distance=..0.05]

#summon item holder
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 2 run summon armor_stand ~ ~-0.98 ~0.6 {Tags:["cook_oven_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{RightArm:[0f,-90f,0f]},DisabledSlots:4079166,Rotation:[180.0f,0.0f]}
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 3 run summon armor_stand ~ ~-0.98 ~-0.6 {Tags:["cook_oven_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{RightArm:[0f,-90f,0f]},DisabledSlots:4079166,Rotation:[270.0f,0.0f]}
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 4 run summon armor_stand ~0.6 ~-0.98 ~ {Tags:["cook_oven_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{RightArm:[0f,-90f,0f]},DisabledSlots:4079166,Rotation:[0.0f,0.0f]}
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 5 run summon armor_stand ~-0.6 ~-0.98 ~ {Tags:["cook_oven_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,PersistenceRequired:1b,Pose:{RightArm:[0f,-90f,0f]},DisabledSlots:4079166,Rotation:[90.0f,0.0f]}
execute if score $temp_0 cook_data matches 0 run tag @s add cook_has_item

#copy item to armor stand
execute if score $temp_0 cook_data matches 0 run data modify entity @e[tag=cook_new,limit=1] HandItems[0] set from block -29999999 0 1601 Items[0]
execute if score $temp_0 cook_data matches 0 run tag @e[tag=cook_new] remove cook_new
execute if score $temp_0 cook_data matches 0 as @p[tag=cook_interact] run function cook:utils/take_one_selected_item
