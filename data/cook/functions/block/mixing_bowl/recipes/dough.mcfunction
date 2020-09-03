
data modify storage cook:temp obj.tag merge value {CustomModelData:6429407, cook:{ type:3b,raw:1b, baking:1b,boiling:0b } }
data modify storage cook:temp obj.tag.cooked merge value {id:"minecraft:firework_star",du_click_detect:1b,tag:{ CustomModelData:6429412,cook:{ raw:0b,base_name:'',boiling:1b,frying:1b } }}
data modify storage cook:temp var set from storage cook:temp list[].tag{cook:{flour:1b}}.cook.base_name

execute if score $temp_0 cook_data matches 2 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.bread","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 2 run data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
execute if score $temp_0 cook_data matches 2 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.dough","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

execute if score $temp_0 cook_data matches 3 run data modify storage du:temp var set from storage cook:temp list[{tag:{cook:{type:6b}}}].tag.display.Name 
execute if score $temp_0 cook_data matches 3 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.bread","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"du:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 3 run data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
execute if score $temp_0 cook_data matches 3 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.dough","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"du:temp","interpret":true}]}]'

scoreboard players set $out_0 cook_data 1

#food transform
scoreboard players add $temp_8 cook_data 3

#color transform
scoreboard players operation $out_4 cook_data *= $cons.2 du_data
scoreboard players operation $out_5 cook_data *= $cons.2 du_data
scoreboard players operation $out_6 cook_data *= $cons.2 du_data

scoreboard players operation $out_4 cook_data /= $cons.3 du_data
scoreboard players operation $out_5 cook_data /= $cons.3 du_data
scoreboard players operation $out_6 cook_data /= $cons.3 du_data
