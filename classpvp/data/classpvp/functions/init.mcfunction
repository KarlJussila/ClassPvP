# set gamerules
gamerule commandBlockOutput false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule announceAdvancements false
gamerule disableElytraMovementCheck true
gamerule disableRaids true
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule randomTickSpeed 0
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule showDeathMessages false

# create scoreboards
scoreboard objectives add assassin_claim minecraft.used:minecraft.wooden_sword
scoreboard objectives add entity_timer dummy
scoreboard objectives add state dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add serrated_bleed_dmg dummy
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add bladesong_bleed_dmg dummy
scoreboard objectives add x_rotation dummy
scoreboard objectives add warlock_charge dummy
scoreboard objectives add ghostly_gaze_time dummy

# math stuff
scoreboard objectives add Math dummy
scoreboard players set #10 Math 10
scoreboard players set #15 Math 15

# create teams
team add assassin
team modify assassin nametagVisibility never

team add duelist
team modify duelist nametagVisibility never

team add warlock
team modify warlock nametagVisibility never

# set Game state
scoreboard players set Game state 0

# run lobby init
function classpvp:state0/init


# call global effects
function classpvp:global_effects