
#get ingredient types
scoreboard players set $temp_0 cook_data 0
scoreboard players set $temp_1 cook_data 0
scoreboard players set $temp_2 cook_data 0
scoreboard players set $temp_3 cook_data 0
scoreboard players set $temp_4 cook_data 0
scoreboard players set $temp_5 cook_data 0

scoreboard players set $temp_7 cook_data 0
scoreboard players set $temp_8 cook_data 0

data merge storage cook:temp {list:[]}
execute positioned ~ ~-1.5 ~ as @e[tag=cook_pot_item,distance=..0.05] at @s run function cook:block/cooking_pot/fill_bowl_2

### Set Name
data modify storage cook:temp var set from entity @e[tag=cook_pot_liquid,distance=..0.1,limit=1] Item.tag.liquid_item.tag.cook.base_name
execute store result score $temp_0 cook_data run data get storage cook:temp list

data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.stew","italic":false,"with":[{"translate":"item.cook.hearty_stew"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_1 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.stew","italic":false,"with":[{"translate":"item.cook.mixed_vegetable"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_2 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.stew","italic":false,"with":[{"translate":"item.cook.mixed_fruit"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_3 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.stew","italic":false,"with":[{"translate":"item.cook.mixed_grain"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_4 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.stew","italic":false,"with":[{"translate":"item.cook.mixed_protein"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_5 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.stew","italic":false,"with":[{"translate":"item.cook.mixed_dairy"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches ..1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.stew","italic":false,"with":[{"translate":"item.cook.thin_stew"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'


### Modify quality level

#average ingredient quality
scoreboard players operation $temp_8 cook_data /= $temp_0 cook_data

# add quality based on number of ingredients [0,3]
execute if score $temp_0 cook_data matches 3..4 run scoreboard players add $temp_8 cook_data 1
execute if score $temp_0 cook_data matches 5..6 run scoreboard players add $temp_8 cook_data 2
execute if score $temp_0 cook_data matches 7..8 run scoreboard players add $temp_8 cook_data 3

# modify quality based on cook time [-2,3]
execute if score @s cook_data matches ..69 run scoreboard players remove $temp_8 cook_data 2
execute if score @s cook_data matches 70..79 run scoreboard players add $temp_8 cook_data 0
execute if score @s cook_data matches 80..96 run scoreboard players add $temp_8 cook_data 2
execute if score @s cook_data matches 97..99 run scoreboard players add $temp_8 cook_data 3
execute if score @s cook_data matches 100..109 run scoreboard players add $temp_8 cook_data 0
execute if score @s cook_data matches 110..119 run scoreboard players remove $temp_8 cook_data 2
execute if score @s cook_data matches 120.. run scoreboard players remove $temp_8 cook_data 4

#add liquid data
execute store result score $in_0 cook_data run data get entity @e[tag=cook_pot_liquid,distance=..0.1,limit=1] Item.tag.liquid_item.tag.cook.food
scoreboard players operation $temp_7 cook_data += $in_0 cook_data
execute store result score $in_0 cook_data run data get entity @e[tag=cook_pot_liquid,distance=..0.1,limit=1] Item.tag.liquid_item.tag.cook.quality
scoreboard players operation $temp_8 cook_data += $in_0 cook_data


### Output

# init item
data remove block -29999999 0 1601 Items
execute if score @s cook_data matches ..69 run data modify block -29999999 0 1601 Items append value {		id:"minecraft:firework_star",Count:1b,tag:{bowl:2b,du_click_detect:1b,items:[],CustomModelData:6429408,cook:{type:8b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.undercooked","color":"gray","italic":false}']} }}
execute if score @s cook_data matches 70..79 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{bowl:2b,du_click_detect:1b,items:[],CustomModelData:6429408,cook:{type:8b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.slightly_undercooked","color":"gray","italic":false}']} }}
execute if score @s cook_data matches 80..99 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{bowl:2b,du_click_detect:1b,items:[],CustomModelData:6429408,cook:{type:8b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.cooked","color":"gray","italic":false}']} }}
execute if score @s cook_data matches 97..99 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{bowl:2b,du_click_detect:1b,items:[],CustomModelData:6429408,cook:{type:8b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.perfectly_cooked","color":"gray","italic":false}']} }}
execute if score @s cook_data matches 100..109 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{bowl:2b,du_click_detect:1b,items:[],CustomModelData:6429408,cook:{type:8b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.slightly_overcooked","color":"gray","italic":false}']} }}
execute if score @s cook_data matches 110..119 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{bowl:2b,du_click_detect:1b,items:[],CustomModelData:6429408,cook:{type:8b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.overcooked","color":"gray","italic":false}']} }}
execute if score @s cook_data matches 120.. run data modify block -29999999 0 1601 Items append value {		id:"minecraft:firework_star",Count:1b,tag:{bowl:2b,du_click_detect:1b,items:[],CustomModelData:6429408,cook:{type:8b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.burnt","color":"gray","italic":false}']} }}

# add color
data modify block -29999999 0 1601 Items[0].tag.Explosion.Colors set from entity @e[tag=cook_pot_liquid,distance=..0.1,limit=1] Item.tag.Explosion.Colors
data modify block -29999999 0 1601 Items[0].tag.cook.color set from entity @e[tag=cook_pot_liquid,distance=..0.1,limit=1] Item.tag.color

#store food/quality
execute store result block -29999999 0 1601 Items[0].tag.cook.food int 1 run scoreboard players get $temp_7 cook_data
execute store result block -29999999 0 1601 Items[0].tag.cook.quality int 1 run scoreboard players get $temp_8 cook_data

#store lore
execute if score $temp_8 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"score":{"name":"$temp_7","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"\\uc009","italic":false,"font":"cook:default","color":"white"}]'
execute unless score $temp_8 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"score":{"name":"$temp_7","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"\\uc009 ","italic":false,"font":"cook:default","color":"white"},{"score":{"name":"$temp_8","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"0%"},{"text":"\\uc00a","italic":false,"font":"cook:default","color":"white"}]'
data modify block -29999999 0 1601 Items[0].tag.display.Lore prepend from block -29999999 0 1602 Text2

#store name
data modify block -29999999 0 1601 Items[0].tag.display.Name set from block -29999999 0 1602 Text1

#store ingredients
data modify block -29999999 0 1601 Items[0].tag.seasonings set from entity @e[tag=cook_pot_liquid,distance=..0.1,limit=1] Item.tag.seasoning_items
data modify storage cook:temp var set from block -29999999 0 1601 Items[0].tag.seasonings[0].tag.cook.base_name
execute if data block -29999999 0 1601 Items[0].tag.seasonings[0] unless data block -29999999 0 1601 Items[0].tag.seasonings[1] run data modify block -29999999 0 1602 Text3 set value '[{"translate":"lore.cook.seasoned","color":"gray","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if data block -29999999 0 1601 Items[0].tag.seasonings[0] unless data block -29999999 0 1601 Items[0].tag.seasonings[1] run data modify block -29999999 0 1601 Items[0].tag.display.Lore append from block -29999999 0 1602 Text3
execute if data block -29999999 0 1601 Items[0].tag.seasonings[1] run data modify block -29999999 0 1601 Items[0].tag.display.Lore append value '[{"translate":"lore.cook.multi_seasoned","color":"gray","italic":false}]'

data modify block -29999999 0 1601 Items[0].tag.display.Lore append value '[{"text":""}]'
data modify block -29999999 0 1601 Items[0].tag.display.Lore append value '[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]'
data modify block -29999999 0 1601 Items[0].tag.ingredients append from storage cook:temp list[]
data modify block -29999999 0 1601 Items[0].tag.display.Lore append from storage cook:temp list[].tag.display.Name

#prevent stacking
execute store result block -29999999 0 1601 Items[0].tag.stack int 1 run scoreboard players get $incr_id cook_data
scoreboard players add $incr_id cook_data 1


### Finish
tag @s remove cook_has_item
tag @s remove cook_has_liquid
tag @s remove cook_has_seasoning
scoreboard players set @s cook_data 0

kill @e[tag=cook_pot_liquid,distance=..0.1]
loot give @p[tag=cook_interact] mine -29999999 0 1601 air{drop_contents:true}
execute as @p[tag=cook_interact] run function cook:utils/take_one_selected_item

scoreboard players set $in_0 cook_data -1
