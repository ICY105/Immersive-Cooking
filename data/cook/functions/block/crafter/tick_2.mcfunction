
function du:custom_crafter/main

data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].id set value "minecraft:carrot_on_a_stick"
data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].tag set value {CustomModelData:6429405,du_gui:1b,HideFlags:63,display:{Name:'""'}}
replaceitem block ~ ~ ~ container.0 minecraft:carrot_on_a_stick{CustomModelData:6429406,du_gui:1b,HideFlags:63,display:{Name:'""'}}
