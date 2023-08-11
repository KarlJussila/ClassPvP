# summon fangs below trident
execute at @e[type=trident, tag=deep_maw, tag=!hit, scores={entity_timer=2..}] run summon marker ~ ~ ~ {CustomName:'"summon_fang"'}
execute as @e[type=marker, name="summon_fang"] at @s run spreadplayers ~ ~ 0 1 under 30 false @s
execute at @e[type=marker, name="summon_fang"] run summon evoker_fangs ~ ~ ~
kill @e[type=marker, name="summon_fang"]

# handle trident hitting the ground
execute unless entity @e[type=trident, tag=deep_maw] run tag @e[type=trident,nbt={Trident: {tag: {Enchantments: [{lvl: 3s, id:"minecraft:loyalty"}]}}}] add deep_maw
execute as @e[type=trident, tag=deep_maw, tag=!done, nbt={inGround:1b}] run tag @s add hit
execute at @e[type=trident, tag=hit, tag=!done] run function classpvp:warlock/channel/deep_maw/summon_marker
tag @e[type=trident, tag=hit] add done

# handle marker entity for ground/player strike
execute at @e[type=marker, name="deep_maw_up"] run function classpvp:warlock/channel/deep_maw/summon_fangs
execute at @e[type=marker, name="deep_maw_down"] run function classpvp:warlock/channel/deep_maw/summon_fangs
execute as @e[type=marker, name="deep_maw_up"] at @s run teleport @s ~ ~1 ~
execute as @e[type=marker, name="deep_maw_down"] at @s run teleport @s ~ ~-1 ~