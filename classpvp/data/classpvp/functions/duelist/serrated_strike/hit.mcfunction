tag @s add serrated_bleed
scoreboard players add @s serrated_bleed_dmg 3
execute at @s run particle minecraft:item minecraft:redstone ~ ~0.75 ~ 0 0.5 0 0.2 50
execute at @s run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 2 2

function classpvp:duelist/serrated_strike/end

# refund some xp
xp add @p[team=duelist] 20 levels