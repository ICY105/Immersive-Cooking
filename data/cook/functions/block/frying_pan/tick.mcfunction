
particle minecraft:dust 1 1 1 0.75 ~ ~0.12 ~ 0.12 0 0.1 0 3

execute if score @s cook_data matches ..120 run scoreboard players add @s cook_data 1

execute if score @s cook_data matches 60 run tag @s add cook_done
execute if score @s cook_data matches 60 positioned ~ ~-0.56 ~ as @e[tag=cook_pan_item,distance=..0.25] at @s run function cook:block/frying_pan/add_cooked_modifier

execute if score @s cook_data matches 1 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc000","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 10 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc001","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 20 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc002","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 30 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc003","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 40 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc004","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 50 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc005","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 60 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc006","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 70 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc007","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 80 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc008","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 100 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc008","color":"gray","font":"cook:default"}]'
execute if score @s cook_data matches 110 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc008","color":"dark_gray","font":"cook:default"}]'
execute if score @s cook_data matches 120 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc008","color":"black","font":"cook:default"}]'

#
execute if score @s cook_food matches 20.. run scoreboard players set @s cook_food 20
execute unless score @s cook_food matches ..-21 run scoreboard players remove @s cook_food 1
