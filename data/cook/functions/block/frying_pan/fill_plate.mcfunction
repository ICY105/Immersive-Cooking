
#get ingredient types
scoreboard players set $temp_0 cook_data 0
scoreboard players set $temp_1 cook_data 0
scoreboard players set $temp_2 cook_data 0
scoreboard players set $temp_3 cook_data 0
scoreboard players set $temp_4 cook_data 0
scoreboard players set $temp_5 cook_data 0
scoreboard players set $temp_6 cook_data 0

scoreboard players set $temp_7 cook_data 0
scoreboard players set $temp_8 cook_data 0

data merge storage cook:temp {list:[]}
execute positioned ~ ~-0.56 ~ as @e[tag=cook_pan_item,distance=..0.25] at @s run function cook:block/frying_pan/fill_plate_2



### Set Name
data modify storage cook:temp var set from entity @s Item.tag.name
execute store result score $temp_0 cook_data run data get storage cook:temp list

tag @s add cook_temp
data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.stir_fried","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_1 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.fried","italic":false,"with":[{"translate":"item.cook.mixed_vegetable"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_2 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.fried","italic":false,"with":[{"translate":"item.cook.mixed_fruit"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_3 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.fried","italic":false,"with":[{"translate":"item.cook.mixed_grain"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_4 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.fried","italic":false,"with":[{"translate":"item.cook.mixed_protein"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_5 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.fried","italic":false,"with":[{"translate":"item.cook.mixed_dairy"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_6 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.fried","italic":false,"with":[{"translate":"item.cook.mixed_seasonings"},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches ..1 run data modify storage du:temp var set from storage cook:temp list[0].tag.display.Name
execute if score $temp_0 cook_data matches ..1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.fried","italic":false,"with":[{"nbt":"var","storage":"du:temp","interpret":true},{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
tag @s remove cook_temp

execute if score $temp_0 cook_data matches ..1 run scoreboard players remove $temp_8 cook_data 1



### Modify quality level

#average ingredient quality
scoreboard players operation $temp_8 cook_data /= $temp_0 cook_data

# add quality based on number of ingredients
execute if score $temp_0 cook_data matches 3..4 run scoreboard players add $temp_8 cook_data 1
execute if score $temp_0 cook_data matches 5..6 run scoreboard players add $temp_8 cook_data 2
execute if score $temp_0 cook_data matches 7..8 run scoreboard players add $temp_8 cook_data 3

# modify quality based on cook time
execute if score @s cook_data matches ..69 run scoreboard players remove $temp_8 cook_data 3
execute if score @s cook_data matches 70..79 run scoreboard players remove $temp_8 cook_data 1
execute if score @s cook_data matches 97..99 run scoreboard players add $temp_8 cook_data 1
execute if score @s cook_data matches 100..109 run scoreboard players remove $temp_8 cook_data 1
execute if score @s cook_data matches 110..119 run scoreboard players remove $temp_8 cook_data 2
execute if score @s cook_data matches 120.. run scoreboard players remove $temp_8 cook_data 3

#modify quality based on stirring
execute if score @s cook_food matches ..-10 run scoreboard players remove $temp_8 cook_data 1
execute if score @s cook_food matches 2..7 run scoreboard players add $temp_8 cook_data 1

# modify quality based on preparation
scoreboard players set $in_0 cook_data 0
execute if data storage cook:temp list[].tag.cook{cutting:2b} run scoreboard players set $in_0 cook_data 1
execute if data storage cook:temp list[].tag.cook{cutting:3b} run scoreboard players set $in_0 cook_data 1
execute if data storage cook:temp list[].tag.cook{cutting:4b} run scoreboard players set $in_0 cook_data 1
execute if score $in_0 cook_data matches 1 run scoreboard players add $temp_8 cook_data 1

execute if data storage cook:temp list[].tag.cook{cutting:2b} if data storage cook:temp list[].tag.cook{cutting:3b} if data storage cook:temp list[].tag.cook{cutting:4b} run scoreboard players add $temp_8 cook_data 1

### Output

# create item
data remove block -29999999 0 1601 Items

execute if score @s cook_data matches ..69 run data modify block -29999999 0 1601 Items append value {		id:"minecraft:firework_star",Count:1b,tag:{plate:2b,du_click_detect:1b,items:[],CustomModelData:6429410,cook:{type:7b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.undercooked","color":"gray","italic":false}','{"text":""}','[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]']} }}
execute if score @s cook_data matches 70..79 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{plate:2b,du_click_detect:1b,items:[],CustomModelData:6429410,cook:{type:7b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.slightly_undercooked","color":"gray","italic":false}','{"text":""}','[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]']} }}
execute if score @s cook_data matches 80..99 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{plate:2b,du_click_detect:1b,items:[],CustomModelData:6429410,cook:{type:7b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.cooked","color":"gray","italic":false}','{"text":""}','[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]']} }}
execute if score @s cook_data matches 82..85 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{plate:2b,du_click_detect:1b,items:[],CustomModelData:6429410,cook:{type:7b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.perfectly_cooked","color":"gray","italic":false}','{"text":""}','[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]']} }}
execute if score @s cook_data matches 100..109 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{plate:2b,du_click_detect:1b,items:[],CustomModelData:6429410,cook:{type:7b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.slightly_overcooked","color":"gray","italic":false}','{"text":""}','[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]']} }}
execute if score @s cook_data matches 110..119 run data modify block -29999999 0 1601 Items append value {	id:"minecraft:firework_star",Count:1b,tag:{plate:2b,du_click_detect:1b,items:[],CustomModelData:6429410,cook:{type:7b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.overcooked","color":"gray","italic":false}','{"text":""}','[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]']} }}
execute if score @s cook_data matches 120.. run data modify block -29999999 0 1601 Items append value {		id:"minecraft:firework_star",Count:1b,tag:{plate:2b,du_click_detect:1b,items:[],CustomModelData:6429410,cook:{type:7b,color:{red:0,green:0,blue:0}},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['{"translate":"lore.cook.burnt","color":"gray","italic":false}','{"text":""}','[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]']} }}

#set food type
execute if score $temp_1 cook_data = $temp_0 cook_data run data modify entity @s Item.tag.cook.type set value 1b
execute if score $temp_2 cook_data = $temp_0 cook_data run data modify entity @s Item.tag.cook.type set value 2b
execute if score $temp_3 cook_data = $temp_0 cook_data run data modify entity @s Item.tag.cook.type set value 3b
execute if score $temp_4 cook_data = $temp_0 cook_data run data modify entity @s Item.tag.cook.type set value 4b
execute if score $temp_5 cook_data = $temp_0 cook_data run data modify entity @s Item.tag.cook.type set value 5b
execute if score $temp_6 cook_data = $temp_0 cook_data run data modify entity @s Item.tag.cook.type set value 6b

#add item data
data modify block -29999999 0 1601 Items[0].tag.Explosion.Colors set from entity @e[tag=cook_pan_liquid,distance=..0.1,limit=1] Item.tag.Explosion.Colors
data modify block -29999999 0 1601 Items[0].tag.cook.color set from entity @e[tag=cook_pan_liquid,distance=..0.1,limit=1] Item.tag.color

execute store result block -29999999 0 1601 Items[0].tag.cook.food int 1 run scoreboard players get $temp_7 cook_data
execute store result block -29999999 0 1601 Items[0].tag.cook.quality int 1 run scoreboard players get $temp_8 cook_data

execute if score $temp_8 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"score":{"name":"$temp_7","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"\\uc009","italic":false,"font":"cook:default","color":"white"}]'
execute unless score $temp_8 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"score":{"name":"$temp_7","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"\\uc009","italic":false,"font":"cook:default","color":"white"},{"score":{"name":"$temp_8","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"0%"},{"text":"\\uc00a","italic":false,"font":"cook:default","color":"white"}]'
data modify block -29999999 0 1601 Items[0].tag.display.Lore prepend from block -29999999 0 1602 Text2

data modify block -29999999 0 1601 Items[0].tag.display.Name set from block -29999999 0 1602 Text1
data modify block -29999999 0 1601 Items[0].tag.display.Lore append from storage cook:temp list[].tag.display.Name
data modify block -29999999 0 1601 Items[0].tag.items append from storage cook:temp list[]

#prevent stacking
execute store result block -29999999 0 1601 Items[0].tag.stack int 1 run scoreboard players get $incr_id cook_data
scoreboard players add $incr_id cook_data 1

### Finish
tag @s remove cook_done
tag @s remove cook_has_item
tag @s remove cook_has_liquid
scoreboard players set @s cook_data 0

kill @e[tag=cook_pan_liquid,distance=..0.1]
loot give @p[tag=cook_interact] mine -29999999 0 1601 air{drop_contents:true}
execute as @p[tag=cook_interact] run function cook:utils/take_one_selected_item
