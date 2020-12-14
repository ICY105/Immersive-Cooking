
execute as @p[tag=cook_interact] run function cook:utils/take_one_selected_item

#copy item to armor stand
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items append from entity @e[tag=cook_juicer_liquid,distance=..0.2,limit=1] Item.tag.item
kill @e[tag=cook_juicer_liquid,distance=..0.2,limit=1]
loot give @p[tag=cook_interact] mine -29999999 0 1601 air{drop_contents:true}

#tag
tag @s remove cook_has_liquid
scoreboard players set $in_0 cook_data 1
