kill @e[type=item,nbt={Item:{id:"minecraft:basalt",Count:1b}},distance=..2]
execute at @e[tag=geyser,type=armor_stand,tag=broken] run summon item ~ ~0.9 ~ {Item:{id:"magma_cube_spawn_egg",Count:1,tag:{EntityTag:{id:armor_stand,Invisible:1b,Marker:1b,DisabledSlots:4144959,NoGravity:1b,Rotation:[0f,0f],Tags:[geyser],ArmorItems:[{},{},{},{id:player_head,tag:{display:{Name:'{"text":"Magma Block"}'},SkullOwner:{Id:[I;1830371341,1597587671,-1944414330,67133243],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzIxZDA5MzBiZDYxZmVhNGNiOTAyN2IwMGU5NGUxM2Q2MjAyOWM1MjRlYTBiMzI2MGM3NDc0NTdiYTFiY2ZhMSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f]},display:{Name:'[{"text":"Geyser Block","italic":false}]'}}}}
kill @e[type=armor_stand,tag=geyser,tag=broken,tag=placed]