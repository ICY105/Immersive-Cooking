
loot spawn ~ ~ ~ loot cook:block/tray

data remove block -29999999 0 1601 Items
execute positioned ~ ~-0.56 ~ as @e[tag=cook_tray_item,distance=..0.5] run data modify block -29999999 0 1601 Items append from entity @s HandItems[0]
loot spawn ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}

execute positioned ~ ~-0.56 ~ run kill @e[tag=cook_tray_item,distance=..0.5]
kill @s

say here