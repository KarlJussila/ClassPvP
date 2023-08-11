# tag the player
tag @s add claim_active

# reset the player's assassin_claim score
scoreboard players reset @a assassin_claim

# give the player an enchanted sword to denote the claim window
item replace entity @s hotbar.0 with wooden_sword{Unbreakable:1,display:{Name:'[{"text":"Asssassin\'s Claim","italic":false,"color":"light_purple","bold":true}]'},Enchantments:[{id:"knockback",lvl:2},{id:"sharpness",lvl:2}],HideFlags:5} 