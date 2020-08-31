
advancement revoke @s only cook:interact/interact_cabinet

tag @s add cook_interact

scoreboard players set $in_0 cook_data 120
execute anchored eyes positioned ^ ^ ^ run function cook:player/interact/cabinet_2

tag @s remove cook_interact
