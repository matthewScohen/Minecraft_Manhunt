gamerule doImmediateRespawn true
gamerule doDaylightCycle false
time set 0

team add Runner
team add Hunter
team modify Hunter color red
team modify Runner color blue
scoreboard objectives add setting dummy "Setting"
scoreboard objectives setdisplay sidebar setting
scoreboard players set StarterKitsEnabled setting 0
scoreboard players set CatchUp setting 0

scoreboard objectives add deaths deathCount "Deaths"
scoreboard players reset @a deaths

scoreboard objectives add variable dummy "Variable"
scoreboard players set StarterKitLevel variable 0

setworldspawn 0 50 0
data modify storage position Item set value {Slot:0b,components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:overworld",pos:[I;0,0,0]},tracked:0b}},count:1,id:"minecraft:compass"}
setblock 0 0 0 minecraft:chest

schedule clear custom_manhunt:loop
schedule clear custom_manhunt:level_up_starter_kit
schedule clear custom_manhunt:get_starter_kit