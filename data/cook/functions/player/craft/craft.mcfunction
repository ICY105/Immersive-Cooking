
#recipe
execute if entity @s[tag=cook_craft_counter] run function cook:player/craft/counter_replace
execute if entity @s[tag=cook_craft_cabinet] run function cook:player/craft/cabinet_replace
execute if entity @s[tag=cook_craft_cooking_pot] run function cook:player/craft/cooking_pot_replace
execute if entity @s[tag=cook_craft_mixing_bowl] run function cook:player/craft/mixing_bowl_replace
execute if entity @s[tag=cook_craft_mortar] run function cook:player/craft/mortar_replace
execute if entity @s[tag=cook_craft_oven] run function cook:player/craft/oven_replace
execute if entity @s[tag=cook_craft_sink] run function cook:player/craft/sink_replace
execute if entity @s[tag=cook_craft_smoking_rack] run function cook:player/craft/smoking_rack_replace
execute if entity @s[tag=cook_craft_tray] run function cook:player/craft/tray_replace
execute if entity @s[tag=cook_craft_juicer] run function cook:player/craft/juicer_replace

execute if entity @s[tag=cook_craft_manual] run function cook:player/craft/manual_replace
execute if entity @s[tag=cook_craft_saw] run function cook:player/craft/saw_replace
execute if entity @s[tag=cook_craft_frying_pan] run function cook:player/craft/frying_pan_replace
execute if entity @s[tag=cook_craft_plate] run function cook:player/craft/plate_replace
execute if entity @s[tag=cook_craft_pestle] run function cook:player/craft/pestle_replace
execute if entity @s[tag=cook_craft_knife] run function cook:player/craft/knife_replace
execute if entity @s[tag=cook_craft_spoon] run function cook:player/craft/spoon_replace
execute if entity @s[tag=cook_craft_spatula] run function cook:player/craft/spatule_replace

execute if entity @s[tag=cook_craft_oak_board] run function cook:player/craft/oak_cutting_board_replace
execute if entity @s[tag=cook_craft_spruce_board] run function cook:player/craft/spruce_cutting_board_replace
execute if entity @s[tag=cook_craft_birch_board] run function cook:player/craft/birch_cutting_board_replace
execute if entity @s[tag=cook_craft_jungle_board] run function cook:player/craft/jungle_cutting_board_replace
execute if entity @s[tag=cook_craft_acacia_board] run function cook:player/craft/acacia_cutting_board_replace
execute if entity @s[tag=cook_craft_dark_oak_board] run function cook:player/craft/dark_oak_cutting_board_replace
execute if entity @s[tag=cook_craft_crimson_board] run function cook:player/craft/crimson_cutting_board_replace
execute if entity @s[tag=cook_craft_warped_board] run function cook:player/craft/warped_cutting_board_replace

#cleanup
kill @e[type=item,distance=..12,nbt={Item:{id:"minecraft:structure_void"}}]
kill @e[type=item,distance=..12,nbt={Item:{id:"minecraft:knowledge_book"}}]
tag @s[tag=cook_craft_saw] remove cook_crafted
