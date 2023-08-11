# schedule claim ability to close in a second and a half after each hit
execute if entity @s[scores={assassin_claim=1..}] run schedule function classpvp:assassin/claim/end 30t replace

# initialize the claim ability
execute if entity @s[scores={assassin_claim=1..}, tag=!claim_active] run function classpvp:assassin/claim/init

# tag the player if they get a second hit while the ability is active
tag @s[scores={assassin_claim=1..}, tag=claim_active] add claimed

# reset the player's assassin_claim score
scoreboard players reset @a assassin_claim