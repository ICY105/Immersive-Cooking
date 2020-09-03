
setblock ~ ~ ~ minecraft:air

execute if score $in_1 cook_data matches 1 run summon item_frame ~ ~ ~ {Tags:["cook_cutting_board","cook_rot_1","cook_interactable"],Invulnerable:1b,Invisible:1b,ItemRotation:0b,Facing:1b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:-1b,cook_id:9087,CustomModelData:6429087}}}
execute if score $in_1 cook_data matches 2 run summon item_frame ~ ~ ~ {Tags:["cook_cutting_board","cook_rot_2","cook_interactable"],Invulnerable:1b,Invisible:1b,ItemRotation:2b,Facing:1b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:-1b,cook_id:9087,CustomModelData:6429087}}}
execute if score $in_1 cook_data matches 3 run summon item_frame ~ ~ ~ {Tags:["cook_cutting_board","cook_rot_1","cook_interactable"],Invulnerable:1b,Invisible:1b,ItemRotation:0b,Facing:1b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:-1b,cook_id:9087,CustomModelData:6429087}}}
execute if score $in_1 cook_data matches 4 run summon item_frame ~ ~ ~ {Tags:["cook_cutting_board","cook_rot_2","cook_interactable"],Invulnerable:1b,Invisible:1b,ItemRotation:2b,Facing:1b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:-1b,cook_id:9087,CustomModelData:6429087}}}

execute store result entity @e[tag=cook_cutting_board,sort=nearest,limit=1] Item.tag.CustomModelData int 1 run scoreboard players get $in_0 cook_data
