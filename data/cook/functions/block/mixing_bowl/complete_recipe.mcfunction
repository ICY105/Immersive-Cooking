
data modify storage cook:temp obj set value {id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:6429407,cook:{type:7b,food:1, boiling:1b,frying:1b,baking:1b, color:{red:0,green:0,blue:0},base_name:''},HideFlags:32,Explosion:{Colors:[I;0]},display:{Name:'',Lore:['[{"translate":"lore.cook.ingredients","color":"light_purple","italic":false},{"text":":"}]']}, cooked:{tag:{ cook:{raw:0b,food:1,color:{red:0,green:0,blue:0}} }} }}

#get ingredients
data merge storage cook:temp {list:[]}

scoreboard players set $out_0 cook_data 0
scoreboard players set $out_1 cook_data 0
scoreboard players set $out_2 cook_data 0
scoreboard players set $out_3 cook_data 0
scoreboard players set $out_4 cook_data 0
scoreboard players set $out_5 cook_data 0
scoreboard players set $out_6 cook_data 0

scoreboard players set $temp_0 cook_data 0
scoreboard players set $temp_1 cook_data 0
scoreboard players set $temp_2 cook_data 0
scoreboard players set $temp_3 cook_data 0
scoreboard players set $temp_4 cook_data 0
scoreboard players set $temp_5 cook_data 0
scoreboard players set $temp_6 cook_data 0

scoreboard players set $temp_7 cook_data 0
scoreboard players set $temp_8 cook_data 0
scoreboard players set $temp_9 cook_data 0

execute positioned ~ ~-1 ~ as @e[tag=cook_mixing_bowl_item,distance=..0.05] at @s run function cook:block/mixing_bowl/complete_recipe_2
execute if entity @s[tag=cook_has_liquid] as @e[tag=cook_mixing_bowl_liquid,distance=..0.1] at @s run function cook:block/mixing_bowl/complete_recipe_3

#average color
scoreboard players operation $out_1 cook_data /= $out_0 cook_data
scoreboard players operation $out_2 cook_data /= $out_0 cook_data
scoreboard players operation $out_3 cook_data /= $out_0 cook_data

scoreboard players operation $out_4 cook_data /= $out_0 cook_data
scoreboard players operation $out_5 cook_data /= $out_0 cook_data
scoreboard players operation $out_6 cook_data /= $out_0 cook_data

#get type counts
execute store result score $temp_0 cook_data run data get storage cook:temp list

#get recipe
tag @s add cook_temp
scoreboard players set $out_0 cook_data 0
function cook:block/mixing_bowl/complete_recipe_fixed
data modify storage cook:temp list[{tag:{cook:{type:7b}}}].tag.cook.type set value 6b
execute if score $out_0 cook_data matches 0 run function cook:block/mixing_bowl/complete_recipe_dynamic
tag @s remove cook_temp


#compute color
execute store result storage cook:temp obj.tag.cook.color.red int 1 run scoreboard players get $out_1 cook_data
execute store result storage cook:temp obj.tag.cook.color.green int 1 run scoreboard players get $out_2 cook_data
execute store result storage cook:temp obj.tag.cook.color.blue int 1 run scoreboard players get $out_3 cook_data

execute store result storage cook:temp obj.tag.cooked.tag.cook.color.red int 1 run scoreboard players get $out_4 cook_data
execute store result storage cook:temp obj.tag.cooked.tag.cook.color.green int 1 run scoreboard players get $out_5 cook_data
execute store result storage cook:temp obj.tag.cooked.tag.cook.color.blue int 1 run scoreboard players get $out_6 cook_data

scoreboard players set $temp_0 cook_data 0
scoreboard players operation $temp_0 cook_data += $out_3 cook_data
scoreboard players operation $out_2 cook_data *= $cons.256 du_data
scoreboard players operation $temp_0 cook_data += $out_2 cook_data
scoreboard players operation $out_1 cook_data *= $cons.256 du_data
scoreboard players operation $out_1 cook_data *= $cons.256 du_data
scoreboard players operation $temp_0 cook_data += $out_1 cook_data
execute store result storage cook:temp obj.tag.Explosion.Colors[0] int 1 run scoreboard players get $temp_0 cook_data

#store food levels
scoreboard players remove $temp_9 cook_data 1
execute store result storage cook:temp obj.tag.cook.food int 1 run scoreboard players get $temp_7 cook_data
execute store result storage cook:temp obj.tag.cooked.tag.cook.food int 1 run scoreboard players get $temp_8 cook_data
execute store result storage cook:temp obj.tag.cook.quality int 1 run scoreboard players get $temp_9 cook_data

execute if score $temp_9 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"score":{"name":"$temp_7","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"\\uc009","italic":false,"font":"cook:default","color":"white"}]'
execute unless score $temp_9 cook_data matches 0 run data modify block -29999999 0 1602 Text2 set value '[{"score":{"name":"$temp_7","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"\\uc009 ","italic":false,"font":"cook:default","color":"white"},{"score":{"name":"$temp_9","objective":"cook_data"},"italic":false,"color":"gray"},{"text":"0%"},{"text":"\\uc00a","italic":false,"font":"cook:default","color":"white"}]'
data modify storage cook:temp obj.tag.display.Lore prepend from block -29999999 0 1602 Text2

#finish item
data modify storage cook:temp obj.tag.display.Name set from block -29999999 0 1602 Text1
data modify storage cook:temp obj.tag.cook.base_name set from block -29999999 0 1602 Text1
data modify storage cook:temp obj.tag.display.Lore append from storage cook:temp list[].tag.display.Name

execute if data storage cook:temp list[].tag.cook{raw:1b} run data modify storage cook:temp obj.tag.cook.raw set value 1b
data remove storage cook:temp obj.tag.cook.mixing

#cleanup
summon armor_stand ~ ~-1 ~ {Tags:["cook_mixing_bowl_item","cook_new"],Rotation:[0.0f,0.0f],NoGravity:1b,Small:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b}]}
data modify entity @e[tag=cook_new,limit=1] ArmorItems[3] set from storage cook:temp obj
tag @e[tag=cook_new] remove cook_new

tag @s add cook_done
tag @s remove cook_has_liquid
scoreboard players set @s cook_data 0

