execute if entity @s[nbt={variant:"minecraft:temperate"}] run data merge entity @s {variant:"matcha:muddy_temperate"}
execute if entity @s[nbt={variant:"minecraft:warm"}] run data merge entity @s {variant:"matcha:muddy_warm"}
execute if entity @s[nbt={variant:"minecraft:cold"}] run data merge entity @s {variant:"matcha:muddy_cold"}
#Adding a tag so we don't have to check nbt later
tag @s add muddy
# add to timer
execute \
    store result score @s matcha.muddy_cooldown \
    run random value 900..1200