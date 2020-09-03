
execute if entity @s[tag=cook_bowl] run function cook:block/bowl/interact
execute if entity @s[tag=cook_cabinet] run function cook:block/cabinet/interact
execute if entity @s[tag=cook_pot] run function cook:block/cooking_pot/interact
execute if entity @s[tag=cook_counter] run function cook:block/counter/interact
execute if entity @s[tag=cook_crafter] run function cook:block/crafter/interact
execute if entity @s[tag=cook_cutting_board] run function cook:block/cutting_board/interact
execute if entity @s[tag=cook_mixing_bowl] run function cook:block/mixing_bowl/interact
execute if entity @s[tag=cook_mortar] run function cook:block/mortar/interact
execute if entity @s[tag=cook_oven] run function cook:block/oven/interact_oven
execute if entity @s[tag=cook_plate] run function cook:block/plate/interact
execute if entity @s[tag=cook_sink] run function cook:block/sink/interact
execute if entity @s[tag=cook_smoking_rack] run function cook:block/smoking_rack/interact
execute if entity @s[tag=cook_stove] run function cook:block/oven/interact_stove
execute if entity @s[tag=cook_tray] run function cook:block/tray/interact

scoreboard players set $in_0 cook_data -1
