
execute if data entity @s Item.tag.cook_id run function cook:block/break/break_block
execute if data entity @s Item{id:"minecraft:white_shulker_box"}.tag.display{Name:'{"translate":"block.cook.crafter"}'} run kill @s
