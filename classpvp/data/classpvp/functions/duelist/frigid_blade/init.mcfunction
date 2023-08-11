# tag the player
tag @s add frigid_blade

# remove the level cost from the player
xp add @s -30 levels

# schedule the ability to end
schedule function classpvp:duelist/frigid_blade/end 5s

# play sounds
playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 2
playsound minecraft:block.grindstone.use master @a ~ ~ ~ 1 2
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 2 .7

# enchant the sword
function classpvp:duelist/blade/give_enchanted