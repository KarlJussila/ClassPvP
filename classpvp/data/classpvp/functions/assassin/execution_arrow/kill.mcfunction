# summon a powerful explosion at the player's location
execute at @e[tag=execution_marked] run summon creeper ~ ~ ~ {Fuse:0s, ExplosionRadius:7b}

# kill the player, to get through any invulnerabilities
kill @e[tag=execution_marked]

# remove the execution_marked tag from the player
tag @e[tag=execution_marked] remove execution_marked