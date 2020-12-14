
#close if selected slot changes
scoreboard players set $out_0 cook_data 0
execute unless score @s cook_data = $in_1 cook_data run scoreboard players set $out_0 cook_data 1
execute unless score @s cook_food = $in_2 cook_data run scoreboard players set $out_0 cook_data 1

#move horse behind if not sneaking
execute if score $in_3 cook_data matches 0 run tp @s ~ ~-6 ~
execute if score $in_3 cook_data matches 1 run tp @s ~ ~0.5 ~

#modify inv
data remove block -29999999 0 1601 Items
data modify storage cook:temp list set value []
data modify storage cook:temp list set from entity @s Items

execute unless data storage cook:temp list[{Slot:2b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:2b}]
execute unless data storage cook:temp list[{Slot:2b}].tag.cook run data remove storage cook:temp list[{Slot:2b}]
execute unless data storage cook:temp list[{Slot:2b}].tag.cook run replaceitem entity @s horse.0 minecraft:air

execute unless data storage cook:temp list[{Slot:3b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:3b}]
execute unless data storage cook:temp list[{Slot:3b}].tag.cook run data remove storage cook:temp list[{Slot:3b}]
execute unless data storage cook:temp list[{Slot:3b}].tag.cook run replaceitem entity @s horse.1 minecraft:air

execute unless data storage cook:temp list[{Slot:4b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:4b}]
execute unless data storage cook:temp list[{Slot:4b}].tag.cook run data remove storage cook:temp list[{Slot:4b}]
execute unless data storage cook:temp list[{Slot:4b}].tag.cook run replaceitem entity @s horse.2 minecraft:air

execute unless data storage cook:temp list[{Slot:5b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:5b}]
execute unless data storage cook:temp list[{Slot:5b}].tag.cook run data remove storage cook:temp list[{Slot:5b}]
execute unless data storage cook:temp list[{Slot:5b}].tag.cook run replaceitem entity @s horse.3 minecraft:air

execute unless data storage cook:temp list[{Slot:6b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:6b}]
execute unless data storage cook:temp list[{Slot:6b}].tag.cook run data remove storage cook:temp list[{Slot:6b}]
execute unless data storage cook:temp list[{Slot:6b}].tag.cook run replaceitem entity @s horse.4 minecraft:air


execute unless data storage cook:temp list[{Slot:7b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:7b}]
execute unless data storage cook:temp list[{Slot:7b}].tag.cook run data remove storage cook:temp list[{Slot:7b}]
execute unless data storage cook:temp list[{Slot:7b}].tag.cook run replaceitem entity @s horse.5 minecraft:air

execute unless data storage cook:temp list[{Slot:8b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:8b}]
execute unless data storage cook:temp list[{Slot:8b}].tag.cook run data remove storage cook:temp list[{Slot:8b}]
execute unless data storage cook:temp list[{Slot:8b}].tag.cook run replaceitem entity @s horse.6 minecraft:air

execute unless data storage cook:temp list[{Slot:9b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:9b}]
execute unless data storage cook:temp list[{Slot:9b}].tag.cook run data remove storage cook:temp list[{Slot:9b}]
execute unless data storage cook:temp list[{Slot:9b}].tag.cook run replaceitem entity @s horse.7 minecraft:air

execute unless data storage cook:temp list[{Slot:10b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:10b}]
execute unless data storage cook:temp list[{Slot:10b}].tag.cook run data remove storage cook:temp list[{Slot:10b}]
execute unless data storage cook:temp list[{Slot:10b}].tag.cook run replaceitem entity @s horse.8 minecraft:air

execute unless data storage cook:temp list[{Slot:11b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:11b}]
execute unless data storage cook:temp list[{Slot:11b}].tag.cook run data remove storage cook:temp list[{Slot:11b}]
execute unless data storage cook:temp list[{Slot:11b}].tag.cook run replaceitem entity @s horse.9 minecraft:air


execute unless data storage cook:temp list[{Slot:12b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:12b}]
execute unless data storage cook:temp list[{Slot:12b}].tag.cook run data remove storage cook:temp list[{Slot:12b}]
execute unless data storage cook:temp list[{Slot:12b}].tag.cook run replaceitem entity @s horse.10 minecraft:air

execute unless data storage cook:temp list[{Slot:13b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:13b}]
execute unless data storage cook:temp list[{Slot:13b}].tag.cook run data remove storage cook:temp list[{Slot:13b}]
execute unless data storage cook:temp list[{Slot:13b}].tag.cook run replaceitem entity @s horse.11 minecraft:air

execute unless data storage cook:temp list[{Slot:14b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:14b}]
execute unless data storage cook:temp list[{Slot:14b}].tag.cook run data remove storage cook:temp list[{Slot:14b}]
execute unless data storage cook:temp list[{Slot:14b}].tag.cook run replaceitem entity @s horse.12 minecraft:air

execute unless data storage cook:temp list[{Slot:15b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:15b}]
execute unless data storage cook:temp list[{Slot:15b}].tag.cook run data remove storage cook:temp list[{Slot:15b}]
execute unless data storage cook:temp list[{Slot:15b}].tag.cook run replaceitem entity @s horse.13 minecraft:air

execute unless data storage cook:temp list[{Slot:16b}].tag.cook run data modify block -29999999 0 1601 Items append from storage cook:temp list[{Slot:16b}]
execute unless data storage cook:temp list[{Slot:16b}].tag.cook run data remove storage cook:temp list[{Slot:16b}]
execute unless data storage cook:temp list[{Slot:16b}].tag.cook run replaceitem entity @s horse.14 minecraft:air


execute if score $out_0 cook_data matches 0 run loot give @p[tag=cook_open_bag] mine -29999999 0 1601 minecraft:air{drop_contents:true}
