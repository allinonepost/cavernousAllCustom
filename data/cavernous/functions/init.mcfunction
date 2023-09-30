
gamerule commandBlockOutput false

scoreboard objectives add joinmsg minecraft.custom:minecraft.play_time
scoreboard objectives add has_seen_tellraw dummy

scoreboard objectives add broke.spore_blossom minecraft.mined:spore_blossom

scoreboard objectives add thrower.check dummy

scoreboard objectives add chain_arrow.timer dummy

scoreboard objectives add creeper.enabled dummy
execute unless score .global creeper.enabled matches 0 run scoreboard players set .global creeper.enabled 1
