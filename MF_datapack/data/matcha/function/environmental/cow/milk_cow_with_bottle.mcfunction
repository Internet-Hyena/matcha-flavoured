loot give @s loot matcha:food/matcha/milk_bottle
execute as @e[type=minecraft:cow,distance=..8] run execute if data entity @s {InLove:600} run data merge entity @s {InLove:0}
advancement revoke KleiWright only matcha:mechanics/cow/milk_cow_with_bottle