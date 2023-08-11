execute as @e[type=arrow, tag=flash_frozen] at @s if block ~ ~ ~ blue_ice run setblock ~ ~ ~ air destroy
execute as @e[type=arrow, tag=flash_frozen] at @s if block ~ ~ ~ packed_ice run setblock ~ ~ ~ blue_ice
execute as @e[type=arrow, tag=flash_frozen] at @s if block ~ ~ ~ ice run setblock ~ ~ ~ packed_ice
execute as @e[type=arrow, tag=flash_frozen] at @s unless block ~ ~ ~ #minecraft:ice run kill @s