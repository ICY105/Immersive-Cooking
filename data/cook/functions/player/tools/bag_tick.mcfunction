
scoreboard players operation $in_0 cook_data = @s du_uuid
execute store result score $in_1 cook_data run data get entity @s SelectedItemSlot
execute store result score $in_2 cook_data run data get entity @s SelectedItem.tag.AttributeModifiers[0].UUID[0]
execute store result score $in_3 cook_data if predicate du:entity/is_sneaking

execute as @e[tag=cook_bag_interface] if score @s du_data = $in_0 cook_data run function cook:player/tools/bag_tick_2

execute if entity @s[tag=cook_open_bag] if score $out_0 cook_data matches 1 run function cook:player/tools/close_bag
execute if entity @s[tag=cook_open_bag,tag=du_moving] run function cook:player/tools/close_bag

execute if entity @s[tag=cook_open_bag] run function du:player/inv/get_equipment
execute if entity @s[tag=cook_open_bag] run data modify block -29999999 0 1601 Items[0].tag.items set from storage cook:temp list
execute if entity @s[tag=cook_open_bag] run function du:player/inv/restore_equipment
