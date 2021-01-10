
scoreboard players set $install cook_data 1

#check for 1.16.2
execute unless score $minecraft.ver du_data matches 162 run scoreboard players set $install cook_data 0
execute unless score $minecraft.ver du_data matches 162 run tellraw @a [{"text":"Error: Immersive Cooking v1.0.0 requires Minecraft +1.16.4. Click [here] to download alternate versions.\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Immersive-Cooking/releases"}}]

#check DU
execute unless score $du.ver load matches 2020100.. run scoreboard players set $install cook_data 0
execute unless score $du.ver load matches 2020100.. run tellraw @a [{"text":"Error: Immersive Cooking requires Datapack Utilities version +2.2.1. You can download that [here].\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#print install message
execute if score $install cook_data matches 1 run tellraw @a [{"text":"[Loaded Immersive Cooking v1.0.0a]","color":"dark_green"}]

#resourcepack
tellraw @a [{"translate":"Looks like you don't have the resourcepack for Immersive Cooking. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Immersive-Cooking/releases"}}]
