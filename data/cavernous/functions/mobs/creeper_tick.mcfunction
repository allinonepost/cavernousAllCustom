
### Creeper CONVERSION

execute as @e[type=creeper,tag=!converted] run function cavernous:mob_conversion/creeper_convert

execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:26}]}] at @s run function cavernous:mobs/creeper_explode
