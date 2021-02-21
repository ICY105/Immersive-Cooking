
#get output item
data modify storage cook:temp obj set value {}
execute if score $crafting.in_0 du_data matches 6429000 run data modify storage cook:temp obj set from block ~ ~ ~ Items[{Slot:0b}]
execute if score $crafting.in_0 du_data matches 6429001 run data modify storage cook:temp obj set from block ~ ~ ~ Items[{Slot:1b}]
execute if score $crafting.in_0 du_data matches 6429002 run data modify storage cook:temp obj set from block ~ ~ ~ Items[{Slot:2b}]
execute if score $crafting.in_0 du_data matches 6429003 run data modify storage cook:temp obj set from block ~ ~ ~ Items[{Slot:3b}]

function cook:utils/convert_vanilla_ingrediant
scoreboard players operation $temp_0 cook_data = $utils.temp_0 cook_data

execute if score $temp_0 cook_data matches 0 run data remove block -29999999 0 1601 Items
execute unless data block -29999999 0 1601 Items[0].tag.cook{roasting:1b} run scoreboard players set $temp_0 cook_data 0

#modify result
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cooked run data modify block -29999999 0 1601 Items[0] merge from block -29999999 0 1601 Items[0].tag.cooked
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cooked run data remove block -29999999 0 1601 Items[0].tag.cooked

#modify color
execute store result score $utils.in_0 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.color.red
execute store result score $utils.in_1 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.color.green
execute store result score $utils.in_2 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.color.blue

function cook:utils/calc_color

execute if data block -29999999 0 1601 Items[0].tag.cook.color if data block -29999999 0 1601 Items[{Slot:0b,id:"minecraft:firework_star"}] run data modify block -29999999 0 1601 Items[0].tag.Explosion set value {Colors:[I;0]}
execute if data block -29999999 0 1601 Items[0].tag.cook.color if data block -29999999 0 1601 Items[{Slot:0b,id:"minecraft:firework_star"}] store result block -29999999 0 1601 Items[0].tag.Explosion.Colors[0] int 1 run scoreboard players get $utils.out_0 cook_data

#modify quality
execute if score $temp_0 cook_data matches 1 run data modify block -29999999 0 1601 Items[0].tag.cook.quality set value 1

#modify food level
execute store result score $utils.in_0 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.food
execute store result score $utils.in_1 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.quality
function cook:utils/create_food_lore
data modify block -29999999 0 1601 Items[0].tag.display.Lore[0] set from block -29999999 0 1602 Text1

#set output
execute if score $temp_0 cook_data matches 1 run data modify storage cook:temp var set from block -29999999 0 1601 Items[0].tag.cook.base_name
execute if score $temp_0 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.roasted","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 1 run data modify block -29999999 0 1601 Items[0].tag.display.Name set from block -29999999 0 1602 Text1
execute if score $temp_0 cook_data matches 1 run data remove block -29999999 0 1601 Items[0].tag.du_smelt_id
execute if score $temp_0 cook_data matches 1 run data remove block -29999999 0 1601 Items[0].tag.cook.roasting
execute if score $temp_0 cook_data matches 1 run data remove block -29999999 0 1601 Items[0].tag.cook.washing
execute if score $temp_0 cook_data matches 1 run data remove block -29999999 0 1601 Items[0].tag.cook.smoking
loot spawn ~ ~-0.25 ~ mine -29999999 0 1601 air{drop_contents:true}

#cancel if not recipe
execute if score $temp_0 cook_data matches 0 run scoreboard players set $crafting.temp_0 du_data 0

