execute as @a[team=Runner] at @s store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[0] int 1 run data get entity @s Pos[0]
execute as @a[team=Runner] at @s store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[1] int 1 run data get entity @s Pos[1]
execute as @a[team=Runner] at @s store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[2] int 1 run data get entity @s Pos[2]

data modify block 0 0 0 Items append from storage minecraft:position Item
execute as @a[nbt={SelectedItem: {id: "minecraft:compass"}}] run item replace entity @s weapon.mainhand from block 0 200 0 container.0

# Give Hunters starter kits on respawn if enabled + a compass
execute as @a[team=Hunter] if score @s deaths matches 1.. run function custom_manhunt:get_starter_kit

# Give Speed 1 to Hunters over 500 blocks from any Runner if CatchUp is enabled
execute if score CatchUp setting matches 1 as @a[team=Hunter] at @s if entity @p[team=Runner, distance=500..] unless entity @p[team=Runner, distance=..500] run effect give @s minecraft:speed 1 0 true

schedule function custom_manhunt:loop 10t append