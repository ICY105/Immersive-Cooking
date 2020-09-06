

execute store result score $in_1 cook_data run data get entity @s ArmorItems[3].tag.cook.quality

execute if score $in_0 cook_data matches 30 run data modify entity @s ArmorItems[3].tag.display.Lore prepend value '{"text":""}'
execute if score $in_0 cook_data matches 30 run data modify entity @s ArmorItems[3].tag.display.Lore prepend value '{"translate":"lore.cook.undercooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 30 run scoreboard players remove $in_1 cook_data 2
execute if score $in_0 cook_data matches 30 run function cook:block/smoking_rack/complete_recipe

execute if score $in_0 cook_data matches 35 run data modify entity @s ArmorItems[3].tag.display.Lore[0] set value '{"translate":"lore.cook.slightly_undercooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 35 run scoreboard players add $in_1 cook_data 1

execute if score $in_0 cook_data matches 40 run data modify entity @s ArmorItems[3].tag.display.Lore[0] set value '{"translate":"lore.cook.cooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 40 run scoreboard players add $in_1 cook_data 1

execute if score $in_0 cook_data matches 80 run scoreboard players add $in_1 cook_data 1
execute if score $in_0 cook_data matches 120 run scoreboard players add $in_1 cook_data 1

execute if score $in_0 cook_data matches 160 run data modify entity @s ArmorItems[3].tag.display.Lore[0] set value '{"translate":"lore.cook.overcooked","italic":false,"color":"gray"}'
execute if score $in_0 cook_data matches 160 run scoreboard players remove $in_1 cook_data 2

execute store result entity @s ArmorItems[3].tag.cook.quality int 1 run scoreboard players get $in_1 cook_data
scoreboard players set $temp_0 cook_data 0
