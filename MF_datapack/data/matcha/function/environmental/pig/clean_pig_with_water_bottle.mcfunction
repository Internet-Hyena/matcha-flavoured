#Put this in another function so we only have to check conditions ONCE
execute as @e[type=minecraft:pig,distance=..8] run execute if data entity @s {InLove:600} run function matcha:environmental/pig/water_bottle_clean_effects
advancement revoke KleiWright only matcha:mechanics/pig/clean_pig_with_water_bottle