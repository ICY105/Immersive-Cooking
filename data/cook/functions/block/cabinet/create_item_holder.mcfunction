
execute store result score $temp_1 cook_data run data get entity @s Item.tag.Facing

#count existing items
execute if score $temp_1 cook_data matches 2 positioned ~ ~-1 ~0.5 store result score $temp_0 cook_data if entity @e[tag=cook_cabinet_item,distance=..0.05]
execute if score $temp_1 cook_data matches 3 positioned ~ ~-1 ~-0.5 store result score $temp_0 cook_data if entity @e[tag=cook_cabinet_item,distance=..0.05]
execute if score $temp_1 cook_data matches 4 positioned ~0.5 ~-1 ~ store result score $temp_0 cook_data if entity @e[tag=cook_cabinet_item,distance=..0.05]
execute if score $temp_1 cook_data matches 5 positioned ~-0.5 ~-1 ~ store result score $temp_0 cook_data if entity @e[tag=cook_cabinet_item,distance=..0.05]

#summon item holder
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 2 run summon armor_stand ~ ~-1 ~0.5 {Tags:["cook_break_kill","cook_cabinet_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,DisabledSlots:4079166,Pose:{RightArm:[0f,-90f,0f]}}
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 3 run summon armor_stand ~ ~-1 ~-0.5 {Tags:["cook_break_kill","cook_cabinet_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,DisabledSlots:4079166,Pose:{RightArm:[0f,-90f,0f]}}
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 4 run summon armor_stand ~0.5 ~-1 ~ {Tags:["cook_break_kill","cook_cabinet_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,DisabledSlots:4079166,Pose:{RightArm:[0f,-90f,0f]}}
execute if score $temp_0 cook_data matches 0 if score $temp_1 cook_data matches 5 run summon armor_stand ~-0.5 ~-1 ~ {Tags:["cook_break_kill","cook_cabinet_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,DisabledSlots:4079166,Pose:{RightArm:[0f,-90f,0f]}}

#copy item to armor stand
execute if score $temp_0 cook_data matches 0 run data modify entity @e[tag=cook_new,limit=1] HandItems[0] set from entity @p[tag=cook_interact] SelectedItem
execute if score $temp_0 cook_data matches 0 run tag @e[tag=cook_new] remove cook_new
execute if score $temp_0 cook_data matches 0 as @p[tag=cook_interact] run replaceitem entity @s weapon.mainhand minecraft:air 

#tag
tag @s add cook_has_item

scoreboard players set $in_0 cook_data 1
