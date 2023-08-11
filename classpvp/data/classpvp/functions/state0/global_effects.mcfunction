effect give @a minecraft:weakness 999999 20 true
effect give @a minecraft:resistance 999999 20 true
effect give @a minecraft:instant_health 999999 20 true

execute if score Game state matches 0 run schedule function classpvp:state0/global_effects 5s