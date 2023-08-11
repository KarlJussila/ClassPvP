# tag any player with luck amplifier 0
tag @e[nbt={ActiveEffects: [{Id:26b, Amplifier:0b}]}] add execution_marked

# schedule execution in 15 ticks so they have time to rise.
execute if entity @e[nbt={ActiveEffects: [{Id:26b, Amplifier:0b}]}] run schedule function classpvp:assassin/execution_arrow/kill 15t append

# remove the luck effect
effect clear @e[tag=execution_marked] minecraft:luck

# give them levitation so they float up before exploding
effect give @e[tag=execution_marked] levitation 3 6 true

# create particles around them to make the effect recognizable
execute as @e[tag=execution_marked] at @s run particle minecraft:witch ~ ~ ~ 1 1 1 1 20
execute at @e[tag=execution_marked] run particle minecraft:cloud ~ ~1 ~ 0.3 0 0.3 0.6 20
execute at @e[type=arrow, nbt={CustomPotionEffects: [{Id: 26b, Amplifier: 0b}]}] run particle witch ~ ~ ~ 0.1 0.1 0.1 1 5 force @a