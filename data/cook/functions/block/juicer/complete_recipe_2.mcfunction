
data modify storage cook:temp obj set value {id:"minecraft:potion",Count:1b,tag:{HideFlags:32,CustomPotionColor:0,display:{Name:"",Lore:[]},cook:{base_name:""}}}

#color
execute store result score $out_0 cook_data run data get entity @s HandItems[0].tag.cook.color.red
execute store result score $out_1 cook_data run data get entity @s HandItems[0].tag.cook.color.green
execute store result score $out_2 cook_data run data get entity @s HandItems[0].tag.cook.color.blue

scoreboard players set $temp_2 cook_data 0
scoreboard players set $temp_1 cook_data 256

scoreboard players operation $temp_2 cook_data += $out_2 cook_data

scoreboard players operation $out_1 cook_data *= $temp_1 cook_data
scoreboard players operation $temp_2 cook_data += $out_1 cook_data

scoreboard players operation $out_0 cook_data *= $temp_1 cook_data
scoreboard players operation $out_0 cook_data *= $temp_1 cook_data
scoreboard players operation $temp_2 cook_data += $out_0 cook_data

execute store result storage cook:temp obj.tag.CustomPotionColor int 1 run scoreboard players get $temp_2 cook_data

#values
execute store result score $temp_0 cook_data run data get entity @s HandItems[0].tag.cook.juicing
data modify storage cook:temp var set from entity @s HandItems[0].tag.cook.base_name
execute if score $temp_0 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.juice","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}'
execute if score $temp_0 cook_data matches 2 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.broth","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}'
data modify storage cook:temp obj.tag.display.Name set from block -29999999 0 1602 Text1

#data modify storage cook:temp obj.tag.cook.type set from entity @s HandItems[0].tag.cook.type
data modify storage cook:temp obj.tag.cook.color set from entity @s HandItems[0].tag.cook.color
data modify storage cook:temp obj.tag.cook.food set from entity @s HandItems[0].tag.cook.food
data modify storage cook:temp obj.tag.cook.quality set from entity @s HandItems[0].tag.cook.quality
data modify storage cook:temp obj.tag.cook.base_name set from entity @s HandItems[0].tag.cook.base_name
data modify storage cook:temp obj.tag.display.Lore set from entity @s HandItems[0].tag.display.Lore

data modify storage cook:temp obj.tag.cook.type set value 7b

kill @s
