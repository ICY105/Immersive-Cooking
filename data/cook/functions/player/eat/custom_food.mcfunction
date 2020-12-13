
advancement revoke @s only cook:eat/eat_custom_food

#food level
execute store result score $in_0 cook_data run data get entity @s SelectedItem.tag.cook.food
execute store result score $in_1 cook_data run data get entity @s SelectedItem.tag.cook.quality
scoreboard players set $in_2 cook_data 1

#food function
function cook:player/custom_food
