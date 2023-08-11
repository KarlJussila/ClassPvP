# tag the player if the item exists
tag @s add serrated_strike

# remove the level cost from the player
xp add @s -40 levels

# play sounds
playsound minecraft:item.axe.scrape master @a ~ ~ ~ 2 1
playsound minecraft:item.axe.scrape master @a ~ ~ ~ 2 1

# enchant the sword
function classpvp:duelist/blade/give_enchanted

# schedule the ability to end
schedule function classpvp:duelist/serrated_strike/end 5s