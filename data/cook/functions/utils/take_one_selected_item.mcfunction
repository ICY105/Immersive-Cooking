
execute if data entity @s[gamemode=!creative] SelectedItem{id:"minecraft:water_bucket"} run give @s minecraft:bucket
execute if data entity @s[gamemode=!creative] SelectedItem{id:"minecraft:lava_bucket"} run give @s minecraft:bucket
execute if data entity @s[gamemode=!creative] SelectedItem{id:"minecraft:milk_bucket"} run give @s minecraft:bucket
execute if data entity @s[gamemode=!creative] SelectedItem{id:"minecraft:potion"} run give @s minecraft:glass_bottle

function du:player/inv/get_equipment

execute store result score $utils.temp_0 cook_data run data get block -29999999 0 1601 Items[0].Count
scoreboard players remove $utils.temp_0 cook_data 1
execute store result block -29999999 0 1601 Items[0].Count byte 1 run scoreboard players get $utils.temp_0 cook_data

execute unless entity @s[gamemode=creative] run function du:player/inv/restore_equipment
