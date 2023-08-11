# tag the item
tag @s add blink

# give the item no gravity
data merge entity @s {NoGravity:1}

# execute the blink function after two seconds
schedule function classpvp:assassin/blink/blink 2s