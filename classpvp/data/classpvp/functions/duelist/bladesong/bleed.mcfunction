execute at @a[scores={bladesong_bleed_dmg=1..}] run particle minecraft:item minecraft:redstone_block ~ ~0.75 ~ 0 0.5 0 0.2 20
scoreboard players add @a[scores={bladesong_bleed_dmg=1..}] hp_dmg 1
scoreboard players remove @a[scores={bladesong_bleed_dmg=1..}] bladesong_bleed_dmg 1
execute if entity @p[scores={bladesong_bleed_dmg=1..}] run schedule function classpvp:duelist/bladesong/bleed 1t