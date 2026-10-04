execute as @e[tag=muddy] run execute at @s run function matcha:environmental/pig/pig_clean
execute as @e[tag=muddy] if predicate matcha:in_water run scoreboard players set @s matcha.muddy_cooldown 0