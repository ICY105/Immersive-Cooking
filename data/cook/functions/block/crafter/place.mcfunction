
setblock ~ ~ ~ minecraft:white_shulker_box{CustomName:'{"translate":"block.cook.crafter"}'}
execute if score $in_1 cook_data matches 1 run summon item_frame ~ ~ ~1 { Tags:["cook_crafter","cook_rot_1"],Invulnerable:1b,Invisible:1b,Facing:3b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:3b,cook_id:9003,CustomModelData:6429003}}}
execute if score $in_1 cook_data matches 2 run summon item_frame ~-1 ~ ~ {Tags:["cook_crafter","cook_rot_2"],Invulnerable:1b,Invisible:1b,Facing:4b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:4b,cook_id:9003,CustomModelData:6429003}}}
execute if score $in_1 cook_data matches 3 run summon item_frame ~ ~ ~-1 {Tags:["cook_crafter","cook_rot_3"],Invulnerable:1b,Invisible:1b,Facing:2b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:2b,cook_id:9003,CustomModelData:6429003}}}
execute if score $in_1 cook_data matches 4 run summon item_frame ~1 ~ ~ { Tags:["cook_crafter","cook_rot_4"],Invulnerable:1b,Invisible:1b,Facing:5b,ItemRotation:0b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:5b,cook_id:9003,CustomModelData:6429003}}}
