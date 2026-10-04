give @s glass_bottle 1
execute as @e[type=minecraft:mooshroom,distance=..8] run execute if data entity @s {InLove:600} run data merge entity @s {InLove:0}
advancement revoke KleiWright only matcha:mechanics/cow/milk_mooshroom_with_bottle