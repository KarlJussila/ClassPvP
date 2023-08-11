# right click display for debugging
title @s times 0 5 0
title @s[tag=use_ender_eye] actionbar ["",{"text":"Right Click: ","color":"black"},{"text":"ON","color":"dark_green"}]
title @s[tag=!use_ender_eye] actionbar ["",{"text":"Right Click: ","color":"black"},{"text":"OFF","color":"dark_red"}]

# reset their charge if they stop holding right click
scoreboard players reset @s[tag=!use_ender_eye] warlock_charge

# charging particles
execute at @s[tag=use_ender_eye] run particle minecraft:nautilus ~ ~1.75 ~ 0 0 0 5 5 force
execute at @s[tag=use_ender_eye, scores={warlock_charge=60..}] run particle minecraft:nautilus ~ ~1.75 ~ 0 0 0 5 5 force
execute at @s[tag=use_ender_eye, scores={warlock_charge=100..}] run particle minecraft:nautilus ~ ~1.75 ~ 0 0 0 10 10 force

# charging sound
execute if entity @s[tag=use_ender_eye] at @a run playsound minecraft:entity.guardian.ambient master @a ~ ~ ~ 1

# clear the weather if they stop charging
execute unless entity @s[tag=use_ender_eye] unless entity @s[tag=deep_maw] run weather clear

# initialize storm_fury if the warlock has finished channeling
# execute if entity @s[scores={warlock_charge=100..}] run function classpvp:warlock/channel/storm_fury/init
execute if entity @s[scores={warlock_charge=100..}] run function classpvp:warlock/channel/deep_maw/init

# run storm_fury main if it is active
execute if entity @s[tag=storm_fury] run function classpvp:warlock/channel/storm_fury/main
execute if entity @s[tag=deep_maw] run function classpvp:warlock/channel/deep_maw/main

# kill the trident if storm fury has ended
kill @e[type=trident, tag=kill, nbt={DealtDamage:1b}]