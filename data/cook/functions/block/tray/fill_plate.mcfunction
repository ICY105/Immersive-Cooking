
data modify storage cook:temp obj set value {id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:6429410,plate:2b,du_click_detect:1b,cook:{type:7b,food:1,color:{red:0,green:0,blue:0},base_name:''},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]']} }}

#get ingredients
data merge storage cook:temp {list:[]}

scoreboard players set $out_0 cook_data 0
scoreboard players set $out_1 cook_data 0
scoreboard players set $out_2 cook_data 0
scoreboard players set $out_3 cook_data 0

scoreboard players set $temp_0 cook_data 0
scoreboard players set $temp_1 cook_data 0
scoreboard players set $temp_2 cook_data 0
scoreboard players set $temp_3 cook_data 0
scoreboard players set $temp_4 cook_data 0
scoreboard players set $temp_5 cook_data 0
scoreboard players set $temp_6 cook_data 0

scoreboard players set $temp_7 cook_data 0
scoreboard players set $temp_8 cook_data 0

execute positioned ~ ~-0.66 ~ as @e[tag=cook_tray_item,distance=..0.15] at @s run function cook:block/tray/fill_plate_2

#compute color
scoreboard players operation $out_1 cook_data /= $out_0 cook_data
scoreboard players operation $out_2 cook_data /= $out_0 cook_data
scoreboard players operation $out_3 cook_data /= $out_0 cook_data

#color
execute store result storage cook:temp obj.tag.cook.color.red int 1 run scoreboard players get $out_1 cook_data
execute store result storage cook:temp obj.tag.cook.color.green int 1 run scoreboard players get $out_2 cook_data
execute store result storage cook:temp obj.tag.cook.color.blue int 1 run scoreboard players get $out_3 cook_data

scoreboard players set $temp_0 cook_data 0
scoreboard players operation $temp_0 cook_data += $out_3 cook_data
scoreboard players operation $out_2 cook_data *= $cons.256 du_data
scoreboard players operation $temp_0 cook_data += $out_2 cook_data
scoreboard players operation $out_1 cook_data *= $cons.256 du_data
scoreboard players operation $out_1 cook_data *= $cons.256 du_data
scoreboard players operation $temp_0 cook_data += $out_1 cook_data
execute store result storage cook:temp obj.tag.Explosion.Colors[0] int 1 run scoreboard players get $temp_0 cook_data

#affect quality
execute if data storage cook:temp list[].tag.cook{raw:1b} run scoreboard players remove $temp_8 cook_data 2

#store food levels
scoreboard players remove $temp_8 cook_data 1
execute store result storage cook:temp obj.tag.cook.food int 1 run scoreboard players get $temp_7 cook_data
execute store result storage cook:temp obj.tag.cook.quality int 1 run scoreboard players get $temp_8 cook_data

#get type counts
execute store result score $temp_0 cook_data run data get storage cook:temp list
function cook:block/tray/complete_recipe_dynamic

#finish item
data modify storage cook:temp obj.tag.display.Name set from block -29999999 0 1602 Text1
data modify storage cook:temp obj.tag.cook.base_name set from block -29999999 0 1602 Text1
data modify storage cook:temp obj.tag.display.Lore append from storage cook:temp list[].tag.display.Name
data modify storage cook:temp obj.tag.items append from storage cook:temp list[]
execute if data storage cook:temp list[].tag.cook{raw:1b} run data modify storage cook:temp obj.tag.cook.raw set value 1b

#prevent stacking
execute store result storage cook:temp obj.tag.stack int 1 run scoreboard players get $incr_id cook_data
scoreboard players add $incr_id cook_data 1

#cleanup
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items append from storage cook:temp obj
execute as @p[tag=cook_interact] at @s run function cook:utils/take_one_selected_item
loot give @p[tag=cook_interact] mine -29999999 0 1601 minecraft:air{drop_contents:true}

