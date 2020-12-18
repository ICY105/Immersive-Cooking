
data modify storage cook:temp obj set from block ~ ~ ~ Items[{Slot:6b}]
function cook:utils/convert_vanilla_ingrediant

#check if can add liquid
scoreboard players set $temp_0 cook_data 1
execute if score $utils.temp_0 cook_data matches 0 run scoreboard players set $temp_0 cook_data 0
execute if score @s cook_food matches 1.. run data modify storage cook:temp obj set from entity @s Item.tag.liquid_item.tag.cook
execute if score @s cook_food matches 1.. store success score $temp_1 cook_data run data modify storage cook:temp obj set from block -29999999 0 1601 Items[0].tag.cook
execute if score @s cook_food matches 1.. if score $temp_1 cook_data matches 1 run scoreboard players set $temp_0 cook_data 0

#if yes, continue
execute if score $temp_0 cook_data matches 1 run data modify entity @s Item.tag.liquid_item set from block -29999999 0 1601 Items[0]
execute if score $temp_0 cook_data matches 1 run data modify entity @s Item.tag.liquid_item.Slot set value 24b
execute if score $temp_0 cook_data matches 1 run scoreboard players add @s cook_food 3
execute if score $temp_0 cook_data matches 1 run replaceitem block ~ ~ ~ container.24 minecraft:glass_bottle
execute if score $temp_0 cook_data matches 1 if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:water_bucket"}] run replaceitem block ~ ~ ~ container.24 minecraft:bucket
execute if score $temp_0 cook_data matches 1 if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:milk_bucket"}] run replaceitem block ~ ~ ~ container.24 minecraft:bucket
execute if score $temp_0 cook_data matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:air
