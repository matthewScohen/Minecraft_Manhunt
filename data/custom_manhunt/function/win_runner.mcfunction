schedule clear custom_manhunt:loop
schedule clear custom_manhunt:level_up_starter_kit
schedule clear custom_manhunt:get_starter_kit

playsound minecraft:event.mob_effect.raid_omen player @a ~ ~ ~ 1 0.75 1
title @a times 20 120 20
title @a title ["",{"text":"Runners","color":"blue"},{"text":" Win"}]