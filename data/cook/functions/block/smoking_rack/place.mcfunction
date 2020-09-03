
setblock ~ ~ ~ minecraft:barrier
execute if score $in_1 cook_data matches 1 run summon item_frame ~ ~1 ~ {Tags:["cook_smoking_rack","cook_rot_1","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:1b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:1b,cook_id:9097,CustomModelData:6429097}}}
execute if score $in_1 cook_data matches 2 run summon item_frame ~ ~1 ~ {Tags:["cook_smoking_rack","cook_rot_2","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:1b,ItemRotation:2b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:1b,cook_id:9097,CustomModelData:6429097}}}
execute if score $in_1 cook_data matches 3 run summon item_frame ~ ~1 ~ {Tags:["cook_smoking_rack","cook_rot_1","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:1b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:1b,cook_id:9097,CustomModelData:6429097}}}
execute if score $in_1 cook_data matches 4 run summon item_frame ~ ~1 ~ {Tags:["cook_smoking_rack","cook_rot_2","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:1b,ItemRotation:2b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:1b,cook_id:9097,CustomModelData:6429097}}}
