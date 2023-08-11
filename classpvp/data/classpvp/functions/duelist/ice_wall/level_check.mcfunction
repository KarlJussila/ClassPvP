# kill the stray
tp @e[type=stray, name="place_ice_wall"] ~ -400.0 ~
kill @e[type=stray, name="place_ice_wall"]

# if they have the levels, initialize the ability
execute if entity @s[level=20..] run function classpvp:duelist/ice_wall/init

# give the item back
function classpvp:duelist/ice_wall/give