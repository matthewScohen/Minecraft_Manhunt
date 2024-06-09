team add Runner
team add Hunter
team modify Hunter color red
team modify Runner color blue
scoreboard objectives add settings dummy "Settings"
scoreboard players set StarterKitsEnabled settings 0

data modify storage position Item set value {Slot:0b,components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:overworld",pos:[I;0,0,0]},tracked:0b}},count:1,id:"minecraft:compass"}
setblock 0 200 0 minecraft:chest

schedule function custom_manhunt:enable_starter_kits 1800s