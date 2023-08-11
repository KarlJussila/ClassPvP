# kill the item
kill @e[type=item, tag=serrated_strike]

# give the item back if they don't have the levels
execute unless entity @s[level=40..] run function classpvp:duelist/serrated_strike/give

# if they have the levels, initialize the ability
execute at @s[level=40..] run function classpvp:duelist/serrated_strike/init