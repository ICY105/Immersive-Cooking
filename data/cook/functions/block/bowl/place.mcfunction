
#check location
scoreboard players set $temp_0 cook_data 1
execute positioned ~0.5 ~0.5 ~0.5 if entity @e[distance=..0.75] run scoreboard players set $temp_0 cook_data 0
execute positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #du:air run scoreboard players set $temp_0 cook_data 0

#summon models
execute if score $temp_0 cook_data matches 1 run summon item_frame ~ ~ ~ {Tags:["cook_bowl","cook_new"],Invulnerable:1b,Invisible:1b,Facing:1b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:-1b,cook_id:9100,CustomModelData:6429100}}} 
execute if score $temp_0 cook_data matches 1 run data modify entity @e[tag=cook_new,limit=1] Item.tag.item set from entity @s SelectedItem
execute if score $temp_0 cook_data matches 1 run tag @e[tag=cook_new] remove cook_new

execute if score $temp_0 cook_data matches 1 run summon armor_stand ~0.5 ~ ~0.5 {Tags:["cook_bowl_liquid","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,Small:1b,PersistenceRequired:1b,DisabledSlots:4079166,Pose:{RightArm:[0.0f,-90.0f,0.0f]},HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:6429100,Explosion:{Colors:[I;0]}}},{}]}
execute if score $temp_0 cook_data matches 1 run data modify entity @e[tag=cook_new,limit=1] HandItems[0].tag.Explosion.Colors[0] set from entity @s SelectedItem.tag.Explosion.Colors[0]
execute if score $temp_0 cook_data matches 1 run tag @e[tag=cook_new] remove cook_new

execute if score $temp_0 cook_data matches 1 run data modify storage cook:temp list set from entity @s SelectedItem.tag.items
execute if score $temp_0 cook_data matches 1 run scoreboard players set $temp_1 cook_data 0
execute if score $temp_0 cook_data matches 1 if data storage cook:temp list[0] positioned ~0.5 ~ ~0.5 run function cook:block/bowl/add_items

#cleanup
execute if score $temp_0 cook_data matches 1 run function cook:utils/take_one_selected_item

#end loop
scoreboard players set $in_0 cook_data 0
