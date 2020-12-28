
#cake
execute if score $temp_0 cook_data matches 4 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{milk:1b} if data storage cook:temp list[].tag.cook{egg:1b} if data storage cook:temp list[].tag.cook{sugar:1b} run function cook:block/mixing_bowl/recipes/cake_batter
execute if score $temp_0 cook_data matches 5 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{milk:1b} if data storage cook:temp list[].tag.cook{egg:1b} if data storage cook:temp list[].tag.cook{sugar:1b} run function cook:block/mixing_bowl/recipes/cake_batter

#cookie
execute if score $temp_0 cook_data matches 4 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} if data storage cook:temp list[].tag.cook{egg:1b} if data storage cook:temp list[].tag.cook{sugar:1b} run function cook:block/mixing_bowl/recipes/cookie_dough
execute if score $temp_0 cook_data matches 5 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} if data storage cook:temp list[].tag.cook{egg:1b} if data storage cook:temp list[].tag.cook{sugar:1b} run function cook:block/mixing_bowl/recipes/cookie_dough

#pie
execute if score $temp_0 cook_data matches 4 if score $temp_1 cook_data matches 1 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} if data storage cook:temp list[].tag.cook{sugar:1b} run function cook:block/mixing_bowl/recipes/uncooked_pie
execute if score $temp_0 cook_data matches 4 if score $temp_2 cook_data matches 1 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} if data storage cook:temp list[].tag.cook{sugar:1b} run function cook:block/mixing_bowl/recipes/uncooked_pie

#bread
execute if score $temp_0 cook_data matches 3 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} if data storage cook:temp list[].tag.cook{yeast:1b} run function cook:block/mixing_bowl/recipes/bread_dough
execute if score $temp_0 cook_data matches 4 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} if data storage cook:temp list[].tag.cook{yeast:1b} run function cook:block/mixing_bowl/recipes/bread_dough

#flat bread
execute if score $temp_0 cook_data matches 2 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} run function cook:block/mixing_bowl/recipes/uncooked_flat_bread
execute if score $temp_0 cook_data matches 3 if data storage cook:temp list[].tag.cook{flour:1b} if data storage cook:temp list[].tag.cook{water:1b} run function cook:block/mixing_bowl/recipes/uncooked_flat_bread
