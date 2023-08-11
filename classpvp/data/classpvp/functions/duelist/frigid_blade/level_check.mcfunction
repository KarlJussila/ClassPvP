# kill the item
kill @e[type=item, tag=frigid_blade]

# give the item back if they don't have the levels
execute unless entity @s[level=30..] run function classpvp:duelist/frigid_blade/give

# if they have the levels, initialize the ability
execute at @s[level=30..] run function classpvp:duelist/frigid_blade/init