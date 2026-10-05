# The baby will stay an infant for 17-20 min
execute \
    unless score @s matcha.infant_age = @s matcha.infant_age \
    store result score @s matcha.infant_age \
    run random value 1000..1200

# decrement scoreboard timer 
scoreboard players remove @s matcha.infant_age 1

# abort if timer is not negative
execute unless score @s matcha.infant_age matches ..0 run return fail

attribute @s minecraft:scale base set 1
tag @s remove infant
scoreboard players reset @s matcha.infant_age