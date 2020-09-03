
execute if predicate du:entity/is_sneaking if data entity @s SelectedItem.tag{bowl:2b} run function cook:player/place_block/bowl
execute if predicate du:entity/is_sneaking if data entity @s SelectedItem.tag{plate:2b} run function cook:player/place_block/plate
execute if predicate du:entity/is_sneaking if data entity @s SelectedItem.tag.cook unless data entity @s SelectedItem.tag{bowl:2b} unless data entity @s SelectedItem.tag{plate:2b} run function cook:player/interact/interact

execute unless predicate du:entity/is_sneaking if data entity @s[nbt=!{foodLevel:20},gamemode=!creative] SelectedItem.tag.cook run function cook:player/custom_eat
execute unless predicate du:entity/is_sneaking if data entity @s[gamemode=creative] SelectedItem.tag.cook run function cook:player/custom_eat

execute if predicate du:entity/is_sneaking if data entity @s SelectedItem.tag{saw:1b} run function cook:block/break/find_block
