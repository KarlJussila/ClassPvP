# tag the item
tag @e[type=item, nbt={Item: {id: "minecraft:enchanted_book"}}] add bladesong

# initialize the ability if the duelist has enough levels
execute if entity @e[type=item, tag=bladesong] at @s run function classpvp:duelist/bladesong/level_check

# make particles around the duelist while the ability is active
execute at @s[tag=bladesong] run particle minecraft:dust_color_transition 1 1 1 1 0.8 0.8 1 ~ ~1 ~ 1 1 1 0 4 force

# make a continuous sound ahead of the duelist while the ability is active
execute at @s[tag=bladesong] positioned ^ ^ ^5 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.7 1