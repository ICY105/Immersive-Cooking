
#init item
data modify storage cook:temp obj.tag merge value {CustomModelData:6429407, cook:{ type:3b, baking:1b,frying:1b } }
data modify storage cook:temp obj.tag.cooked merge value {tag:{ du_click_detect:1b,CustomModelData:6429416,cook:{ base_name:'',boiling:1b,frying:1b } }}

data modify storage cook:temp var set from storage cook:temp list[].tag{cook:{flour:1b}}.cook.base_name

execute if score $temp_0 cook_data matches 3 run data modify storage du:temp list set from storage cook:temp list
execute if score $temp_0 cook_data matches 3 run data remove storage du:temp list[{tag:{cook:{flour:1b}}}]
execute if score $temp_0 cook_data matches 3 run data remove storage du:temp list[{tag:{cook:{water:1b}}}]

#no added ingredient
data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.flat_bread","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.uncooked_flat_bread","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

#with added ingredient
execute if score $temp_0 cook_data matches 3 if data storage du:temp list[0] run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.flat_bread","italic":"false","with":[{"nbt":"list[0].tag.cook.base_name","storage":"du:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 3 if data storage du:temp list[0] run data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
execute if score $temp_0 cook_data matches 3 if data storage du:temp list[0] run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.uncooked_flat_bread","italic":"false","with":[{"nbt":"list[0].tag.cook.base_name","storage":"du:temp","interpret":true}]}]'

#mark done
scoreboard players set $out_0 cook_data 1
scoreboard players set $temp_0 cook_data 0

#food transform
scoreboard players add $temp_8 cook_data 3
scoreboard players add $temp_9 cook_data 3

#color transform
scoreboard players operation $out_4 cook_data *= $cons.2 du_data
scoreboard players operation $out_5 cook_data *= $cons.2 du_data
scoreboard players operation $out_6 cook_data *= $cons.2 du_data

scoreboard players operation $out_4 cook_data /= $cons.3 du_data
scoreboard players operation $out_5 cook_data /= $cons.3 du_data
scoreboard players operation $out_6 cook_data /= $cons.3 du_data
