# init scoreboard timer for new pigs
execute \
    unless score @s matcha.pig_gifting_cooldown = @s matcha.pig_gifting_cooldown \
    store result score @s matcha.pig_gifting_cooldown \
    run random value 300..600

# decrement scoreboard timer 
scoreboard players remove @s matcha.pig_gifting_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s matcha.pig_gifting_cooldown matches ..0 run return fail
execute unless block ~ ~-1 ~ #matcha:animal_affects/animal_diggable run return fail

# stop, look down, drop a brown mushroom, and play a sound

# spawn this pig's Gift Loot, tags will be determined there (MUST use kill, because that allows us to check the current entities tags using /loot)
# We can also check the block the mob is on with this LT, so for ex. Each block type can have a different LT
tag @s add matcha.pig_gifting
loot spawn ~ ~ ~ kill @s
tag @s remove matcha.pig_gifting


# Dig the block I am on
execute if block ~ ~-1 ~ #matcha:animal_affects/converts_to_dirt run function matcha:environmental/pig/dig_dirt_based_block
execute if block ~ ~-1 ~ #matcha:animal_affects/converts_to_mud run function matcha:environmental/pig/dig_mud_based_block

# reset timer
execute \
    store result score @s matcha.pig_gifting_cooldown \
    run random value 300..600