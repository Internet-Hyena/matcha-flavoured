#check to see which pig was bred, and if they were, run fed_effects
execute as @e[type=minecraft:pig,distance=..8] run execute if data entity @s {InLove:600} run function matcha:environmental/pig/fed_effects
advancement revoke @s only matcha:mechanics/pig/bred_pig