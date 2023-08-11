# tag the item
tag @e[type=item, nbt={Item: {id: "minecraft:amethyst_shard"}}] add eldritch_smite

execute if entity @e[type=item, tag=eldritch_smite] run function classpvp:warlock/eldritch_smite/init