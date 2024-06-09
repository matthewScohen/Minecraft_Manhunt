execute as @a[team=Runner] at @s store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[0] int 1 run data get entity @s Pos[0]
execute as @a[team=Runner] at @s store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[1] int 1 run data get entity @s Pos[1]
execute as @a[team=Runner] at @s store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[2] int 1 run data get entity @s Pos[2]

data modify block 0 200 0 Items append from storage minecraft:position Item
execute as @a[nbt={SelectedItem: {id: "minecraft:compass"}}] run item replace entity @s weapon.mainhand from block 0 200 0 container.0

execute as @a if score @s deaths matches 1 run execute as @s if score StarterKitsEnabled settings matches 1 run function custom_manhunt:get_starter_kit

schedule function custom_manhunt:loop 10t