
#update UI 1
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]
replaceitem block -29999999 0 1601 container.1 minecraft:air
replaceitem block -29999999 0 1601 container.6 minecraft:air
replaceitem block -29999999 0 1601 container.10 minecraft:air
replaceitem block -29999999 0 1601 container.19 minecraft:air
replaceitem block -29999999 0 1601 container.24 minecraft:air
loot give @p mine -29999999 0 1601 minecraft:air{drop_contents:true}

replaceitem block ~ ~ ~ container.0 minecraft:air
replaceitem block ~ ~ ~ container.2 minecraft:air
replaceitem block ~ ~ ~ container.3 minecraft:air
replaceitem block ~ ~ ~ container.4 minecraft:air
replaceitem block ~ ~ ~ container.5 minecraft:air
replaceitem block ~ ~ ~ container.7 minecraft:air
replaceitem block ~ ~ ~ container.8 minecraft:air

replaceitem block ~ ~ ~ container.9 minecraft:air
replaceitem block ~ ~ ~ container.0 minecraft:air
replaceitem block ~ ~ ~ container.11 minecraft:air
replaceitem block ~ ~ ~ container.12 minecraft:air
replaceitem block ~ ~ ~ container.13 minecraft:air
replaceitem block ~ ~ ~ container.14 minecraft:air
replaceitem block ~ ~ ~ container.15 minecraft:air
replaceitem block ~ ~ ~ container.16 minecraft:air
replaceitem block ~ ~ ~ container.17 minecraft:air

replaceitem block ~ ~ ~ container.18 minecraft:air
replaceitem block ~ ~ ~ container.20 minecraft:air
replaceitem block ~ ~ ~ container.21 minecraft:air
replaceitem block ~ ~ ~ container.22 minecraft:air
replaceitem block ~ ~ ~ container.23 minecraft:air
replaceitem block ~ ~ ~ container.25 minecraft:air
replaceitem block ~ ~ ~ container.26 minecraft:air
replaceitem block ~ ~ ~ container.27 minecraft:air

replaceitem block ~ ~ ~ container.14 minecraft:firework_star{du_gui:1b,HideFlags:32,CustomModelData:6429104,display:{Name:'{"translate":"lore.cook.empty","italic":false}'},Explosion:{Colors:[I;0]}}

#liquid IO
execute if entity @s[tag=cook_open] if score @s cook_food matches 1.. run particle minecraft:dust 1 1 1 1 ^ ^-0.3 ^1 0 0.1 0 0 10
execute if entity @s[tag=cook_open] if score @s cook_food matches 1.. run scoreboard players remove @s cook_food 1
execute if entity @s[tag=cook_open] if score @s cook_food matches 0 run tag @s remove cook_open

execute unless score @s cook_food matches 7.. if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:potion"}] unless data block ~ ~ ~ Items[{Slot:24b}] run function cook:block/fermenter/add_liquid
execute unless score @s cook_food matches 7.. if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:water_bucket"}] unless data block ~ ~ ~ Items[{Slot:24b}] run function cook:block/fermenter/add_liquid
execute unless score @s cook_food matches 7.. if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:milk_bucket"}] unless data block ~ ~ ~ Items[{Slot:24b}] run function cook:block/fermenter/add_liquid
execute unless score @s cook_food matches 7.. if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:honey_bottle"}] unless data block ~ ~ ~ Items[{Slot:24b}] run function cook:block/fermenter/add_liquid
execute if score @s cook_food matches 3.. if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:glass_bottle"}] unless data block ~ ~ ~ Items[{Slot:24b}] run function cook:block/fermenter/extract_liquid

#check recipes
tag @s remove cook_active
execute if score @s cook_food matches 1.. run data modify storage cook:temp list set value []
execute if score @s cook_food matches 1.. run data modify storage cook:temp list append from block ~ ~ ~ Items[{Slot:1b}]
execute if score @s cook_food matches 1.. run data modify storage cook:temp list append from block ~ ~ ~ Items[{Slot:10b}]
execute if score @s cook_food matches 1.. run data modify storage cook:temp list append from block ~ ~ ~ Items[{Slot:19b}]
execute if score @s cook_food matches 1.. if score @s cook_data matches ..599 if data storage cook:temp list[0] run function cook:block/fermenter/check_recipes 
execute if score @s cook_food matches 1.. if score @s cook_data matches 600.. if data storage cook:temp list[0] run function cook:block/fermenter/finish_recipes

execute if entity @s[tag=cook_active] run scoreboard players add @s cook_data 1
execute if entity @s[tag=!cook_active] run scoreboard players set @s cook_data 0

#update UI 2
scoreboard players set $temp_0 cook_data 6429104
scoreboard players operation $temp_0 cook_data += @s cook_food
execute store result block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData int 1 run scoreboard players get $temp_0 cook_data
execute if score @s cook_food matches 1.. run data modify block ~ ~ ~ Items[{Slot:14b}].tag.Explosion.Colors[0] set from entity @s Item.tag.liquid_item.tag.CustomPotionColor
execute if score @s cook_food matches 1.. if data entity @s Item.tag.liquid_item.tag.display.Name run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set from entity @s Item.tag.liquid_item.tag.display.Name
execute if score @s cook_food matches 1.. unless data entity @s Item.tag.liquid_item.tag.display.Name run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Name set from entity @s Item.tag.liquid_item.tag.cook.base_name

execute if entity @s[tag=!cook_active] run replaceitem block ~ ~ ~ container.12 minecraft:firework_star{du_gui:1b,CustomModelData:6429114,display:{Name:'""'}}
execute if entity @s[tag=cook_active] run replaceitem block ~ ~ ~ container.12 minecraft:firework_star{du_gui:1b,CustomModelData:6429115,display:{Name:'""'}}

#break
execute unless block ~ ~ ~ minecraft:barrel run kill @s

