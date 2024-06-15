# Level 0 (at start)
item replace entity @s hotbar.8 with minecraft:compass

# Level 1 (30 mins in)
execute if score StarterKitLevel variable matches 1 run item replace entity @s hotbar.0 with minecraft:wooden_pickaxe
execute if score StarterKitLevel variable matches 1 run item replace entity @s hotbar.2 with minecraft:wooden_axe
execute if score StarterKitLevel variable matches 1 run item replace entity @s hotbar.4 with minecraft:cooked_beef 2

# Level 2 (60 mins in)
execute if score StarterKitLevel variable matches 2 run item replace entity @s hotbar.0 with minecraft:stone_pickaxe
execute if score StarterKitLevel variable matches 2 run item replace entity @s hotbar.1 with minecraft:stone_shovel
execute if score StarterKitLevel variable matches 2 run item replace entity @s hotbar.2 with minecraft:stone_axe
execute if score StarterKitLevel variable matches 2 run item replace entity @s hotbar.4 with minecraft:cooked_beef 4

# Level 3 (90 mins in)
execute if score StarterKitLevel variable matches 3.. run item replace entity @s hotbar.0 with minecraft:stone_pickaxe
execute if score StarterKitLevel variable matches 3.. run item replace entity @s hotbar.1 with minecraft:stone_shovel
execute if score StarterKitLevel variable matches 3.. run item replace entity @s hotbar.2 with minecraft:stone_axe
execute if score StarterKitLevel variable matches 3.. run item replace entity @s hotbar.3 with minecraft:stone_sword
execute if score StarterKitLevel variable matches 3.. run item replace entity @s hotbar.4 with minecraft:cooked_beef 8
execute if score StarterKitLevel variable matches 3.. run item replace entity @s armor.head with minecraft:leather_helmet
execute if score StarterKitLevel variable matches 3.. run item replace entity @s armor.chest with minecraft:leather_chestplate
execute if score StarterKitLevel variable matches 3.. run item replace entity @s armor.legs with minecraft:leather_leggings
execute if score StarterKitLevel variable matches 3.. run item replace entity @s armor.feet with minecraft:leather_boots