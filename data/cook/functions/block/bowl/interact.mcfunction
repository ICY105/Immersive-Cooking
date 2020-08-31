
#modify data
data merge entity @s {ItemRotation:0b}

#interaction
scoreboard players add @s cook_data 1
execute if entity @p[tag=cook_interact,nbt={foodLevel:20},gamemode=!creative] run scoreboard players set @s cook_data 0

execute store result score $temp_0 cook_data run data get entity @s Item.tag.item.tag.cook.food
execute if score $temp_0 cook_data matches 30.. run scoreboard players set $temp_0 cook_data 30

execute if score @s cook_data matches 1.. if score @s cook_data < $temp_0 cook_data run playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 1

execute if score @s cook_data >= $temp_0 cook_data run playsound minecraft:entity.player.burp player @a ~ ~ ~ 1 1
execute if score @s cook_data >= $temp_0 cook_data store result score $in_0 cook_data run data get entity @s Item.tag.item.tag.cook.food
execute if score @s cook_data >= $temp_0 cook_data store result score $in_1 cook_data run data get entity @s Item.tag.item.tag.cook.quality
execute if score @s cook_data >= $temp_0 cook_data as @p[tag=cook_interact] run function cook:player/custom_food
execute if score @s cook_data >= $temp_0 cook_data run kill @s
execute if score @s cook_data >= $temp_0 cook_data run give @p[tag=cook_interact] minecraft:bowl
execute if score @s cook_data >= $temp_0 cook_data run kill @e[tag=cook_bowl_liquid,distance=..0.05]
execute if score @s cook_data >= $temp_0 cook_data positioned ~ ~-1.9 ~ run kill @e[tag=cook_bowl_item,distance=..0.05]

#end loop
scoreboard players set $in_0 cook_data -1
