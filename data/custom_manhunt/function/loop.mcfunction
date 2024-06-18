execute as @a[team=Runner] at @s if dimension minecraft:overworld store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[0] int 1 run data get entity @s Pos[0]
execute as @a[team=Runner] at @s if dimension minecraft:overworld store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[1] int 1 run data get entity @s Pos[1]
execute as @a[team=Runner] at @s if dimension minecraft:overworld store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[2] int 1 run data get entity @s Pos[2]

data modify block 0 0 0 Items append from storage minecraft:position Item
execute as @a[nbt={SelectedItem: {id: "minecraft:compass"}}] run item replace entity @s weapon.mainhand from block 0 0 0 container.0

# Give Hunters starter kits on respawn if enabled + a compass
execute as @a[team=Hunter] if score @s deaths matches 1.. run schedule function custom_manhunt:get_starter_kit 20t append
execute as @a[team=Hunter] if score @s deaths matches 1.. run scoreboard players reset @s deaths

# Give Speed 1 to Hunters over 500 blocks from any Runner if CatchUp is enabled
execute if score CatchUp setting matches 1 as @a[team=Hunter] at @s if entity @p[team=Runner, distance=500..] unless entity @p[team=Runner, distance=..500] run effect give @s minecraft:speed 1 0 true

# If a runner dies and InheritRunner is off, put them in spectator
execute if score InheritRunner setting matches 0 as @a[team=Runner] if score @s deaths matches 1.. run gamemode spectator

# If a runner dies and InheritRunner is on, change teams and reset hunter kills score
execute if score InheritRunner setting matches 1 as @a[team=Runner] if score @s deaths matches 1.. run function custom_manhunt:swap_runner

# Reset kills score
scoreboard players set @a kills 0

schedule function custom_manhunt:loop 10t append

# If all runners die and InheritRunner is off, hunters win
execute if score InheritRunner setting matches 0 unless entity @a[team=Runner, scores={deaths=0}] run function custom_manhunt:win_hunter