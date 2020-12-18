
#check item
data modify storage cook:temp obj set from entity @p[tag=cook_interact] SelectedItem
function cook:utils/convert_vanilla_ingrediant
data modify block -29999999 0 1601 Items[0].Count set value 1b

scoreboard players set $temp_0 cook_data 0
execute if data block -29999999 0 1601 Items[0].tag.cook{type:7b} run scoreboard players set $temp_0 cook_data 1
execute if entity @s[tag=cook_has_liquid] run scoreboard players set $temp_0 cook_data 0

#create liquid model
execute if score $temp_0 cook_data matches 1 run summon item_frame ~ ~ ~ {Tags:["cook_evaporation_liquid"],Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:0b,ItemRotation:0b,Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;8947848]},color:{red:0,green:0,blue:0},Facing:-1b,id:0,CustomModelData:6429116}}}

#store data
execute if score $temp_0 cook_data matches 1 positioned ~ ~0.95 ~ as @e[tag=cook_evaporation_liquid,distance=..0.1] run data modify entity @s Item.tag.liquid_item set from block -29999999 0 1601 Items[0]
execute if score $temp_0 cook_data matches 1 positioned ~ ~0.95 ~ as @e[tag=cook_evaporation_liquid,distance=..0.1] store result entity @s Item.tag.Explosion.Colors[0] int 1 run data get entity @s Item.tag.liquid_item.tag.CustomPotionColor

#cleanup
execute if score $temp_0 cook_data matches 1 run tag @s add cook_has_liquid
execute if score $temp_0 cook_data matches 1 as @p[tag=cook_interact] run function cook:utils/take_one_selected_item
scoreboard players set $temp_0 cook_data -1
