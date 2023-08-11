# give the player items and levels if they successfully claimed
execute as @p[team=assassin, tag=claimed] run function classpvp:assassin/execution_arrow/give
execute as @p[team=assassin, tag=claimed] run function classpvp:assassin/dissipate/give
execute as @p[team=assassin, tag=claimed] run xp add @s 7 levels

# reset the player's scores and remove their tags
scoreboard players reset @a assassin_claim
tag @a remove claim_active
tag @a remove claimed

# return the sword to its original state
function classpvp:assassin/claim/give