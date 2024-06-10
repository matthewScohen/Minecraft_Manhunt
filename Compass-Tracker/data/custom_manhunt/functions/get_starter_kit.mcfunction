scoreboard players reset @s deaths

# Level 0 (at start)
give @s minecraft:compass

# Level 1 (30 mins in)
execute if score StarterKitLevel variable matches 1 run give @s minecraft:wooden_pickaxe
execute if score StarterKitLevel variable matches 1 run give @s minecraft:wooden_axe
execute if score StarterKitLevel variable matches 1 run give @s minecraft:cooked_beef 2

# Level 2 (60 mins in)
execute if score StarterKitLevel variable matches 2 run give @s minecraft:stone_pickaxe
execute if score StarterKitLevel variable matches 2 run give @s minecraft:stone_shovel
execute if score StarterKitLevel variable matches 2 run give @s minecraft:stone_axe
execute if score StarterKitLevel variable matches 2 run give @s minecraft:cooked_beef 4

# Level 3 (90 mins in)
execute if score StarterKitLevel variable matches 3.. run give @s minecraft:stone_pickaxe
execute if score StarterKitLevel variable matches 3.. run give @s minecraft:stone_shovel
execute if score StarterKitLevel variable matches 3.. run give @s minecraft:stone_axe
execute if score StarterKitLevel variable matches 3.. run give @s minecraft:stone_sword
execute if score StarterKitLevel variable matches 3.. run give @s minecraft:leather_helmet
execute if score StarterKitLevel variable matches 3.. run give @s minecraft:leather_chestplate
execute if score StarterKitLevel variable matches 3.. run give @s minecraft:leather_leggings
execute if score StarterKitLevel variable matches 3.. run give @s minecraft:leather_boots
execute if score StarterKitLevel variable matches 3.. run give @s minecraft:cooked_beef 8