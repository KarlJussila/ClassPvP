# execute at @p[tag=eldritch_smite_mark] run summon lightning_bolt ~ ~ ~ {Team:warlock, Tags:["eldritch_smite"]}
execute at @p[tag=eldritch_smite_mark] run function classpvp:warlock/eldritch_smite/summon_fangs
effect give @p[team=warlock] speed 5 3
tag @a remove eldritch_smite_mark
tag @p[team=warlock] add disable_smite
schedule function classpvp:warlock/eldritch_smite/enable_smite 30s