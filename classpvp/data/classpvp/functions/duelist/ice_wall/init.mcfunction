execute if entity @s[predicate=classpvp:facing_north] run summon marker ~ ~ ~ {CustomName:'"ice_wall_x"', Tags:["ice_wall"]}
execute if entity @s[predicate=classpvp:facing_south] run summon marker ~ ~ ~ {CustomName:'"ice_wall_x"', Tags:["ice_wall"]}
execute if entity @s[predicate=classpvp:facing_east] run summon marker ~ ~ ~ {CustomName:'"ice_wall_z"', Tags:["ice_wall"]}
execute if entity @s[predicate=classpvp:facing_west] run summon marker ~ ~ ~ {CustomName:'"ice_wall_z"', Tags:["ice_wall"]}

# play sounds
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 2
playsound minecraft:block.gravel.break master @a ~ ~ ~ 1 0
playsound minecraft:block.snow.break master @a ~ ~ ~ 2 .5

execute as @e[type=marker, tag=ice_wall, tag=!placed] at @s run function classpvp:duelist/ice_wall/place_wall

execute at @e[name="ice_wall_x"] positioned ~-2.5 ~ ~-0.5 as @p[dx=3, dy=2, dz=0] run teleport @s ~2.5 ~3 ~0.5
execute at @e[name="ice_wall_z"] positioned ~-0.5 ~ ~-2.5 as @p[dx=0, dy=2, dz=3] run teleport @s ~0.5 ~3 ~2.5

tag @e[type=marker, tag=ice_wall] add placed

# remove the level cost
xp add @p[team=duelist] -20 levels