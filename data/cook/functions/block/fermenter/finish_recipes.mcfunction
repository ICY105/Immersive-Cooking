
#milk + vinegar = curdled milk

#berries + yeast = wine
#juice + yeast = cider
#honey + yeast = mead
#water + yeast + rice = sake
#water + yeast + grain = beer
#any alcohol + yeast = vinegar

tag @s remove cook_active

### recipes
scoreboard players set $temp_0 cook_data 0

#curdled milk
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{milk:1b} if data storage cook:temp list[{tag:{cook:{vinegar:1b}}}] run scoreboard players set $temp_0 cook_data 1
execute if score $temp_0 cook_data matches 1 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {food:2,quality:-1,milk:0b,curdled_milk:1b,base_name:'{"translate":"item.cook.curdled_milk","italic":false}'}
execute if score $temp_0 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.curdled_milk","italic":false}]'

#vinegar
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{alcohol:1b} if data storage cook:temp list[{tag:{cook:{yeast:1b}}}] run scoreboard players set $temp_0 cook_data 2
execute if score $temp_0 cook_data matches 2 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {type:6b,food:2,quality:2,ferment:0b,alcohol:0b,beer:0b,sake:0b,wine:0b,mead:0b,cider:0b,vinegar:1b,color:{red:285,green:285,blue:285}}
execute if score $temp_0 cook_data matches 2 run data modify storage cook:temp var set from entity @s Item.tag.liquid_item.tag.cook.base_name
execute if score $temp_0 cook_data matches 2 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.vinegar","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

#wine
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{berries:1b,ferment:1b} if data storage cook:temp list[{tag:{cook:{yeast:1b}}}] run scoreboard players set $temp_0 cook_data 3
execute if score $temp_0 cook_data matches 3 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {food:5,quality:3,ferment:0b,alcohol:1b,wine:1b}
execute if score $temp_0 cook_data matches 3 run data modify storage cook:temp var set from entity @s Item.tag.liquid_item.tag.cook.base_name
execute if score $temp_0 cook_data matches 3 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.wine","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

#mead
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{honey:1b,ferment:1b} if data storage cook:temp list[{tag:{cook:{yeast:1b}}}] run scoreboard players set $temp_0 cook_data 4
execute if score $temp_0 cook_data matches 4 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {food:2,quality:4,ferment:0b,mead:1b}
execute if score $temp_0 cook_data matches 4 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.mead","italic":false}]'

#cider
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{ferment:1b} if data storage cook:temp list[{tag:{cook:{yeast:1b}}}] run scoreboard players set $temp_0 cook_data 5
execute if score $temp_0 cook_data matches 5 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {food:4,quality:2,ferment:0b,alcohol:1b,cider:1b}
execute if score $temp_0 cook_data matches 5 run data modify storage cook:temp var set from entity @s Item.tag.liquid_item.tag.cook.base_name
execute if score $temp_0 cook_data matches 5 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.cider","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

#sake
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{water:1b} if data storage cook:temp list[{tag:{cook:{yeast:1b}}}] if data storage cook:temp list[{tag:{cook:{rice:1b}}}] run scoreboard players set $temp_0 cook_data 6
execute if score $temp_0 cook_data matches 6 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {food:5,quality:3,ferment:0b,alcohol:1b,sake:1b}
execute if score $temp_0 cook_data matches 6 if data storage cook:temp list[2].tag.cook{rice:1b} run data modify storage cook:temp var set from storage cook:temp list[2].tag.cook.base_name
execute if score $temp_0 cook_data matches 6 if data storage cook:temp list[2].tag.cook{rice:1b} run data modify entity @s Item.tag.liquid_item.tag.cook.color set from storage cook:temp list[2].tag.cook.color
execute if score $temp_0 cook_data matches 6 if data storage cook:temp list[1].tag.cook{rice:1b} run data modify storage cook:temp var set from storage cook:temp list[1].tag.cook.base_name
execute if score $temp_0 cook_data matches 6 if data storage cook:temp list[1].tag.cook{rice:1b} run data modify entity @s Item.tag.liquid_item.tag.cook.color set from storage cook:temp list[1].tag.cook.color
execute if score $temp_0 cook_data matches 6 if data storage cook:temp list[0].tag.cook{rice:1b} run data modify storage cook:temp var set from storage cook:temp list[0].tag.cook.base_name
execute if score $temp_0 cook_data matches 6 if data storage cook:temp list[0].tag.cook{rice:1b} run data modify entity @s Item.tag.liquid_item.tag.cook.color set from storage cook:temp list[0].tag.cook.color
execute if score $temp_0 cook_data matches 6 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.sake","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

#beer
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{water:1b} if data storage cook:temp list[{tag:{cook:{yeast:1b}}}] if data storage cook:temp list[{tag:{cook:{flour:1b}}}] run scoreboard players set $temp_0 cook_data 7
execute if score $temp_0 cook_data matches 7 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {food:6,quality:0,ferment:0b,alcohol:1b,beer:1b}
execute if score $temp_0 cook_data matches 7 if data storage cook:temp list[2].tag.cook{flour:1b} run data modify storage cook:temp var set from storage cook:temp list[2].tag.cook.base_name
execute if score $temp_0 cook_data matches 7 if data storage cook:temp list[2].tag.cook{flour:1b} run data modify entity @s Item.tag.liquid_item.tag.cook.color set from storage cook:temp list[2].tag.cook.color
execute if score $temp_0 cook_data matches 7 if data storage cook:temp list[1].tag.cook{flour:1b} run data modify storage cook:temp var set from storage cook:temp list[1].tag.cook.base_name
execute if score $temp_0 cook_data matches 7 if data storage cook:temp list[1].tag.cook{flour:1b} run data modify entity @s Item.tag.liquid_item.tag.cook.color set from storage cook:temp list[1].tag.cook.color
execute if score $temp_0 cook_data matches 7 if data storage cook:temp list[0].tag.cook{flour:1b} run data modify storage cook:temp var set from storage cook:temp list[0].tag.cook.base_name
execute if score $temp_0 cook_data matches 7 if data storage cook:temp list[0].tag.cook{flour:1b} run data modify entity @s Item.tag.liquid_item.tag.cook.color set from storage cook:temp list[0].tag.cook.color
execute if score $temp_0 cook_data matches 7 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.beer","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

#coffee
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{water:1b} if data storage cook:temp list[{tag:{cook:{coffee:1b}}}] run scoreboard players set $temp_0 cook_data 8
execute if score $temp_0 cook_data matches 8 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {food:4,quality:2,water:0b,base_name:'{"translate":"item.cook.coffee","italic":false}',color:{red:38,green:26,blue:17}}
execute if score $temp_0 cook_data matches 8 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.coffee","italic":false}]'

#tea
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{water:1b} if data storage cook:temp list[{tag:{cook:{tea:1b}}}] run scoreboard players set $temp_0 cook_data 9
execute if score $temp_0 cook_data matches 9 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {food:1,quality:5,water:0b,base_name:'{"translate":"item.cook.tea","italic":false}',color:{red:0,green:139,blue:0}}
execute if score $temp_0 cook_data matches 9 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.tea","italic":false}]'

#chocolate lacquer
execute if score $temp_0 cook_data matches 0 if data entity @s Item.tag.liquid_item.tag.cook{milk:1b} if data storage cook:temp list[{tag:{cook:{cocoa:1b}}}] if data storage cook:temp list[{tag:{cook:{sugar:1b}}}] run scoreboard players set $temp_0 cook_data 10
execute if score $temp_0 cook_data matches 10 run data modify entity @s Item.tag.liquid_item.tag.cook merge value {food:3,quality:3,cocoa:0b,chocolate:1b,base_name:'{"translate":"item.cook.chocolate_laquer","italic":false}',color:{red:58,green:14,blue:0}}
execute if score $temp_0 cook_data matches 10 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.chocolate_laquer","italic":false}]'

### change item data

#store food/quality to lore
execute store result score $temp_0 cook_data run data get entity @s Item.tag.liquid_item.tag.cook.food
execute store result score $temp_1 cook_data run data get entity @s Item.tag.liquid_item.tag.cook.quality
execute if score $temp_1 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"translate":"lore.cook.food_level","italic":false,"font":"cook:default","color":"white","with":[{"score":{"name":"$temp_0","objective":"cook_data"},"color":"gray"}]}]'
execute unless score $temp_1 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"translate":"lore.cook.food_level_quality","italic":false,"font":"cook:default","color":"white","with":[{"score":{"name":"$temp_0","objective":"cook_data"},"color":"gray"},[{"score":{"name":"$temp_1","objective":"cook_data"},"color":"gray"},{"text":"0%","color":"gray"}]]}]'

#store name/lore
data modify entity @s Item.tag.liquid_item.tag.display.Name set from block -29999999 0 1602 Text1
execute unless data entity @s Item.tag.liquid_item.tag.display.Lore run data modify entity @s Item.tag.liquid_item.tag.display.Lore set value ['{"text":""}']
data modify entity @s Item.tag.liquid_item.tag.display.Lore[0] set from block -29999999 0 1602 Text2

#darken color
execute store result score $utils.in_0 cook_data run data get entity @s Item.tag.liquid_item.tag.cook.color.red
execute store result score $utils.in_1 cook_data run data get entity @s Item.tag.liquid_item.tag.cook.color.green
execute store result score $utils.in_2 cook_data run data get entity @s Item.tag.liquid_item.tag.cook.color.blue

execute if score $utils.in_0 cook_data matches 127.. run scoreboard players remove $utils.in_0 cook_data 30
execute if score $utils.in_1 cook_data matches 127.. run scoreboard players remove $utils.in_1 cook_data 30
execute if score $utils.in_2 cook_data matches 127.. run scoreboard players remove $utils.in_2 cook_data 30
execute if score $utils.in_0 cook_data matches ..127 run scoreboard players add $utils.in_0 cook_data 30
execute if score $utils.in_1 cook_data matches ..127 run scoreboard players add $utils.in_1 cook_data 30
execute if score $utils.in_2 cook_data matches ..127 run scoreboard players add $utils.in_2 cook_data 30

execute store result entity @s Item.tag.liquid_item.tag.cook.color.red int 1 run scoreboard players get $utils.in_0 cook_data
execute store result entity @s Item.tag.liquid_item.tag.cook.color.green int 1 run scoreboard players get $utils.in_1 cook_data
execute store result entity @s Item.tag.liquid_item.tag.cook.color.blue int 1 run scoreboard players get $utils.in_2 cook_data

function cook:utils/calc_color

execute store result entity @s Item.tag.liquid_item.tag.CustomPotionColor int 1 run scoreboard players get $utils.out_0 cook_data

#consume ingredients
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:potion"}] run replaceitem block ~ ~ ~ container.1 minecraft:glass_bottle 2
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:potion"}] run replaceitem block ~ ~ ~ container.10 minecraft:glass_bottle 2
execute if data block ~ ~ ~ Items[{Slot:19b,id:"minecraft:potion"}] run replaceitem block ~ ~ ~ container.19 minecraft:glass_bottle 2

execute store result score $temp_0 cook_data run data get block ~ ~ ~ Items[{Slot:1b}].Count
scoreboard players remove $temp_0 cook_data 1
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get $temp_0 cook_data

execute store result score $temp_0 cook_data run data get block ~ ~ ~ Items[{Slot:10b}].Count
scoreboard players remove $temp_0 cook_data 1
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get $temp_0 cook_data

execute store result score $temp_0 cook_data run data get block ~ ~ ~ Items[{Slot:19b}].Count
scoreboard players remove $temp_0 cook_data 1
execute store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get $temp_0 cook_data



