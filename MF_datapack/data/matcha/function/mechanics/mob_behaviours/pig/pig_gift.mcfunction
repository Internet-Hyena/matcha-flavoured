# init scoreboard timer for new pigs
execute \
    unless score @s pig_gift_cooldown = @s pig_gift_cooldown \
    store result score @s pig_gift_cooldown \
    run random value 300..600

# decrement scoreboard timer 
scoreboard players remove @s pig_gift_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s pig_gift_cooldown matches ..0 run return fail
execute unless block ~ ~-1 ~ #matcha:pig_diggable run return fail

# stop, look down, drop a brown mushroom, and play a sound
loot spawn ~ ~ ~ loot minecraft:blocks/brown_mushroom
playsound minecraft:block.crop.break neutral @a
setblock ~ ~-1 ~ minecraft:dirt
effect give @s slowness 1 99 true
rotate @s ~ 90

# reset timer
execute \
    store result score @s pig_gift_cooldown \
    run random value 300..600