
execute if data storage cook:temp list[].tag{cook:{type:1b}} run data modify storage cook:temp obj.tag merge value {CustomModelData:6429407, cook:{type:1b,raw:1b,baking:1b,boiling:0b,frying:0b} }
execute if data storage cook:temp list[].tag{cook:{type:2b}} run data modify storage cook:temp obj.tag merge value {CustomModelData:6429407, cook:{type:2b,raw:1b,baking:1b,boiling:0b,frying:0b} }
data modify storage cook:temp obj.tag.cooked merge value {tag:{ CustomModelData:6429411,du_click_detect:1b,cook:{ raw:0b,base_name:'',baking:0b,boiling:0b,frying:0b } }}

execute if data storage cook:temp list[].tag{cook:{type:1b}} run data modify storage cook:temp var set from storage cook:temp list[].tag{cook:{type:1b}}.cook.base_name
execute if data storage cook:temp list[].tag{cook:{type:2b}} run data modify storage cook:temp var set from storage cook:temp list[].tag{cook:{type:2b}}.cook.base_name

execute if data storage cook:temp list[].tag{cook:{type:1b}} run data modify storage cook:temp obj.tag.cooked.tag.cook.color set from storage cook:temp list[].tag{cook:{type:1b}}.cook.color
execute if data storage cook:temp list[].tag{cook:{type:2b}} run data modify storage cook:temp obj.tag.cooked.tag.cook.color set from storage cook:temp list[].tag{cook:{type:2b}}.cook.color

execute if score $temp_0 cook_data matches 3 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.pie","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 3 run data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
execute if score $temp_0 cook_data matches 3 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.uncooked_pie","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

execute if score $temp_0 cook_data matches 4 run data modify storage du:temp var set from storage cook:temp list[{tag:{cook:{type:6b}}}].tag.display.Name 
execute if score $temp_0 cook_data matches 4 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.pie","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"du:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 4 run data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
execute if score $temp_0 cook_data matches 4 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.uncooked_pie","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"du:temp","interpret":true}]}]'

scoreboard players set $out_0 cook_data 1

scoreboard players add $temp_8 cook_data 3
scoreboard players add $temp_9 cook_data 2

#transform color
scoreboard players remove $out_4 cook_data 40
scoreboard players remove $out_5 cook_data 40
scoreboard players remove $out_6 cook_data 40
