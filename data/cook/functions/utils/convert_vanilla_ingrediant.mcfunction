
scoreboard players set $utils.temp_0 cook_data 0
data remove block -29999999 0 1601 Items

# Cook Item
execute if data storage cook:temp obj.tag.cook run scoreboard players set $utils.temp_0 cook_data 1
execute if data storage cook:temp obj.tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp obj

# Check if vanilla item
execute if score $utils.temp_0 cook_data matches 0 run function cook:utils/convert_vanilla_ingrediant_2
