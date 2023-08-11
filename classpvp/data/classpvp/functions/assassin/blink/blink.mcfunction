execute at @e[type=item, tag=blink] align xz positioned ~0.5 ~ ~0.5 run teleport @p[team=assassin] ~ ~ ~

# replace the item
function classpvp:assassin/blink/give

# remove the item entity
kill @e[type=item, tag=blink]