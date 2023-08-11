tag @s add frozen
execute at @s run particle minecraft:item minecraft:light_blue_stained_glass ~ ~0.75 ~ 0 0.5 0 0.2 100
execute at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 2 0
execute at @s run playsound minecraft:entity.player.breath master @a ~ ~ ~ 2 1

effect give @s slowness 2 127 true
schedule function classpvp:duelist/frigid_blade/end_freeze 2s

function classpvp:duelist/frigid_blade/end

# refund some xp
xp add @p[team=duelist] 15 levels