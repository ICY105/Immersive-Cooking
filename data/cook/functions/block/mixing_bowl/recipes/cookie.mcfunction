
data modify storage cook:temp obj.tag merge value {CustomModelData:6429407, cook:{type:1b,raw:1b,baking:1b,boiling:0b,frying:0b} }
data modify storage cook:temp obj.tag.cooked merge value {tag:{ CustomModelData:6429413,du_click_detect:1b,cook:{ raw:0b,base_name:'',baking:0b,boiling:0b,frying:0b } }}

data modify storage cook:temp var set from storage cook:temp list[].tag{cook:{type:3b}}.cook.base_name
data modify storage cook:temp list[].tag.cook{sugar:1b}.type set value 7b

execute if score $temp_0 cook_data matches 4 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.cookie","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 4 run data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
execute if score $temp_0 cook_data matches 4 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.cookie_dough","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

execute if score $temp_0 cook_data matches 5 run data modify storage du:temp var set from storage cook:temp list[{tag:{cook:{type:6b}}}].tag.display.Name 
execute if score $temp_0 cook_data matches 5 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.cookie","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"du:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 5 run data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
execute if score $temp_0 cook_data matches 5 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.cookie_dough","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"du:temp","interpret":true}]}]'

scoreboard players set $out_0 cook_data 1

#food transform
scoreboard players add $temp_8 cook_data 2
scoreboard players add $temp_9 cook_data 2

#color transform
#scoreboard players remove $out_4 cook_data 40
#scoreboard players remove $out_5 cook_data 80
#scoreboard players remove $out_6 cook_data 120

#scoreboard players operation $out_4 cook_data *= $cons.2 du_data
scoreboard players operation $out_5 cook_data *= $cons.2 du_data
scoreboard players operation $out_6 cook_data *= $cons.2 du_data

#scoreboard players operation $out_4 cook_data /= $cons.3 du_data
scoreboard players operation $out_5 cook_data /= $cons.3 du_data
scoreboard players operation $out_6 cook_data /= $cons.4 du_data