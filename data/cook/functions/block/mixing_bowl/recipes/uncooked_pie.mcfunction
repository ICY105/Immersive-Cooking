
#init item
execute if data storage cook:temp list[].tag{cook:{type:1b}} run data modify storage cook:temp obj.tag merge value {CustomModelData:6429407, cook:{ type:1b, baking:1b } }
execute if data storage cook:temp list[].tag{cook:{type:2b}} run data modify storage cook:temp obj.tag merge value {CustomModelData:6429407, cook:{ type:2b, baking:1b } }
data modify storage cook:temp obj.tag.cooked merge value {tag:{ du_click_detect:1b,CustomModelData:6429411,cook:{ base_name:'', baking:1b } }}

#copy color
execute if data storage cook:temp list[].tag{cook:{type:1b}} run data modify storage cook:temp obj.tag.cooked.tag.cook.color set from storage cook:temp list[].tag{cook:{type:1b}}.cook.color
execute if data storage cook:temp list[].tag{cook:{type:2b}} run data modify storage cook:temp obj.tag.cooked.tag.cook.color set from storage cook:temp list[].tag{cook:{type:2b}}.cook.color

#get name attributes
data modify storage cook:temp var set from storage cook:temp list[].tag{cook:{flour:1b}}.cook.base_name

data modify storage du:temp list set from storage cook:temp list
data remove storage du:temp list[{tag:{cook:{flour:1b}}}]
data remove storage du:temp list[{tag:{cook:{water:1b}}}]
data remove storage du:temp list[{tag:{cook:{sugar:1b}}}]

#no added ingredient
data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.pie","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.uncooked_pie","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'

#with added ingredient
execute if data storage du:temp list[0] run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.pie","italic":"false","with":[{"nbt":"list[0].tag.cook.base_name","storage":"du:temp","interpret":true}]}]'
execute if data storage du:temp list[0] run data modify storage cook:temp obj.tag.cooked.tag.cook.base_name set from block -29999999 0 1602 Text1 
execute if data storage du:temp list[0] run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.uncooked_pie","italic":"false","with":[{"nbt":"list[0].tag.cook.base_name","storage":"du:temp","interpret":true}]}]'

#mark done
scoreboard players set $out_0 cook_data 1
scoreboard players set $temp_0 cook_data 0

#food transform
scoreboard players add $temp_8 cook_data 3
scoreboard players add $temp_9 cook_data 2

#transform color
scoreboard players remove $out_4 cook_data 40
scoreboard players remove $out_5 cook_data 40
scoreboard players remove $out_6 cook_data 40
