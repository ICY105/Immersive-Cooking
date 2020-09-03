
setblock ~ ~ ~ minecraft:barrier
execute if score $in_1 cook_data matches 1 run summon item_frame ~ ~ ~1 { Tags:["cook_counter","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:3b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:3b,cook_id:9000,CustomModelData:6429000}}}
execute if score $in_1 cook_data matches 2 run summon item_frame ~-1 ~ ~ {Tags:["cook_counter","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:4b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:4b,cook_id:9000,CustomModelData:6429000}}}
execute if score $in_1 cook_data matches 3 run summon item_frame ~ ~ ~-1 {Tags:["cook_counter","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:2b,cook_id:9000,CustomModelData:6429000}}}
execute if score $in_1 cook_data matches 4 run summon item_frame ~1 ~ ~ { Tags:["cook_counter","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:5b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:5b,cook_id:9000,CustomModelData:6429000}}}
