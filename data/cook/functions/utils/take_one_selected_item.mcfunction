
execute if data entity @s[gamemode=!creative] SelectedItem{id:"minecraft:water_bucket"} run give @s minecraft:bucket
execute if data entity @s[gamemode=!creative] SelectedItem{id:"minecraft:lava_bucket"} run give @s minecraft:bucket
execute if data entity @s[gamemode=!creative] SelectedItem{id:"minecraft:milk_bucket"} run give @s minecraft:bucket

function du:player/inv/get_equipment

execute store result score $temp_0 cook_data run data get block -29999999 0 1601 Items[0].Count
scoreboard players remove $temp_0 cook_data 1
execute store result block -29999999 0 1601 Items[0].Count byte 1 run scoreboard players get $temp_0 cook_data

execute unless entity @s[gamemode=creative] run function du:player/inv/restore_equipment
