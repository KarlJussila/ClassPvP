execute as @p[team=duelist, level=..99] run xp add @s 4 levels
xp set @p[team=duelist, level=100..] 100 levels
xp set @p[team=duelist, level=100..] 0 points

execute if entity @p[team=duelist, tag=serrated_strike] run function classpvp:duelist/serrated_strike/hit
execute if entity @p[team=duelist, tag=frigid_blade] run function classpvp:duelist/frigid_blade/hit
execute if entity @p[team=duelist, tag=bladesong] run function classpvp:duelist/bladesong/hit
advancement revoke @s only classpvp:duelist/hit_by_duelist