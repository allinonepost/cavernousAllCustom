
### Tellraw

execute as @a if score @s joinmsg matches 1 unless score @s has_seen_tellraw matches 1 run function cavernous:tellraw

### Advancements

execute as @a at @s if score @s broke.spore_blossom matches 1.. if biome ~ ~ ~ cavernous:tropical_caves run advancement grant @s only cavernous:plantera
scoreboard players set @a broke.spore_blossom 0

### Zombies CONVERSION

tag @e[type=zombie,predicate=cavernous:conversion/zombie_arid,tag=!not_husk] add husk
tag @e[type=zombie,predicate=cavernous:conversion/zombie_desert,tag=!not_husk] add husk
tag @e[type=zombie,predicate=cavernous:conversion/zombie_painted,tag=!not_husk] add husk

tag @e[type=zombie,tag=!husk] add not_husk

execute as @e[type=zombie,tag=!not_husk] at @s if biome ~ ~ ~ #cavernous:desert run function cavernous:mob_conversion/husk_replace

## Creeper

execute if score .global creeper.enabled matches 1 run function cavernous:mobs/creeper_tick

execute if score .global creeper.enabled matches 0 run function cavernous:mob_conversion/creeper_unconvert

### Skeleton CONVERSION

execute as @e[type=skeleton,tag=not_stray,tag=!not_miner] if predicate cavernous:underground if predicate cavernous:miner_skeleton run tag @s add miner_skeleton
execute as @e[type=skeleton,tag=not_stray,tag=!miner_skeleton] run tag @s add not_miner
execute as @e[type=skeleton,tag=miner_skeleton,tag=!not_miner] run function cavernous:mob_conversion/miner_replace

tag @e[type=skeleton,predicate=!cavernous:in_tropical] add not_mossclad
execute as @e[type=skeleton,tag=!not_mossclad,tag=!mossclad,tag=!miner] at @s if biome ~ ~ ~ cavernous:tropical_caves run function cavernous:mob_conversion/mossclad_replace
execute as @e[type=skeleton,tag=mossclad,predicate=cavernous:killed_by_player] run say hi


tag @e[type=skeleton,predicate=!cavernous:conversion/skeleton_icy] add not_stray
execute as @e[type=skeleton,tag=!not_stray,tag=!mossclad,tag=!miner] at @s if biome ~ ~ ~ #cavernous:ice run function cavernous:mob_conversion/stray_replace

### Custom Items

    #Miner Head
    execute as @a[predicate=cavernous:wearing_mining_helmet] run effect give @s night_vision 10 1 true

    #Torch Arrow
    execute as @e[type=arrow,nbt={Color:16763190,inGround:1b}] at @s run function cavernous:items/torch_arrow/check

    #Dynamite
    execute as @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b,tag:{Tags:[dynamite]}},OnGround:1b}] if data entity @s Thrower at @s run function cavernous:items/dynamite/summon

    #Dynamite Arrow
    execute as @e[type=arrow,nbt={Color:5855577,inGround:1b}] at @s run function cavernous:items/explosive_arrow/explode

    #Chain arrow
    execute as @e[type=arrow,nbt={Color:4080476,inGround:1b,pickup:1b}] at @s run function cavernous:items/chain_arrow/tick
    execute as @e[type=arrow,nbt={Color:4080476,inGround:1b},scores={chain_arrow.timer=1..}] at @s run function cavernous:items/chain_arrow/tick