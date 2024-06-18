gamerule doDaylightCycle true
scoreboard objectives setdisplay sidebar
execute if score StarterKitsEnabled setting matches 1 run schedule function custom_manhunt:level_up_starter_kit 1800s append
scoreboard players set @a deaths 0
scoreboard players set @a kills 0
execute as @a[team=Hunter] run function custom_manhunt:get_starter_kit
function custom_manhunt:loop

effect give @a minecraft:regeneration 2 10 true
effect give @a minecraft:saturation 2 10 true