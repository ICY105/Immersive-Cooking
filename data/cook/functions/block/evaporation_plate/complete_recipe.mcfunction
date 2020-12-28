
data remove block -29999999 0 1601 Items

execute if data entity @s Item.tag.liquid_item.tag.cook{water:1b} run loot insert -29999999 0 1601 loot cook:food/seasoning/salt
execute if data entity @s Item.tag.liquid_item.tag.cook{curdled_milk:1b} run loot insert -29999999 0 1601 loot cook:food/protein/cheese
execute if data entity @s Item.tag.liquid_item.tag.cook{ferment:1b} run loot insert -29999999 0 1601 loot cook:food/seasoning/yeast
execute if data entity @s Item.tag.liquid_item.tag.cook{chocolate:1b} run loot insert -29999999 0 1601 loot cook:food/seasoning/chocolate

execute if data block -29999999 0 1601 Items[0] positioned ~ ~-0.95 ~ run tag @e[tag=cook_evaporation,distance=..0.1] add cook_has_item
execute if data block -29999999 0 1601 Items[0] run summon armor_stand ~ ~-1.65 ~-0.1 {Tags:["cook_evaporation_item","cook_new"],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,DisabledSlots:4079166,Pose:{RightArm:[0f,-90f,0f]}}
execute if data block -29999999 0 1601 Items[0] run data modify entity @e[tag=cook_new,limit=1] HandItems[0] set from block -29999999 0 1601 Items[0]
execute if data block -29999999 0 1601 Items[0] run tag @e[tag=cook_new] remove cook_new

kill @s
