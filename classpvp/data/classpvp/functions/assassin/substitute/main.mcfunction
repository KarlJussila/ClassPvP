# give the player the swap item when they summon the substitute
execute if entity @e[type=wither_skeleton, name="Substitute", tag=!set] run function classpvp:assassin/substitute/give_swap

# tag the substitute to denote that it has run init commands
tag @e[type=wither_skeleton, name="Substitute", tag=!set] add set

# tag the player with sub_available if the substitute is still alive
execute unless entity @e[type=wither_skeleton, name="Substitute", tag=set] run scoreboard players add @s[tag=sub_available] hp_dmg 6
tag @a remove sub_available
execute if entity @e[type=wither_skeleton, name="Substitute", tag=set] run tag @s add sub_available
clear @a[tag=!sub_available] magma_cube_spawn_egg

# teleport the swap entity to the player
execute at @s run teleport @e[type=wither_skeleton, name="swap"] ~ ~ ~

# if there is a swap entity, teleport the player to the substitute
execute if entity @e[type=wither_skeleton, name="swap"] at @e[type=wither_skeleton, name="Substitute", tag=set] run teleport @s ~ ~ ~

# teleport the substitute to the swap entity
execute at @e[type=wither_skeleton, name="swap"] run teleport @e[type=wither_skeleton, name="Substitute", tag=set] ~ ~ ~

# give the swap item back to the player
execute if entity @e[type=wither_skeleton, name="swap"] run function classpvp:assassin/substitute/give_swap

# kill the swap entity
teleport @e[type=wither_skeleton, name="swap"] ~ -400 ~
kill @e[type=wither_skeleton, name="swap"]