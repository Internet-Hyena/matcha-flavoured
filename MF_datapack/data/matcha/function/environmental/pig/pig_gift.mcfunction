# init scoreboard timer for new pigs
execute \
    unless score @s matcha.pig_gifting_cooldown = @s matcha.pig_gifting_cooldown \
    store result score @s matcha.pig_gifting_cooldown \
    run random value 300..600

# decrement scoreboard timer 
scoreboard players remove @s matcha.pig_gifting_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s matcha.pig_gifting_cooldown matches ..0 run return fail
execute unless block ~ ~-0.8 ~ #matcha:animal_affects/animal_diggable run return fail

# Dig the block I am on
execute if block ~ ~-1 ~ #matcha:animal_affects/converts_to_dirt run function matcha:environmental/pig/dig/animation
execute if block ~ ~-0.8 ~ #matcha:animal_affects/pig_can_play_on run function matcha:environmental/pig/play/animation

# reset timer
execute \
    store result score @s matcha.pig_gifting_cooldown \
    if entity @s[tag=!muddy] \
    run random value 300..600

execute \
    store result score @s matcha.pig_gifting_cooldown \
    if entity @s[tag=muddy] \
    run random value 80..150