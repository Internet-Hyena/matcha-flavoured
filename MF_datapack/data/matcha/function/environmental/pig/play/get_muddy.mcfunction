execute if entity @s[nbt={variant:"minecraft:temperate"}] run data merge entity @s {variant:"matcha:muddy_temperate"}
#Adding a tag so we don't have to check nbt later
tag @s add muddy
# add to timer
execute \
    store result score @s matcha.muddy_cooldown \
    run random value 900..1200