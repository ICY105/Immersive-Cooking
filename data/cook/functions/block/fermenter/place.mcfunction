
execute if score $in_1 cook_data matches 1 run setblock ~ ~ ~ minecraft:barrel[facing=south]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uc026","font":"cook:default","color":"white"}]},{"translate":"offset.-176","font":"space:default","with":[{"translate":"block.cook.fermenter","font":"minecraft:default"}]}]'}
execute if score $in_1 cook_data matches 2 run setblock ~ ~ ~ minecraft:barrel[facing=west]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uc026","font":"cook:default","color":"white"}]},{"translate":"offset.-176","font":"space:default","with":[{"translate":"block.cook.fermenter","font":"minecraft:default"}]}]'}
execute if score $in_1 cook_data matches 3 run setblock ~ ~ ~ minecraft:barrel[facing=north]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uc026","font":"cook:default","color":"white"}]},{"translate":"offset.-176","font":"space:default","with":[{"translate":"block.cook.fermenter","font":"minecraft:default"}]}]'}
execute if score $in_1 cook_data matches 4 run setblock ~ ~ ~ minecraft:barrel[facing=east]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uc026","font":"cook:default","color":"white"}]},{"translate":"offset.-176","font":"space:default","with":[{"translate":"block.cook.fermenter","font":"minecraft:default"}]}]'}
replaceitem block ~ ~ ~ container.14 minecraft:firework_star{du_gui:1b,CustomModelData:6429104,display:{Name:'""'}}
replaceitem block ~ ~ ~ container.12 minecraft:firework_star{du_gui:1b,CustomModelData:6429114,display:{Name:'""'}}

execute if score $in_1 cook_data matches 1 run summon item_frame ~ ~ ~1 {Tags:["cook_fermenter","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:3b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:3b,cook_id:9104,CustomModelData:6429104}}}
execute if score $in_1 cook_data matches 2 run summon item_frame ~-1 ~ ~ {Tags:["cook_fermenter","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:4b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:4b,cook_id:9104,CustomModelData:6429104}}}
execute if score $in_1 cook_data matches 3 run summon item_frame ~ ~ ~-1 {Tags:["cook_fermenter","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:2b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:2b,cook_id:9104,CustomModelData:6429104}}}
execute if score $in_1 cook_data matches 4 run summon item_frame ~1 ~ ~ {Tags:["cook_fermenter","cook_interactable"],Invulnerable:1b,Invisible:1b,Facing:5b,Item:{id:"minecraft:tropical_fish",Count:1b,tag:{Facing:5b,cook_id:9104,CustomModelData:6429104}}}
