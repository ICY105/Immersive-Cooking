
#create liquid model
execute if entity @s[tag=!cook_has_liquid] run summon item_frame ~ ~-1 ~ {Tags:["cook_pot_liquid"],Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:0b,ItemRotation:0b,Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;8947848]},color:{red:0,green:0,blue:0},Facing:-1b,id:0,CustomModelData:6429098}}}

#store name
data modify entity @s Item.tag.name set from block -29999999 0 1601 Items[0].tag.display.Name

#run colorize
execute as @e[tag=cook_pot_liquid,distance=..0.1] run function cook:block/cooking_pot/interact_add_liquid_2

#cleanup
tag @s add cook_has_liquid
execute as @p[tag=cook_interact] run function cook:utils/take_one_selected_item
scoreboard players set $temp_0 cook_data -1
