# kill the item
kill @e[type=item, tag=bladesong]

# give the item back if they don't have the levels
execute unless entity @s[level=100..] run function classpvp:duelist/bladesong/give

# if they have the levels, initialize the ability
execute at @s[level=100..] run function classpvp:duelist/bladesong/init