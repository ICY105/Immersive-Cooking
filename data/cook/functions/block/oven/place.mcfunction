
setblock ~ ~ ~ minecraft:barrier

execute if score $in_1 cook_data matches 1 run summon item_frame ~ ~1 ~ {Tags:["cook_stove","cook_rot_1"],ItemRotation:2,Invulnerable:1b,Invisible:1b,Facing:1b,Item:{id:"minecraft:firework_star",Count:1b,tag:{Facing:-1b,cook_id:9086,CustomModelData:6429400}}}
execute if score $in_1 cook_data matches 2 run summon item_frame ~ ~1 ~ {Tags:["cook_stove","cook_rot_2"],ItemRotation:4,Invulnerable:1b,Invisible:1b,Facing:1b,Item:{id:"minecraft:firework_star",Count:1b,tag:{Facing:-1b,cook_id:9086,CustomModelData:6429400}}}
execute if score $in_1 cook_data matches 3 run summon item_frame ~ ~1 ~ {Tags:["cook_stove","cook_rot_3"],ItemRotation:6,Invulnerable:1b,Invisible:1b,Facing:1b,Item:{id:"minecraft:firework_star",Count:1b,tag:{Facing:-1b,cook_id:9086,CustomModelData:6429400}}}
execute if score $in_1 cook_data matches 4 run summon item_frame ~ ~1 ~ {Tags:["cook_stove","cook_rot_4"],ItemRotation:0,Invulnerable:1b,Invisible:1b,Facing:1b,Item:{id:"minecraft:firework_star",Count:1b,tag:{Facing:-1b,cook_id:9086,CustomModelData:6429400}}}

execute if score $in_1 cook_data matches 1 run summon item_frame ~ ~ ~1 {Tags:["cook_oven"],Invulnerable:1b,Invisible:1b,Facing:3b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:3b,cook_id:9085,CustomModelData:6429085}}}
execute if score $in_1 cook_data matches 2 run summon item_frame ~-1 ~ ~ {Tags:["cook_oven"],Invulnerable:1b,Invisible:1b,Facing:4b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:4b,cook_id:9085,CustomModelData:6429085}}}
execute if score $in_1 cook_data matches 3 run summon item_frame ~ ~ ~-1 {Tags:["cook_oven"],Invulnerable:1b,Invisible:1b,Facing:2b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:2b,cook_id:9085,CustomModelData:6429085}}}
execute if score $in_1 cook_data matches 4 run summon item_frame ~1 ~ ~ {Tags:["cook_oven"],Invulnerable:1b,Invisible:1b,Facing:5b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:5b,cook_id:9085,CustomModelData:6429085}}}
