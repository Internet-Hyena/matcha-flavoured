# These functions are run once every Second
schedule function matcha:timers/1s 1s replace

# Debug
#say Clock 1s

# Functions

# ---- Pigs
#Pig Gift
execute as @e[type=pig] at @s run function matcha:environmental/pig/pig_gift
#Pig Muddy
execute as @e[tag=muddy] if predicate matcha:in_water run scoreboard players set @s matcha.muddy_cooldown -1
execute as @e[tag=muddy] run execute at @s run function matcha:environmental/pig/pig_clean


# If a mob is an infant, and is not age-locked, age them
execute as @e[tag=infant] unless entity @s[nbt={AgeLocked:1b}] run execute at @s run function matcha:environmental/pig/age_infant
