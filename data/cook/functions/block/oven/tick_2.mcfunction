

execute store result score $in_1 cook_data run data get entity @s HandItems[0].tag.cook.quality

execute if score $in_0 cook_data matches 60 run data modify entity @s HandItems[0].tag.display.Lore prepend value '{"text":""}'
execute if score $in_0 cook_data matches 60 run data modify entity @s HandItems[0].tag.display.Lore prepend value '{"translate":"lore.cook.undercooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 60 run scoreboard players remove $in_1 cook_data 3
execute if score $in_0 cook_data matches 60 run function cook:block/oven/complete_recipe

execute if score $in_0 cook_data matches 70 run data modify entity @s HandItems[0].tag.display.Lore[0] set value '{"translate":"lore.cook.slightly_undercooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 70 run scoreboard players add $in_1 cook_data 2

execute if score $in_0 cook_data matches 80 run data modify entity @s HandItems[0].tag.display.Lore[0] set value '{"translate":"lore.cook.cooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 80 run scoreboard players add $in_1 cook_data 1
execute if score $in_0 cook_data matches 87 run data modify entity @s HandItems[0].tag.display.Lore[0] set value '{"translate":"lore.cook.perfectly_cooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 87 run scoreboard players add $in_1 cook_data 1
execute if score $in_0 cook_data matches 90 run data modify entity @s HandItems[0].tag.display.Lore[0] set value '{"translate":"lore.cook.cooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 90 run scoreboard players remove $in_1 cook_data 1

execute if score $in_0 cook_data matches 100 run data modify entity @s HandItems[0].tag.display.Lore[0] set value '{"translate":"lore.cook.slightly_overcooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 100 run scoreboard players remove $in_1 cook_data 1

execute if score $in_0 cook_data matches 110 run data modify entity @s HandItems[0].tag.display.Lore[0] set value '{"translate":"lore.cook.overcooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 110 run scoreboard players remove $in_1 cook_data 1

execute if score $in_0 cook_data matches 120 run data modify entity @s HandItems[0].tag.display.Lore[0] set value '{"translate":"lore.cook.burnt","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 120 run scoreboard players remove $in_1 cook_data 1

execute store result entity @s HandItems[0].tag.cook.quality int 1 run scoreboard players get $in_1 cook_data
scoreboard players set $temp_0 cook_data 0
