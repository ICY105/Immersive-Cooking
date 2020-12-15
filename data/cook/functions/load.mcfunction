
scoreboard objectives add cook_data dummy
scoreboard objectives add cook_food dummy
scoreboard objectives add cook_coas minecraft.used:minecraft.carrot_on_a_stick

scoreboard players set $cook.ver load 00000006

execute unless score $incr_id cook_data matches 1.. run scoreboard players set $incr_id cook_data 1
