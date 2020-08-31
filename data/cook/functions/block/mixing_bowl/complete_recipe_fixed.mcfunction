
#bread
execute if score $temp_0 cook_data matches 2 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} run function cook:block/mixing_bowl/recipes/dough
execute if score $temp_0 cook_data matches 3 if score $temp_6 cook_data matches 2 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} run function cook:block/mixing_bowl/recipes/dough

#pie
execute if score $temp_0 cook_data matches 3 if score $temp_1 cook_data matches 1 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} run function cook:block/mixing_bowl/recipes/pie
execute if score $temp_0 cook_data matches 4 if score $temp_1 cook_data matches 1 if score $temp_6 cook_data matches 2 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} run function cook:block/mixing_bowl/recipes/pie

execute if score $temp_0 cook_data matches 3 if score $temp_2 cook_data matches 1 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} run function cook:block/mixing_bowl/recipes/pie
execute if score $temp_0 cook_data matches 4 if score $temp_2 cook_data matches 1 if score $temp_6 cook_data matches 2 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} run function cook:block/mixing_bowl/recipes/pie

#cookie
execute if score $temp_0 cook_data matches 4 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} if data storage cook:temp list[].tag.cook{egg:1b} if data storage cook:temp list[].tag.cook{sugar:1b} run function cook:block/mixing_bowl/recipes/cookie
execute if score $temp_0 cook_data matches 5 if score $temp_6 cook_data matches 3 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} if data storage cook:temp list[].tag.cook{egg:1b} if data storage cook:temp list[].tag.cook{sugar:1b} run function cook:block/mixing_bowl/recipes/cookie
