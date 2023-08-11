# tag the player if they hold the dissipate item
tag @s[nbt={SelectedItem: {id:"minecraft:allium"}}] add dissipate

# give the player invisibility and speed
effect give @s[tag=dissipate] minecraft:invisibility 4 1 true
effect give @s[tag=dissipate] minecraft:speed 2 1 true

# create a puff of smoke at the player's position
execute as @s[tag=dissipate] at @s anchored eyes run particle minecraft:ash ~ ~2 ~ 1 1 1 1 500 normal
execute as @s[tag=dissipate] at @s anchored eyes run particle minecraft:smoke ~ ~ ~ 2 2 2 0.1 2500 normal

# remove the player's armor
item replace entity @s[tag=dissipate] armor.head with air
item replace entity @s[tag=dissipate] armor.chest with air
item replace entity @s[tag=dissipate] armor.legs with air
item replace entity @s[tag=dissipate] armor.feet with air

# schedule the armor to be put back on after the invisibility runs out
execute if entity @s[tag=dissipate] run schedule function classpvp:assassin/armor 80t

# schedule the dissipate item to be given back
execute if entity @s[tag=dissipate] run schedule function classpvp:assassin/dissipate/give 400t

# clear the item from the player's inventory
clear @s[tag=dissipate] minecraft:allium

# remove the tag
tag @s remove dissipate
