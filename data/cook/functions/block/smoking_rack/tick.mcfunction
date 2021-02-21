
execute if entity @s[tag=cook_has_item] if score @s cook_data matches ..160 run scoreboard players add @s cook_data 1
scoreboard players operation $in_0 cook_data = @s cook_data

#change item
execute if entity @s[tag=cook_rot_1] positioned ~-0.28 ~-2.1 ~ as @e[tag=cook_smoking_item,distance=..0.2] at @s run function cook:block/smoking_rack/tick_2
execute if entity @s[tag=cook_rot_2] positioned ~ ~-2.1 ~0.28 as @e[tag=cook_smoking_item,distance=..0.2] at @s run function cook:block/smoking_rack/tick_2

#update timer
execute if score @s cook_data matches 1 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc000","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 10 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc001","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 20 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc002","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 30 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc00a","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 75 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc00a\\uc00a","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 150 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc00a\\uc00a\\uc00a","color":"white","font":"cook:default"}]'
execute if score @s cook_data matches 225 run data modify entity @s Item.tag.display.Name set value '[{"text":"\\uc00a\\uc00a\\uc00a\\uc00a","color":"white","font":"cook:default"}]'
