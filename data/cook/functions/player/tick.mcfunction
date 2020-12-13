
#food replace
execute if entity @s[tag=cook_replace_food] run function cook:player/replace_food

#bonus saturation
execute if score $base.timer_20 du_data matches 0 if score @s cook_food matches 3.. run function cook:player/bonus_saturation

#place plate/bowl
execute if entity @s[tag=du_right_click] run function cook:player/use_item
execute if score @s cook_data matches 1.. run scoreboard players remove @s cook_data 1

#recipes
execute if entity @s[tag=cook_crafted] run function cook:player/craft/craft

#manual
execute if score $base.timer_20 du_data matches 10 if entity @s[tag=!cook_has_manual] run function give:items/cooking_manual
execute if score $base.timer_20 du_data matches 10 if data entity @s Inventory[{tag:{cook_manual:1b}}] run tag @s add cook_has_manual
