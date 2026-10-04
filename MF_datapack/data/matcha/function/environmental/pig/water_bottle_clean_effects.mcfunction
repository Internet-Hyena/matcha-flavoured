execute at @s run particle minecraft:falling_dripstone_water ~ ~ ~ .5 .1 .5 0.1 50 normal
playsound minecraft:entity.pig.ambient neutral @a
scoreboard players set @s matcha.muddy_cooldown 0
data merge entity @s {InLove:0}