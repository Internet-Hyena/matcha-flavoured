# init scoreboard timer for new pigs
execute \
    unless score @s matcha.pig_gifting_cooldown = @s matcha.pig_gifting_cooldown \
    store result score @s matcha.pig_gifting_cooldown \
    run random value 15..30

# decrement scoreboard timer 
scoreboard players remove @s matcha.pig_gifting_cooldown 1

# abort if timer is not negative or not standing on wet farmland
execute unless score @s matcha.pig_gifting_cooldown matches ..0 run return fail
execute unless block ~ ~ ~ minecraft:air run return fail
execute unless block ~ ~-0.5 ~ minecraft:farmland[moisture=7] run return fail

# stop, look down, drop a brown mushroom, and play a sound

# spawn this pig's death loot, changed via this tag
execute if entity @s[type=pig,nbt={variant:"minecraft:cold"}] run loot spawn ~ ~ ~ loot matcha:gameplay/pig_gift/cold
execute if entity @s[type=pig,nbt={variant:"minecraft:warm"}] run loot spawn ~ ~ ~ loot matcha:gameplay/pig_gift/warm
execute if entity @s[type=pig,nbt={variant:"minecraft:temperate"}] run loot spawn ~ ~ ~ loot matcha:gameplay/pig_gift/temperate

advancement grant @p only matcha:tutorial/pig_scavenge

playsound minecraft:block.mud.step neutral @a

# if this is a grass block convert it to dirt
effect give @s slowness 1 99 true
rotate @s ~ 90

# reset timer
execute \
    store result score @s matcha.pig_gifting_cooldown \
    run random value 15..30