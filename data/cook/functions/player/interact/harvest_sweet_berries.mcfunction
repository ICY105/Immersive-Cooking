
advancement revoke @s only cook:interact/harvest_sweet_berries
execute as @e[type=item,distance=..12] at @s if data entity @s Item{id:"minecraft:sweet_berries"} unless data entity @s Item.tag.cook run function cook:player/interact/harvest_sweet_berries_2
