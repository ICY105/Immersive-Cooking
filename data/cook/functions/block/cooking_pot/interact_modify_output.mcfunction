
#grab values
execute store result score $temp_1 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.quality
execute store result score $temp_2 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.food

#modify quality based on cook time
execute if score $in_1 cook_data matches ..69 run scoreboard players remove $temp_1 cook_data 2
execute if score $in_1 cook_data matches 70..79 run scoreboard players add $temp_1 cook_data 0
execute if score $in_1 cook_data matches 80..96 run scoreboard players add $temp_1 cook_data 2
execute if score $in_1 cook_data matches 97..99 run scoreboard players add $temp_1 cook_data 3
execute if score $in_1 cook_data matches 100..109 run scoreboard players add $temp_1 cook_data 0
execute if score $in_1 cook_data matches 110..119 run scoreboard players remove $temp_1 cook_data 2
execute if score $in_1 cook_data matches 120.. run scoreboard players remove $temp_1 cook_data 4

#store changes
execute store result block -29999999 0 1601 Items[0].tag.cook.quality int 1 run scoreboard players get $temp_1 cook_data

#set lore display
execute if score $temp_1 cook_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"lore.cook.food_level","italic":false,"font":"cook:default","color":"white","with":[{"score":{"name":"$temp_2","objective":"cook_data"},"color":"gray"}]}]'
execute unless score $temp_1 cook_data matches 0 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"lore.cook.food_level_quality","italic":false,"font":"cook:default","color":"white","with":[{"score":{"name":"$temp_2","objective":"cook_data"},"color":"gray"},[{"score":{"name":"$temp_1","objective":"cook_data"},"color":"gray"},{"text":"0%","color":"gray"}]]}]'
execute if data block -29999999 0 1601 Items[0].tag.display.Lore run data modify block -29999999 0 1601 Items[0].tag.display.Lore[0] set from block -29999999 0 1602 Text1
execute unless data block -29999999 0 1601 Items[0].tag.display.Lore run data modify block -29999999 0 1601 Items[0].tag.display.Lore prepend from block -29999999 0 1602 Text1
