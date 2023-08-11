# update universally available scores
execute as @a store result score @s x_rotation run data get entity @s Rotation[0]

# run the function for the current state
execute if score Game state matches 0 run function classpvp:state0/main
execute if score Game state matches 1 run function classpvp:state1/main