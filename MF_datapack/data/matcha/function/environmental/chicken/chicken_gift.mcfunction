# init scoreboard timer for new chickens
execute \
    unless score @s matcha.chicken_gifting_cooldown = @s matcha.chicken_gifting_cooldown \
    store result score @s matcha.chicken_gifting_cooldown \
    run random value 300..600

# decrement scoreboard timer 
scoreboard players remove @s matcha.chicken_gifting_cooldown 1

# abort if timer is not negative or not standing on grass
execute unless score @s matcha.chicken_gifting_cooldown matches ..0 run return fail
execute unless block ~ ~-1 ~ #matcha:chicken_peckable run return fail

# stop, look down, give gift, and play a sound

# spawn this pig's Gift Loot, tags will be determined there
tag @s add matcha.chicken_gifting
loot spawn ~ ~ ~ kill @s
tag @s remove matcha.chicken_gifting

playsound minecraft:block.crop.break neutral @a
setblock ~ ~-1 ~ minecraft:dirt
particle block{block_state:"minecraft:dirt"} ~ ~ ~ .25 .1 .25 0.1 10 normal
particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
#THis should be the chicken sound, but we need to check the variant first
# playsound minecraft:entity.pig.ambient neutral @a
effect give @s slowness 1 99 true
rotate @s ~ 180

# reset timer
execute \
    store result score @s matcha.chicken_gifting_cooldown \
    run random value 300..600