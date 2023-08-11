execute at @a[scores={serrated_bleed_dmg=1..}] run particle minecraft:item minecraft:redstone ~ ~0.75 ~ 0 0.5 0 0.1 20
scoreboard players add @a[scores={serrated_bleed_dmg=1..}] hp_dmg 2
scoreboard players remove @a[scores={serrated_bleed_dmg=1..}] serrated_bleed_dmg 1
execute if entity @p[scores={serrated_bleed_dmg=1..}] run schedule function classpvp:duelist/serrated_strike/bleed 2s