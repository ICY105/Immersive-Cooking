
scoreboard players operation $temp_8 cook_data = $temp_0 cook_data
scoreboard players operation $temp_8 cook_data -= $temp_6 cook_data
execute if score $temp_8 cook_data matches 0 run scoreboard players set $temp_8 cook_data -1
execute if score $temp_6 cook_data matches 1 run data modify storage cook:temp var set from storage cook:temp list[{tag:{cook:{type:6b}}}].tag.display.Name

execute unless score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.mixed","italic":false}'
execute if score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.mixed","italic":false},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"cook:temp","interpret":true}}]}]'

execute if score $temp_1 cook_data = $temp_8 cook_data unless score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.mixed_vegetables","italic":false}'
execute if score $temp_1 cook_data = $temp_8 cook_data if score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.mixed_vegetables","italic":false},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_1 cook_data = $temp_8 cook_data run data modify storage cook:temp obj.tag.cook.type set value 1b

execute if score $temp_2 cook_data = $temp_8 cook_data unless score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.mixed_fruits","italic":false}'
execute if score $temp_2 cook_data = $temp_8 cook_data if score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.mixed_fruits","italic":false},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_2 cook_data = $temp_8 cook_data run data modify storage cook:temp obj.tag.cook.type set value 2b

execute if score $temp_3 cook_data = $temp_8 cook_data unless score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.mixed_grains","italic":false}'
execute if score $temp_3 cook_data = $temp_8 cook_data if score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.mixed_grains","italic":false},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_3 cook_data = $temp_8 cook_data run data modify storage cook:temp obj.tag.cook.type set value 3b

execute if score $temp_4 cook_data = $temp_8 cook_data unless score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.mixed_proteins","italic":false}'
execute if score $temp_4 cook_data = $temp_8 cook_data if score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.mixed_proteins","italic":false},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_4 cook_data = $temp_8 cook_data run data modify storage cook:temp obj.tag.cook.type set value 4b

execute if score $temp_5 cook_data = $temp_8 cook_data unless score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.mixed_dairy","italic":false}'
execute if score $temp_5 cook_data = $temp_8 cook_data if score $temp_6 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.mixed_dairy","italic":false},{"translate":"item.cook.seasoned","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_5 cook_data = $temp_8 cook_data run data modify storage cook:temp obj.tag.cook.type set value 5b

execute if score $temp_6 cook_data = $temp_0 cook_data run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.mixed_seasonings","italic":false}'
execute if score $temp_6 cook_data = $temp_0 cook_data run data modify storage cook:temp obj.tag.cook.type set value 6b
