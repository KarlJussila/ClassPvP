kill @e[type=item, tag=eldritch_smite]
execute unless entity @p[tag=eldritch_smite_mark] run function classpvp:warlock/eldritch_smite/give
execute if entity @p[tag=eldritch_smite_mark] run function classpvp:warlock/eldritch_smite/smite