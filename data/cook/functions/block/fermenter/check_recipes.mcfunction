
#milk + vinegar = curdled milk

#berries + yeast = wine
#juice + yeast = cider
#honey + yeast = mead
#water + yeast + rice = sake
#water + yeast + grain = beer
#any alcohol + yeast = vinegar

execute if data entity @s Item.tag.liquid_item.tag.cook{milk:1b} if data storage cook:temp list[{tag:{cook:{vinegar:1b}}}] run tag @s add cook_active
execute if data entity @s Item.tag.liquid_item.tag.cook{water:1b} if data storage cook:temp list[{tag:{cook:{yeast:1b}}}] if data storage cook:temp list[{tag:{cook:{type:3b}}}] run tag @s add cook_active
execute if data entity @s Item.tag.liquid_item.tag.cook{ferment:1b} if data storage cook:temp list[{tag:{cook:{yeast:1b}}}] run tag @s add cook_active
execute if data entity @s Item.tag.liquid_item.tag.cook{alcohol:1b} if data storage cook:temp list[{tag:{cook:{yeast:1b}}}] run tag @s add cook_active
execute if data entity @s Item.tag.liquid_item.tag.cook{water:1b} if data storage cook:temp list[{tag:{cook:{coffee:1b}}}] run tag @s add cook_active
execute if data entity @s Item.tag.liquid_item.tag.cook{water:1b} if data storage cook:temp list[{tag:{cook:{tea:1b}}}] run tag @s add cook_active
execute if data entity @s Item.tag.liquid_item.tag.cook{milk:1b} if data storage cook:temp list[{tag:{cook:{cocoa:1b}}}] if data storage cook:temp list[{tag:{cook:{sugar:1b}}}] run tag @s add cook_active
