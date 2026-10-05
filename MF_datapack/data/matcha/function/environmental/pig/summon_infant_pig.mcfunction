execute if entity @s[nbt={variant:"minecraft:temperate"}] run \
    summon pig ~ ~ ~ {Age:-48000,variant:"minecraft:temperate",Tags:["infant"],attributes:[{id:"minecraft:scale",base:0.6}]}
execute if entity @s[nbt={variant:"minecraft:cold"}] run \
    summon pig ~ ~ ~ {Age:-48000,variant:"minecraft:cold",Tags:["infant"],attributes:[{id:"minecraft:scale",base:0.6}]}
execute if entity @s[nbt={variant:"minecraft:warm"}] run \
    summon pig ~ ~ ~ {Age:-48000,variant:"minecraft:warm",Tags:["infant"],attributes:[{id:"minecraft:scale",base:0.6}]}
# Summon Infant
execute if entity @s[nbt={variant:"matcha:muddy_temperate"}] run \
    summon pig ~ ~ ~ {Age:-48000,variant:"minecraft:temperate",Tags:["infant"],attributes:[{id:"minecraft:scale",base:0.6}]}
execute if entity @s[nbt={variant:"matcha:muddy_cold"}] run \
    summon pig ~ ~ ~ {Age:-48000,variant:"minecraft:cold",Tags:["infant"],attributes:[{id:"minecraft:scale",base:0.6}]}
execute if entity @s[nbt={variant:"matcha:muddy_warm"}] run \
    summon pig ~ ~ ~ {Age:-48000,variant:"minecraft:warm",Tags:["infant"],attributes:[{id:"minecraft:scale",base:0.6}]}
particle heart ~ ~1 ~ .3 .1 .3 0.1 10 normal
