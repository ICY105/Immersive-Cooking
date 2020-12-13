
#check item
data modify storage cook:temp obj set from entity @p[tag=cook_interact] SelectedItem
function cook:utils/convert_vanilla_ingrediant
data modify block -29999999 0 1601 Items[0].Count set value 1b

scoreboard players set $temp_0 cook_data -1
execute if data block -29999999 0 1601 Items[0].tag.cook{juicing:1b} run scoreboard players set $temp_0 cook_data 0
execute if data block -29999999 0 1601 Items[0].tag.cook{juicing:2b} run scoreboard players set $temp_0 cook_data 0

#count existing items
execute if score $temp_0 cook_data matches 0 positioned ~ ~-0.6 ~-0.1 store result score $temp_0 cook_data if entity @e[tag=cook_juicer_item,distance=..0.05]
execute if score $temp_0 cook_data matches 0 run tag @s add cook_has_item

#summon item holder
execute if score $temp_0 cook_data matches 0 run summon armor_stand ~ ~-0.6 ~-0.1 {Tags:["cook_juicer_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,DisabledSlots:4079166,Pose:{RightArm:[0f,-90f,0f]}}
execute if score $temp_0 cook_data matches 0 run data modify entity @e[tag=cook_new,limit=1] HandItems[0] set from block -29999999 0 1601 Items[0]
execute if score $temp_0 cook_data matches 0 run tag @e[tag=cook_new] remove cook_new
execute if score $temp_0 cook_data matches 0 as @p[tag=cook_interact] run function cook:utils/take_one_selected_item

scoreboard players set $in_0 cook_data 1
