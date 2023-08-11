# if the position is in a wall, step back toward the player half a block and recurse
tag @s remove dash_valid
execute if block ~ ~ ~ air if block ~ ~1 ~ air run tag @s add dash_valid
execute unless entity @s[tag=dash_valid] positioned ^ ^ ^-0.5 run function classpvp:assassin/dash/dash

# if the recursion has finished, teleport the player to the center of the destination block
execute at @s[tag=dash_valid] positioned ~ ~0.7 ~ run particle minecraft:poof ~ ~1 ~ 0.1 0.8 0.1 .1 50
execute if entity @s[tag=dash_valid] align xz run teleport @s ~0.5 ~ ~0.5
execute at @s[tag=dash_valid] positioned ~ ~0.7 ~ run particle minecraft:poof ~ ~1 ~ 0.1 0.8 0.1 .1 50