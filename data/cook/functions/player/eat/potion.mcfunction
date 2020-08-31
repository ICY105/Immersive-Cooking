
advancement revoke @s only cook:eat/potion

#food level
execute store result score $in_0 cook_data run data get entity @s SelectedItem.tag.cook.food
execute store result score $in_1 cook_data run data get entity @s SelectedItem.tag.cook.quality

#food function
function cook:player/custom_food
