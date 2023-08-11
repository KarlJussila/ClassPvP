tag @s add use_ender_eye
advancement revoke @s only classpvp:shared/use_ender_eye
execute if entity @s[team=warlock] run function classpvp:warlock/channel/use_ender_eye