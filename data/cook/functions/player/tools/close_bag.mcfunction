
scoreboard players operation $in_0 cook_data = @s du_uuid

execute as @e[tag=cook_bag_interface] if score @s du_data = $in_0 cook_data run tp @s ~ -300 ~
execute as @e[tag=cook_bag_interface] if score @s du_data = $in_0 cook_data run kill @s

tag @s remove cook_open_bag
