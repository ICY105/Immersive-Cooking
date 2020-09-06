
#get output item
execute if score $crafting.in_0 du_data matches 6429000 run data modify storage cook:temp obj set from block ~ ~ ~ Items[{Slot:0b}]
execute if score $crafting.in_0 du_data matches 6429001 run data modify storage cook:temp obj set from block ~ ~ ~ Items[{Slot:1b}]
execute if score $crafting.in_0 du_data matches 6429002 run data modify storage cook:temp obj set from block ~ ~ ~ Items[{Slot:2b}]
execute if score $crafting.in_0 du_data matches 6429003 run data modify storage cook:temp obj set from block ~ ~ ~ Items[{Slot:3b}]

function cook:utils/convert_vanilla_ingrediant

#modify result
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cook{roasting:1b} if data block -29999999 0 1601 Items[0].tag.cooked run data modify block -29999999 0 1601 Items[0] merge from block -29999999 0 1601 Items[0].tag.cooked
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cook{roasting:1b} if data block -29999999 0 1601 Items[0].tag.cooked run data remove block -29999999 0 1601 Items[0].tag.cooked

execute store result score $temp_5 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.color.red
execute store result score $temp_1 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.color.green
execute store result score $temp_2 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.color.blue

#compute color
scoreboard players set $temp_3 cook_data 0
scoreboard players set $temp_4 cook_data 256

scoreboard players operation $temp_3 cook_data += $temp_2 cook_data

scoreboard players operation $temp_1 cook_data *= $temp_4 cook_data
scoreboard players operation $temp_3 cook_data += $temp_1 cook_data

scoreboard players operation $temp_5 cook_data *= $temp_4 cook_data
scoreboard players operation $temp_5 cook_data *= $temp_4 cook_data
scoreboard players operation $temp_3 cook_data += $temp_5 cook_data

execute if data block -29999999 0 1601 Items[0].tag.cook.color if data block -29999999 0 1601 Items[{Slot:0b,id:"minecraft:firework_star"}] run data modify block -29999999 0 1601 Items[0].tag.Explosion set value {Colors:[I;0]}
execute if data block -29999999 0 1601 Items[0].tag.cook.color if data block -29999999 0 1601 Items[{Slot:0b,id:"minecraft:firework_star"}] store result block -29999999 0 1601 Items[0].tag.Explosion.Colors[0] int 1 run scoreboard players get $temp_3 cook_data

#reduce quality
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cook{roasting:1b} store result score $temp_2 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.quality
scoreboard players remove $temp_2 cook_data 1
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cook{roasting:1b} store result block -29999999 0 1601 Items[0].tag.cook.quality int 1 run scoreboard players get $temp_2 cook_data

#set output
tag @s add cook_temp
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cook{roasting:1b} run data modify storage cook:temp var set from block -29999999 0 1601 Items[0].tag.cook.base_name
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cook{roasting:1b} run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.roasted","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cook{roasting:1b} run data modify block -29999999 0 1601 Items[0].tag.display.Name set from block -29999999 0 1602 Text1
execute if score $temp_0 cook_data matches 1 if data block -29999999 0 1601 Items[0].tag.cook{roasting:1b} run data remove block -29999999 0 1601 Items[0].tag.du_smelt_id
execute if score $temp_0 cook_data matches 1 run loot spawn ~ ~1 ~ mine -29999999 0 1601 air{drop_contents:true}
tag @s remove cook_temp

#cancel if not recipe
execute if score $temp_0 cook_data matches 0 run scoreboard players set $crafting.temp_0 du_data 0

