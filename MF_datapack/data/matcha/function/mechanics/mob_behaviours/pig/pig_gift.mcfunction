# init scoreboard timer for new pigs
execute \
    unless score @s matcha.pig_gifting_cooldown = @s matcha.pig_gifting_cooldown \
    store result score @s matcha.pig_gifting_cooldown \
    run random value 300..600

# decrement scoreboard timer 
scoreboard players remove @s matcha.pig_gifting_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s matcha.pig_gifting_cooldown matches ..0 run return fail
execute unless block ~ ~-1 ~ #matcha:pig_diggable run return fail

# stop, look down, drop a brown mushroom, and play a sound

# spawn this pig's death loot, changed via this tag
execute if entity @s[type=pig,nbt={variant:"minecraft:cold"}] run loot spawn ~ ~ ~ loot matcha:gameplay/pig_gift/cold
execute if entity @s[type=pig,nbt={variant:"minecraft:warm"}] run loot spawn ~ ~ ~ loot matcha:gameplay/pig_gift/warm
execute if entity @s[type=pig,nbt={variant:"minecraft:temperate"}] run loot spawn ~ ~ ~ loot matcha:gameplay/pig_gift/temperate

playsound minecraft:block.crop.break neutral @a

# if this is a grass block convert it to dirt
execute if block ~ ~-1 ~ #minecraft:grass_blocks run setblock ~ ~-1 ~ minecraft:dirt
effect give @s slowness 1 99 true
rotate @s ~ 90

# reset timer
execute \
    store result score @s matcha.pig_gifting_cooldown \
    run random value 300..600