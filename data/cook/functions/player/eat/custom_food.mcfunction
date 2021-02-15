
advancement revoke @s only cook:eat/eat_custom_food

#food level
scoreboard players set $in_0 cook_data 0
scoreboard players set $in_1 cook_data 0
scoreboard players set $in_2 cook_data 0
scoreboard players set $in_3 cook_data 0

execute if data entity @s Inventory[{Slot:-106b}].tag.cook store result score $in_0 cook_data run data get entity @s Inventory[{Slot:-106b}].tag.cook.food
execute if data entity @s Inventory[{Slot:-106b}].tag.cook store result score $in_1 cook_data run data get entity @s Inventory[{Slot:-106b}].tag.cook.quality
execute if data entity @s Inventory[{Slot:-106b}].tag.cook store result score $in_2 cook_data run data get entity @s Inventory[{Slot:-106b}].tag.cook.redux[0]
execute if data entity @s Inventory[{Slot:-106b}].tag.cook store result score $in_3 cook_data run data get entity @s Inventory[{Slot:-106b}].tag.cook.redux[1]

execute if data entity @s SelectedItem.tag.cook store result score $in_0 cook_data run data get entity @s SelectedItem.tag.cook.food
execute if data entity @s SelectedItem.tag.cook store result score $in_1 cook_data run data get entity @s SelectedItem.tag.cook.quality
execute if data entity @s SelectedItem.tag.cook store result score $in_2 cook_data run data get entity @s SelectedItem.tag.cook.redux[0]
execute if data entity @s SelectedItem.tag.cook store result score $in_3 cook_data run data get entity @s SelectedItem.tag.cook.redux[1]

#food function
function cook:player/custom_food
