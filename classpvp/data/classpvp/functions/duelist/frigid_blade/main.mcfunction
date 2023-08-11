# tag the item
tag @e[type=item, nbt={Item: {id: "minecraft:dragon_breath"}}] add frigid_blade

# initialize the ability if the duelist has enough levels
execute if entity @e[type=item, tag=frigid_blade] run function classpvp:duelist/frigid_blade/level_check

# active ability particles
execute at @a[tag=frozen] run particle minecraft:snowflake ~ ~0.75 ~ 0.1 0.5 0.1 0 3