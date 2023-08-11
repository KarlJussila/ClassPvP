tag @s add flash_frozen
data merge entity @s {inGround:1b}
setblock ~ ~ ~ ice keep
#particle minecraft:flash ~ ~ ~ 0 0 0 0 1

# play sounds
execute at @s run playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 2 1

# remove level cost
xp add @p[team=duelist] -8 levels