
execute if entity @s[tag=cook_has_item] if score @s cook_data matches ..120 run scoreboard players add @s cook_data 1
scoreboard players operation $in_0 cook_data = @s cook_data

#change item
execute if entity @s[tag=cook_rot_1] positioned ~-0.28 ~-2.1 ~ as @e[tag=cook_smoking_item,distance=..0.05] at @s run function cook:block/smoking_rack/tick_2
execute if entity @s[tag=cook_rot_2] positioned ~ ~-2.1 ~0.28 as @e[tag=cook_smoking_item,distance=..0.05] at @s run function cook:block/smoking_rack/tick_2

#update timer
execute if score @s cook_data matches 1 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc000","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 5 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc001","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 10 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc002","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 15 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc003","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 20 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc004","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 25 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc005","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 30 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc006","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 35 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc007","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 40 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc008","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 60 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc008","color":"gray","font":"cook:default"}]'
execute if score @s cook_data matches 65 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc008","color":"dark_gray","font":"cook:default"}]'
execute if score @s cook_data matches 70 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc008","color":"black","font":"cook:default"}]'
