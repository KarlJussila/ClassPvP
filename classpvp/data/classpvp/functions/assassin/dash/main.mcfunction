execute if entity @s[level=12] at @s anchored eyes positioned ^ ^ ^10 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force @s

xp set @s[level=13..] 12 levels
xp add @s[level=..11] 1 points
execute if entity @s[predicate=classpvp:is_sneaking, level=12] at @s anchored eyes positioned ^ ^ ^10 run function classpvp:assassin/dash/dash
execute if entity @s[predicate=classpvp:is_sneaking, level=12] run xp set @s 0 levels
