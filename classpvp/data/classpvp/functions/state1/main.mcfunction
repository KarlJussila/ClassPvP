# run class functions
execute as @p[team=assassin] run function classpvp:assassin/main
execute as @p[team=duelist] run function classpvp:duelist/main
execute as @p[team=warlock] run function classpvp:warlock/main

# increment entity timers
scoreboard players add @e[type=!player,tag=!ignore] entity_timer 1

# handle deaths
function classpvp:state1/handle_death

# reset stuff
function classpvp:shared/reset