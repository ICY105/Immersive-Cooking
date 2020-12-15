
tag @s add cook_open_bag

scoreboard players operation $in_0 cook_data = @s du_uuid
execute store result score $in_1 cook_data run data get entity @s SelectedItemSlot
execute store result score $in_2 cook_data run data get entity @s SelectedItem.tag.AttributeModifiers[0].UUID[0]
data modify storage cook:temp list set from entity @s SelectedItem.tag.items

summon donkey ~ ~-2 ~ {Tags:["cook_bag_interface","cook_new"],CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uc025","font":"cook:default","color":"white"}]},{"translate":"offset.-176","font":"space:default","with":[{"translate":"item.cook.food_bag","font":"minecraft:default"}]}]',NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tame:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2000000000,ShowParticles:0b}]}

execute as @e[tag=cook_new] run scoreboard players operation @s du_data = $in_0 cook_data
execute as @e[tag=cook_new] run scoreboard players operation @s cook_data = $in_1 cook_data
execute as @e[tag=cook_new] run scoreboard players operation @s cook_food = $in_2 cook_data
execute as @e[tag=cook_new] run data modify entity @s Items set from storage cook:temp list
team join du_nopush @e[tag=cook_new]
tag @e[tag=cook_new] remove cook_new
