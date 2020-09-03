
execute store result score $temp_0 cook_data run data get entity @s foodSaturationLevl
execute if score $temp_0 cook_data matches ..18 run scoreboard players remove @s cook_food 4
execute if score $temp_0 cook_data matches ..18 run effect give @s minecraft:saturation 1 0 true
