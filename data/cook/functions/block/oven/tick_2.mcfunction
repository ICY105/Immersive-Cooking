

execute store result score $in_1 cook_data run data get entity @s HandItems[0].tag.cook.quality

execute if score $in_0 cook_data matches 30 run data modify entity @s HandItems[0].tag.display.Lore append value '{"text":""}'
execute if score $in_0 cook_data matches 30 run data modify entity @s HandItems[0].tag.display.Lore append value '{"translate":"lore.cook.undercooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 30 run scoreboard players remove $in_1 cook_data 3
execute if score $in_0 cook_data matches 30 run function cook:block/oven/complete_recipe

execute if score $in_0 cook_data matches 35 run data modify entity @s HandItems[0].tag.display.Lore[-1] set value '{"translate":"lore.cook.slightly_undercooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 35 run scoreboard players add $in_1 cook_data 2

execute if score $in_0 cook_data matches 40 run data modify entity @s HandItems[0].tag.display.Lore[-1] set value '{"translate":"lore.cook.cooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 40 run scoreboard players add $in_1 cook_data 1
execute if score $in_0 cook_data matches 47 run data modify entity @s HandItems[0].tag.display.Lore[-1] set value '{"translate":"lore.cook.perfectly_cooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 47 run scoreboard players add $in_1 cook_data 1
execute if score $in_0 cook_data matches 50 run data modify entity @s HandItems[0].tag.display.Lore[-1] set value '{"translate":"lore.cook.cooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 50 run scoreboard players remove $in_1 cook_data 1

execute if score $in_0 cook_data matches 60 run data modify entity @s HandItems[0].tag.display.Lore[-1] set value '{"translate":"lore.cook.slightly_overcooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 60 run scoreboard players remove $in_1 cook_data 1

execute if score $in_0 cook_data matches 70 run data modify entity @s HandItems[0].tag.display.Lore[-1] set value '{"translate":"lore.cook.overcooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 70 run scoreboard players remove $in_1 cook_data 1

execute if score $in_0 cook_data matches 80 run data modify entity @s HandItems[0].tag.display.Lore[-1] set value '{"translate":"lore.cook.burnt","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 80 run scoreboard players remove $in_1 cook_data 1

execute store result entity @s HandItems[0].tag.cook.quality int 1 run scoreboard players get $in_1 cook_data
scoreboard players set $temp_0 cook_data 0

#modify food level
execute store result score $temp_7 cook_data run data get entity @s HandItems[0].tag.cook.food
execute store result score $temp_8 cook_data run data get entity @s HandItems[0].tag.cook.quality
execute if score $temp_8 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"score":{"name":"$temp_7","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"\\uc009","italic":false,"font":"cook:default","color":"white"}]'
execute unless score $temp_8 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"score":{"name":"$temp_7","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"\\uc009","italic":false,"font":"cook:default","color":"white"},{"score":{"name":"$temp_8","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"0%"},{"text":"\\uc00a","italic":false,"font":"cook:default","color":"white"}]'
data modify entity @s HandItems[0].tag.display.Lore[0] set from block -29999999 0 1602 Text2
