# tag the item
tag @e[type=item, nbt={Item: {id: "minecraft:red_dye"}}] add serrated_strike

# initialize the ability if the duelist has enough levels
execute if entity @e[type=item, tag=serrated_strike] run function classpvp:duelist/serrated_strike/level_check

# initiate bleed if someone gets hit
execute if entity @p[tag=serrated_bleed] run schedule function classpvp:duelist/serrated_strike/bleed 2s
tag @a remove serrated_bleed