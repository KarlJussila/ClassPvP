scoreboard players remove @a hp_dmg 1
scoreboard players add @a[scores={serrated_bleed_dmg=1..}] hp_dmg 1
execute if score Game state matches 1 run schedule function classpvp:state1/regen 3s replace