

#check item
data modify storage cook:temp obj set from entity @p[tag=cook_interact] SelectedItem
function cook:utils/convert_vanilla_ingrediant
data modify block -29999999 0 1601 Items[0].Count set value 1b

scoreboard players set $temp_0 cook_data -1
execute if data block -29999999 0 1601 Items[0].tag.cook{washing:1b} run scoreboard players set $temp_0 cook_data 0

#sound
execute if score $temp_0 cook_data matches 0 run playsound minecraft:entity.generic.splash block @a[distance=..16]

#modify item
execute if score $temp_0 cook_data matches 0 run data modify block -29999999 0 1601 Items[0].tag.cook.washing set value 0b

execute if score $temp_0 cook_data matches 0 store result score $temp_1 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.quality
scoreboard players add $temp_1 cook_data 1
execute if score $temp_0 cook_data matches 0 store result block -29999999 0 1601 Items[0].tag.cook.quality int 1 run scoreboard players get $temp_0 cook_data

#rename item and return
tag @s add cook_temp
execute if score $temp_0 cook_data matches 0 run data modify entity @s CustomName set from block -29999999 0 1601 Items[0].tag.cook.base_name
execute if score $temp_0 cook_data matches 0 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.washed","italic":false,"with":[{"selector":"@e[tag=cook_sink,tag=cook_temp]"}]}'
execute if score $temp_0 cook_data matches 0 run data modify block -29999999 0 1601 Items[0].tag.display.Name set from block -29999999 0 1602 Text1
execute if score $temp_0 cook_data matches 0 as @p[tag=cook_interact,distance=..8] run loot give @s mine -29999999 0 1601 air{drop_contents:true}
execute if score $temp_0 cook_data matches 0 as @p[tag=cook_interact,distance=..8] run function cook:utils/take_one_selected_item
tag @s remove cook_temp
