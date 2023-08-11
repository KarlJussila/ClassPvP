# play breaking sound
playsound minecraft:block.glass.break block @a ~ ~ ~
playsound minecraft:block.glass.break block @a ~ ~ ~
playsound minecraft:block.glass.break block @a ~ ~ ~
playsound minecraft:block.glass.break block @a ~ ~ ~

# display breaking particles
execute if entity @s[name="ice_wall_x"] run particle minecraft:block minecraft:packed_ice ~ ~1.5 ~ 1.7 1 0.2 1 200
execute if entity @s[name="ice_wall_z"] run particle minecraft:block minecraft:packed_ice ~ ~1.5 ~ 0.2 1 1.7 1 200

# remove the wall
execute if entity @s[name="ice_wall_x"] run fill ~-2 ~ ~ ~2 ~3 ~ air replace packed_ice
execute if entity @s[name="ice_wall_z"] run fill ~ ~ ~-2 ~ ~3 ~2 air replace packed_ice

# kill the marker
kill @s

# replace any parts of other walls that may have overlapped
execute as @e[tag=ice_wall] at @s run function classpvp:duelist/ice_wall/place_wall