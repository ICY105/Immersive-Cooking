
execute unless block ~ ~ ~ #du:air positioned ^ ^ ^-0.05 align xyz run function cook:block/plate/place

scoreboard players remove $in_0 cook_data 1
execute if score $in_0 cook_data matches 1.. if block ~ ~ ~ #du:air positioned ^ ^ ^0.05 run function cook:player/place_block/plate_2
