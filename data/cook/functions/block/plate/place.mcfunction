
#check location
scoreboard players set $temp_0 cook_data 1
execute positioned ~0.5 ~0.5 ~0.5 if entity @e[distance=..0.75] run scoreboard players set $temp_0 cook_data 0
execute positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #du:air run scoreboard players set $temp_0 cook_data 0

#summon models
execute if score $temp_0 cook_data matches 1 run summon item_frame ~ ~ ~ {Tags:["cook_plate","cook_new"],Invulnerable:1b,Invisible:1b,Facing:1b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:-1b,cook_id:9101,CustomModelData:6429101}}} 
execute if score $temp_0 cook_data matches 1 run data modify entity @e[tag=cook_new,limit=1] Item.tag.item set from entity @s SelectedItem
execute if score $temp_0 cook_data matches 1 run tag @e[tag=cook_new] remove cook_new

data merge storage cook:temp {list:[]}
execute if score $temp_0 cook_data matches 1 run data modify storage cook:temp list set from entity @s SelectedItem.tag.items
execute if score $temp_0 cook_data matches 1 run scoreboard players set $temp_1 cook_data 0
execute if score $temp_0 cook_data matches 1 if data storage cook:temp list[0] positioned ~0.5 ~ ~0.5 run function cook:block/plate/add_items

#cleanup
execute if score $temp_0 cook_data matches 1 run function cook:utils/take_one_selected_item

#end loop
scoreboard players set $in_0 cook_data 0
