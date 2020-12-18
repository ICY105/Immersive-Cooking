
execute if entity @s[tag=!cook_has_liquid] run scoreboard players set @s cook_data 0
execute if entity @s[tag=cook_has_liquid] if predicate cook:evaporation_light run scoreboard players add @s cook_data 1

execute if score @s cook_data matches 60.. positioned ~ ~0.95 ~ as @e[tag=cook_evaporation_liquid,distance=..0.1] run function cook:block/evaporation_plate/complete_recipe
execute if score @s cook_data matches 60.. run tag @s remove cook_has_liquid
execute if score @s cook_data matches 60.. run scoreboard players set @s cook_data 0
