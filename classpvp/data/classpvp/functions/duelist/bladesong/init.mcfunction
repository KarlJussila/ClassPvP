# tag the player
tag @s add bladesong

# remove the level cost from the player
xp add @s -100 levels

# enchant the sword
function classpvp:duelist/blade/give_enchanted

# play sounds
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1.5
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2

# display particles
particle minecraft:item minecraft:packed_ice ~ ~0.75 ~ 0.1 0.7 0.1 0.5 100 force

# schedule the ability to end
schedule function classpvp:duelist/bladesong/end 10s