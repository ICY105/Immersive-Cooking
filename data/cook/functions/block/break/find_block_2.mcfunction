
execute unless block ~ ~ ~ #cook:raytrace_tools align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=item_frame,distance=..0.532] at @s if data entity @s Item.tag.cook_id run function cook:block/break/break_block

scoreboard players remove $in_0 cook_data 1
execute if score $in_0 cook_data matches 1.. if block ~ ~ ~ #cook:raytrace_tools positioned ^ ^ ^0.05 run function cook:block/break/find_block_2
