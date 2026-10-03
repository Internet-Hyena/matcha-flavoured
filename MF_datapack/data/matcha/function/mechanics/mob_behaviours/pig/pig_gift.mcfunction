# init scoreboard timer for new pigs
execute \
    unless score @s matcha.pig_gifting_cooldown = @s matcha.pig_gifting_cooldown \
    store result score @s matcha.pig_gifting_cooldown \
    run random value 3..6

# decrement scoreboard timer 
scoreboard players remove @s matcha.pig_gifting_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s matcha.pig_gifting_cooldown matches ..0 run return fail
execute unless block ~ ~-1 ~ #matcha:pig_diggable run return fail

# stop, look down, drop a brown mushroom, and play a sound

# spawn this pig's death loot, changed via this tag
tag @s add matcha.pig_gifting
loot spawn ~ ~ ~ kill @s
tag @s remove matcha.pig_gifting

playsound minecraft:block.crop.break neutral @a
setblock ~ ~-1 ~ minecraft:dirt
effect give @s slowness 1 99 true
rotate @s ~ 90

# reset timer
execute \
    store result score @s matcha.pig_gifting_cooldown \
    run random value 3..6