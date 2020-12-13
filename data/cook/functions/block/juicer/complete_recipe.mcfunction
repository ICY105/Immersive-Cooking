
#create output
execute positioned ~ ~-0.55 ~-0.1 as @e[tag=cook_juicer_item,distance=..0.2] at @s run function cook:block/juicer/complete_recipe_2

#create liquid model
summon item_frame ~ ~-1 ~ {Tags:["cook_juicer_liquid"],Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:0b,ItemRotation:0b,Item:{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Colors:[I;8947848]},color:{red:0,green:0,blue:0},Facing:-1b,id:0,CustomModelData:6429101}}}

#store data
data modify entity @e[tag=cook_juicer_liquid,distance=..0.1,limit=1] Item.tag.item set from storage cook:temp obj
data modify entity @e[tag=cook_juicer_liquid,distance=..0.1,limit=1] Item.tag.Explosion.Colors[0] set from storage cook:temp obj.tag.CustomPotionColor

#cleanup
tag @s remove cook_has_item
tag @s add cook_has_liquid
