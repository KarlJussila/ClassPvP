scoreboard players reset @s warlock_charge
clear @s ender_eye
tag @s add deep_maw
execute as @a at @s facing entity @p[team=warlock] eyes positioned ^ ^ ^5 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 2 1
effect give @s speed 30 3 true
effect give @s jump_boost 30 4 true
function classpvp:warlock/trident/give_loyal
schedule function classpvp:warlock/channel/deep_maw/end 30s