# teleport them to the map
execute as @a[tag=dead] run function classpvp:state1/spawn

# reset their death score
tag @a remove dead