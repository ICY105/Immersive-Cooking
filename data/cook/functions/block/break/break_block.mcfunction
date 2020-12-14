
execute store result score $in_0 cook_data run data get entity @s Item.tag.cook_id
execute store result score $in_1 cook_data run data get entity @s Item.tag.Facing

kill @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item:{id:"minecraft:item_frame"}}]
kill @s

#break block
execute if score $in_1 cook_data matches 0 run setblock ~ ~ ~ minecraft:air
execute if score $in_1 cook_data matches 1 run setblock ~ ~-1 ~ minecraft:air
execute if score $in_1 cook_data matches 2 run setblock ~ ~ ~1 minecraft:air
execute if score $in_1 cook_data matches 3 run setblock ~ ~ ~-1 minecraft:air
execute if score $in_1 cook_data matches 4 run setblock ~1 ~ ~ minecraft:air
execute if score $in_1 cook_data matches 5 run setblock ~-1 ~ ~ minecraft:air

#custom break function
execute if score $in_0 cook_data matches 9000 run loot spawn ~ ~ ~ loot cook:block/counter
execute if score $in_0 cook_data matches 9001 run function cook:block/cabinet/break
execute if score $in_0 cook_data matches 9004 run function cook:block/sink/break
execute if score $in_0 cook_data matches 9085 run function cook:block/oven/break_oven
execute if score $in_0 cook_data matches 9086 run function cook:block/oven/break_stove
execute if score $in_0 cook_data matches 9087 run function cook:block/cutting_board/break
execute if score $in_0 cook_data matches 9095 run function cook:block/mortar/break
execute if score $in_0 cook_data matches 9096 run function cook:block/mixing_bowl/break
execute if score $in_0 cook_data matches 9097 run function cook:block/smoking_rack/break
execute if score $in_0 cook_data matches 9098 run function cook:block/cooking_pot/break
execute if score $in_0 cook_data matches 9100 run function cook:block/bowl/break
execute if score $in_0 cook_data matches 9101 run function cook:block/plate/break
execute if score $in_0 cook_data matches 9102 run function cook:block/tray/break
execute if score $in_0 cook_data matches 9103 run function cook:block/juicer/break
