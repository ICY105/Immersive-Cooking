
execute if entity @s[tag=cook_frying_pan] run function cook:block/frying_pan/break
execute if entity @s[tag=!cook_frying_pan] if data entity @s Item.tag{CustomModelData:6429099} run function cook:block/frying_pan/break

kill @s