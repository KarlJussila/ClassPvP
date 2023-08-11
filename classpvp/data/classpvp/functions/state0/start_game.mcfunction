# clear lobby effects
effect clear @a
gamerule fallDamage true

# cancel the global_effects schedule
schedule clear classpvp:state0/global_effects

# change the game state to 1
scoreboard players set Game state 1
function classpvp:state1/init