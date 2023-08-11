# make particle effects to show the trail
particle minecraft:soul ~ ~ ~ 0 0 0 0 1 force

# if there's still air and the player is within ten blocks, recurse
execute if block ~ ~ ~ air unless entity @s[distance=10..] positioned ^ ^ ^0.5 run function classpvp:assassin/dash/dash

# if the recursion has reached its maximum depth, determine why, then summon an item frame accordingly
# the item frame centers the dash position on a block
execute unless block ~ ~ ~ air positioned ^ ^ ^-0.5 run summon minecraft:item_frame ~ ~ ~ {Invisible:1b, CustomName:'"align_dash"'}
execute if entity @s[distance=10.., tag=!dashed] run summon minecraft:item_frame ~ ~ ~ {Invisible:1b, CustomName:'"align_dash"'}

# teleport the player to the item frame
execute at @e[name="align_dash", type=item_frame] run teleport @s[tag=!dashed] ~ ~-0.96875 ~

# remove the item frame
kill @e[type=item_frame, name="align_dash"]