# tag dead players
tag @a[scores={deaths=1..}] add dead

# clear their inventory
clear @a[tag=dead, tag=!keepInventory]

# run their class's death function
execute as @p[team=assassin, tag=dead] run function classpvp:assassin/death
execute as @p[team=duelist, tag=dead] run function classpvp:assassin/death

# schedule the spawn function to respawn them
execute as @a[tag=dead] run schedule function classpvp:state1/respawn 4t

# remove the score
scoreboard players reset @a deaths