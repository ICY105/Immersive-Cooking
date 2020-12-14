
advancement revoke @s only cook:eat/eat_custom_food

#food level
execute store result score $in_0 cook_data run data get entity @s SelectedItem.tag.cook.food
execute store result score $in_1 cook_data run data get entity @s SelectedItem.tag.cook.quality
execute store result score $in_2 cook_data run data get entity @s SelectedItem.tag.cook.redux[0]
execute store result score $in_3 cook_data run data get entity @s SelectedItem.tag.cook.redux[1]

#food function
function cook:player/custom_food
