# decrement scoreboard timer 
scoreboard players remove @s matcha.muddy_cooldown 1

# abort if timer is not negative or if still standing in mud
execute unless score @s matcha.muddy_cooldown matches ..0 run return fail
execute if block ~ ~-0.8 ~ minecraft:mud run return fail

#Check the muddy variant before setting back to ORG variant
execute if entity @s[nbt={variant:"matcha:muddy_temperate"}] run data merge entity @s {variant:"minecraft:temperate"}
#particles to show mud coming off
particle block{block_state:"minecraft:mud"} ~ ~ ~ .25 .5 .25 0.5 50 normal
playsound minecraft:entity.generic.splash neutral @a

#Remove the muddy tag and remove them from the scoreboard, we don't need it anymore
tag @s remove muddy
scoreboard players reset @s matcha.muddy_cooldown
